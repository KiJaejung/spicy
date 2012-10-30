package com.with.service;

import java.util.List;

import com.with.dao.FriendDao;
import com.with.domain.Friend;
import com.with.domain.Member;

public class FriendService extends MasterService<Friend, Long, FriendDao>{

	// Friend 라인이지만 리턴타입은 멤버이기 때문에 Override
	public List<Member> indexx(Long id, FriendDao dao) {
		List<Member> domainList = dao.index(id, dao);
		return domainList;
	}
	
	public String delete(Long me, Long friend, FriendDao dao) {
		String result = dao.delete(me, friend);
		if(result.equals("true")) {
			result = dao.delete(friend, me);
			return result;
		} else {
			return "false";
		}
		
	}
	
}
