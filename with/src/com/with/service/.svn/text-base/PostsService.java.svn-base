package com.with.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.with.dao.MasterDao;
import com.with.dao.PostsDao;
import com.with.domain.Posts;

public class PostsService extends MasterService<Posts, Long, PostsDao> {

	public List<Posts> timeline(long id, PostsDao dao, int page) {
		List<Posts> domainList = dao.timeline(id, page);
		return domainList;
	}

	public String create(Posts domain, PostsDao dao) {
		Date today = new Date();
		SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
		String todayStr = simDate.format(today);
		java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
		domain.setPost_date(date);
		String result = ((MasterDao) dao).create(domain);
		return result;
	}

	public String create(Posts domain, PostsDao dao, MultipartFile file) {
		String result = "";
		
		// 파일이 있을때와 없을때를 구분
		if (!file.isEmpty()) {
			// 글을 저장한 날짜를 sql.Date 형식으로 변환해준다
			Date today = new Date();
			SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
			String todayStr = simDate.format(today);
			java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
			domain.setPost_date(date);

			String name = file.getOriginalFilename();

			// image 파일의 확장자를 제거, path는 파일의 원래 이름밖에 없다(확장자도 빼고)
			String path = name.substring(0, name.length() - 4);
			String savepath = "";

			// savapath에는 실제로 파일이 저장될 경로에 확장자를 합쳐서 저장
			if (domain.getType() == 4) { // 사진글이면
				savepath = "D:\\file\\".concat(path).concat(".jpg");
			} else if (domain.getType() == 5) { // 동영상이면
				System.out.println("동영상 저장중");
				savepath = "D:\\file\\".concat(path).concat(".mp4");
			} else { // 음악이면
				savepath = "D:\\file\\".concat(path).concat(".mp3");
			}

			// 파일을 저장한다
			File saveFile = new File(savepath);
			System.out.println(saveFile);
			try {
				file.transferTo(saveFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			// DB에 파일의 이름을 저장
			domain.setColumn1(path);
			result = dao.create(domain);
		} else {
			for(int i=0;;i++){
				// 인터넷 주소에서 = 이 나오면
				if(domain.getColumn3().substring(i,i+1).equals("=")){
					// = 뒤에서부터 & 가 나올때 까지 잘라서 붙인다. = 뒤부터 붙이기 위해서 i의 값을 1증가 시킴. 
					i++;
					// 필요한 부분을 저장하기 위한 지역변수
					String videoAddress = "";
					// &가 나올때까지 잘라서 붙이는 부분
					while(!domain.getColumn3().substring(i, i+1).equals("&")){
						videoAddress += domain.getColumn3().substring(i, i+1);
						i++;
					}
					// domain에 Set을 해야함~!!(저장을 위해)
					domain.setColumn3(videoAddress);
					
					break;
				}

			}
			result = dao.create(domain);
		}
		return result;
	}
	
	public String update(Posts domain, Long id, PostsDao dao) {
		Date today = new Date();
		SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
		String todayStr = simDate.format(today);
		java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
		domain.setPost_date(date);
		String result = dao.update(domain, id);
		return null;
	}

	public List<Posts> editView(Long id, PostsDao dao) {
		List<Posts> list = (List<Posts>) dao.editView(id);

		return list;
	}
}