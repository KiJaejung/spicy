package com.with.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.domain.Member;

public class MemberDao extends MasterDao<Member, Long> {

	public List<Member> search(String name) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		StringBuffer buf = new StringBuffer();
		buf.append("from Member m ");
		buf.append("where m.name like '%"+name+"%'");
		String hql = buf.toString();
		List<Member> searchList = session.createQuery(hql).list();
		tx.commit();
		session.close();

		return searchList;
	}

	public String update(Member domain) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		// session.save(domain);

		Member member = (Member) session.get(Member.class,
				new Long(domain.getId()));
		member.setPicture(domain.getPicture());
		member.setHomepage(domain.getHomepage());
		member.setRegion(domain.getRegion());
		member.setSchool(domain.getSchool());
		member.setBirth(domain.getBirth());
		member.setIntroduce(domain.getIntroduce());

		session.update(member);

		tx.commit();
		session.close();

		return null;
	}
	
	public String updateImage(Member domain){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		Member member = (Member) session.get(Member.class, new Long(domain.getId()));
		
		member.setPicture(domain.getPicture());
		
		session.update(member);
		
		tx.commit();
		session.close();
		
		return null;
	}

}
