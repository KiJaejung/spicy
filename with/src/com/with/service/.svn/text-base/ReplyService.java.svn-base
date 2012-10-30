package com.with.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.with.dao.MasterDao;
import com.with.dao.ReplyDao;
import com.with.domain.Reply;
import com.with.domain.ReplyCount;


public class ReplyService extends MasterService<Reply, Long, ReplyDao>{
	
	public int show(int post_no, ReplyDao dao){
		ReplyCount domain = dao.show(post_no);
		return domain.getCounts();
	}
	
	public String create(Reply domain, ReplyDao dao) {
		Date today = new Date();
	    SimpleDateFormat simDate = new SimpleDateFormat("yyyy-MM-dd");
	    String todayStr = simDate.format(today);
	    java.sql.Date date = java.sql.Date.valueOf(new String(todayStr));
	    domain.setReply_date(date);
		String result = dao.create(domain);
		return result;
	}
}
