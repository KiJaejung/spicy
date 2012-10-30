package com.api.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.api.bean.WithLikes;
import com.api.dao.APILikesDao;
import com.with.domain.Likes;
import com.with.domain.LikesCount;
import com.with.domain.Posts;

public class APILikesService {
		
	public WithLikes get(WithLikes bean, APILikesDao dao) {
		// 글번호가 없을 때에는 카운트에 0을 넣어 리턴, 있으면 다오에 가서 카운트 받아옴
		if(bean.getPost_no()==0){
			bean.setCount(0);
			return bean;
		}else{
			LikesCount likescount = dao.get(bean.getPost_no());
			bean.setCount(likescount.getCounts());
			return bean;
		}
	}
	
	public WithLikes create(WithLikes bean, APILikesDao dao) {
		Likes check = dao.check(bean.getUser(),bean.getDeveloper());
		
		if(check==null){
			return null;
		}else{
			if(bean.getPost_no()==0){
				Posts posts = new Posts();
				posts.setWriter(check.getOwner());
				posts.setOwner(check.getOwner());
				posts.setType(7);
				Date today = new Date();
			    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
			    String todayStr = simDate.format(today);
			    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
			    posts.setPost_date(date);
			    Long id = dao.create(posts);
			    check.setPost_no(Integer.parseInt(String.valueOf(id)));
			    check.setLikes_date(date);
			    System.out.println(check.getPost_no());
			    System.out.println(check.getOwner());
			    System.out.println(check.getWriter());
			    boolean result = dao.insert(check);
			    bean.setResult(result);
			    LikesCount likescount = dao.get(check.getPost_no());
			    bean.setCount(likescount.getCounts());
			    bean.setPost_no(check.getPost_no());
				return bean;
			}else{
				Date today = new Date();
			    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
			    String todayStr = simDate.format(today);
			    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
			    check.setPost_no(bean.getPost_no());
			    check.setLikes_date(date);
			    System.out.println(check.getPost_no());
			    System.out.println(check.getOwner());
			    System.out.println(check.getWriter());
			    boolean result = dao.insert(check);
			    bean.setResult(result);
			    LikesCount likescount = dao.get(check.getPost_no());
			    bean.setCount(likescount.getCounts());
				return bean;
			}
		}
		
		
	}
	
	public WithLikes delete(WithLikes bean, APILikesDao dao) {
		Likes likes = new Likes();
		int user = dao.check(bean.getUser());
		likes.setPost_no(bean.getPost_no());
		likes.setWriter(user);
		String result = dao.delete(likes);
		if(result.equals("true")){
	    	bean.setResult(true);
	    }else{
	    	bean.setResult(false);
	    }
		LikesCount likescount = dao.get(bean.getPost_no());
	    bean.setCount(likescount.getCounts());
		return bean;
	}
}
