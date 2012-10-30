package com.with.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.with.dao.MasterDao;
import com.with.dao.MemberDao;
import com.with.domain.Member;

public class MemberService extends MasterService<Member, Long, MemberDao>{

	public List<Member> search(String name, MemberDao dao) {
		List<Member> searchList = dao.search(name);
		return searchList;
	}
	
	public String create(Member domain, MemberDao dao) {
		Date today = new Date();
	    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
	    String todayStr = simDate.format(today);
	    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
		domain.setSignup_date(date);
		String result = dao.create(domain);
		return result;
	}

	public String update(Member domain, MemberDao dao) {
//		System.out.println("2. MemberService당!!");
//		// 실제 파일 경로에 파일 저장

		// DB에 member를 update
		String result = dao.update(domain);
		return result;
	}
	
	public String updateImage(Member domain, MemberDao dao, MultipartFile profile){
		String path = "D:\\file\\" + profile.getOriginalFilename();
		File saveFile = new File(path);
		
		try {
			profile.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// dao에 경로를 저장		
		String temp= profile.getOriginalFilename();
		String fake_Path = temp.substring(0,temp.length()-4);
		domain.setPicture(fake_Path);
				
		String result = dao.updateImage(domain);
		return result;
	}
}
