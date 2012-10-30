package com.with.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.with.dao.FriendDao;
import com.with.domain.Member;

public class SessionService {
	
	public List<Member> loginList(Long id, FriendDao dao, HashMap<String, String> loginIndex) {
		ArrayList<Member> returnList = new ArrayList<Member>();
		
		List<Member> domainList = dao.index(id, dao);
		for (Member member : domainList) {
			if(loginIndex.get(member.getName()) != null) {
				returnList.add(member);
			}
//			for (String loginName : loginIndex) {
//				if(member.getName().equals(loginName)) {
//					returnList.add(member);
//				}
//			}
		}
		return returnList;
	}
}
