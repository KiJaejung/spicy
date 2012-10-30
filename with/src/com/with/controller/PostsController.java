package com.with.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.EOFException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.with.dao.PostsDao;
import com.with.domain.Member;
import com.with.domain.Posts;
import com.with.service.PostsService;

@Controller
@RequestMapping (value="/posts")
public class PostsController extends MasterController<Posts, Long, PostsService, PostsDao> {
	
	// 타임라인을 받는 메서드
	@RequestMapping (value="/timeline/{page}", method=RequestMethod.GET)
	public String timeline(Model model, @PathVariable("page") int page, PostsService service, PostsDao dao, HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		Long id = member.getId();
		List<Posts> domainList = service.timeline(id, dao, page);
		model.addAttribute("postsList", domainList);
		return "posts/loadMore";
	}
	
	// 글 타입에 관한 작성 페이지를 준다.
	@RequestMapping (value="/new/{id}", method=RequestMethod.GET)
	public String newly(@PathVariable("id") String type) {
		return "posts/new/".concat(type);
	}
	
	// 글작성 (파일 업로드 포함)
	@RequestMapping (value="/create", method=RequestMethod.POST)
	public String create(@RequestParam("image") MultipartFile file, Posts domain, PostsService service, PostsDao dao) {
		String result = service.create(domain, dao, file);
		return "posts/create";
	}
	
	// 글 수정 화면 가져오는 메소드
	@RequestMapping (value="/editView/{id}", method=RequestMethod.GET)
	public String editView(Model model, @PathVariable("id") Long id, Posts posts, PostsService service, PostsDao dao){
		int type = 0;

		List<Posts> list = (List<Posts>) service.editView(id, dao); 
		model.addAttribute("postsList", list);
		
		for (Posts p : list) {
			type = p.getType();
		}
		
		if(type==1)	return "posts/new/text";
		else if(type==2) return "posts/new/quote";
		else if(type==3) return "posts/new/link";
		else if(type==4) return "posts/new/photo";
		else if(type==5) return "posts/new/movie";
		else return "posts/new/audio";
	}
	
	// 글 수정 하는 메소드
	
	// 파일 Read 
	@RequestMapping (value="/fileReader/{path}/{type}", method=RequestMethod.GET)
	public void fileReader(@PathVariable("path") String path, @PathVariable("type") int type, HttpServletResponse response){
		// 읽을 파일의 실제 경로를 저장하는 변수
		
		String realpath = "";
		
		if(type==4){ // type이 이미지
			realpath = "D:\\file\\".concat(path).concat(".jpg");
			//response.setContentType("image/jpg");
			
			try {
				FileInputStream fis = new FileInputStream(new File(realpath));
				BufferedInputStream bis = new BufferedInputStream(fis);
				BufferedOutputStream output = new BufferedOutputStream(response.getOutputStream());
				for (int data; (data = bis.read()) > -1;) {   
					output.write(data);
				}
				bis.close();
				fis.close();
			}catch (IOException e) {
				//e.printStackTrace();
			}
		} else if(type==5){ // type이 동영상
			realpath = "D:\\file\\".concat(path).concat(".mp4");
			
			 byte buf[] = new byte[1024 * 4];
			    try {
			        File file = new File(realpath);
			        OutputStream out = response.getOutputStream();
			        //IOUtils.copy(new FileInputStream(file), out);
			        //IOUtils.write(new FileInputStream(file), out);
			        //IOUtils.readLines(new FileInputStream(file), out);
			        IOUtils.toByteArray(new FileInputStream(file));
			        System.out.println(file.length());
			        response.setContentLength((int) file.length());
			        out.flush();
			    } catch (EOFException e2){
					//e2.printStackTrace();
				}catch (FileNotFoundException e) {
			        //logger.error("Stream download failed, file not found: " + realpath, e);
			        //response.sendError(404);
			    } catch (Exception e) {
			        //logger.error("DownloadException:", e);
			    }
			
			
		} else { // type이 음악
			realpath = "D:\\file\\".concat(path).concat(".mp3");
			
			try {
				FileInputStream fis = new FileInputStream(new File(realpath));
				BufferedInputStream bis = new BufferedInputStream(fis);
				BufferedOutputStream output = new BufferedOutputStream(response.getOutputStream());
				for (int data; (data = bis.read()) > -1;) {   
					output.write(data);
				}
				bis.close();
				fis.close();
			}catch (IOException e) {
				//e.printStackTrace();
			}
		}
		
		
	}
}