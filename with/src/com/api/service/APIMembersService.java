package com.api.service;

import com.api.bean.WithMembers;
import com.api.dao.APIMembersDao;
import com.with.domain.Member;

public class APIMembersService {
	
	public WithMembers get(WithMembers bean, APIMembersDao dao) {
		Member member = new Member();
		member.setName(bean.getName());
		member.setPassword(bean.getPassword());
		String result = dao.get(member);
		if(result.equals("true")) {
			bean.setResult(true);
		} else {
			bean.setResult(false);
		}
		return bean;
	}
	
	public WithMembers update(WithMembers bean, APIMembersDao dao) {
		Member member = new Member();
		member.setName(bean.getName());
		member.setPassword(bean.getPassword());
		String result = dao.update(member);
		if(result.equals("true")) {
			bean.setResult(true);
		} else {
			bean.setResult(false);
		}
		return bean;
	}
	
	public WithMembers delete(WithMembers bean, APIMembersDao dao) {
		Member member = new Member();
		member.setName(bean.getName());
		String result = dao.delete(member);
		if(result.equals("true")) {
			bean.setResult(true);
		} else {
			bean.setResult(false);
		}
		return bean;
	}
}
