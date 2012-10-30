package com.with.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.with.dao.LikesDao;
import com.with.domain.Likes;
import com.with.domain.LikesCount;
import com.with.domain.Member;

public class LikesService extends MasterService<Likes, Integer, LikesDao>{
	
	//재중 : 필요한 메서드 전부 새로 추가
	public String check(Likes likes, LikesDao dao, HttpSession session, Member member) {
		member = (Member) session.getAttribute("member");
		likes.setWriter(Integer.parseInt(String.valueOf(member.getId())));
		String result =  dao.check(likes);
		return result;
	}
	
	public String create(Likes likes, LikesDao dao, HttpSession session, Member member) {
		member = (Member) session.getAttribute("member");
		likes.setWriter(Integer.parseInt(String.valueOf(member.getId())));
		Date today = new Date();
	    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
	    String todayStr = simDate.format(today);
	    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
	    likes.setLikes_date(date);
		String result =  dao.create(likes);
		return result;
	}
	
	public int show(int id, LikesDao dao){
		int result=0;
		List<LikesCount> list = dao.show(id);
		for (LikesCount likesCount : list) {
			result = likesCount.getCounts();
		}
		return result;
	}
}
