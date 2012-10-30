package com.with.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.domain.Member;

public class SessionDao {
	private Member checkedMember;
	
	public Member login(Member member) {
		try {
			checkedMember = new Member();
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			Query query = session.createSQLQuery("select * from member m where m.name = :name").addEntity(Member.class).setParameter("name", member.getName());
			checkedMember = (Member) query.uniqueResult();
			tx.commit();
			session.close();
			if (member.getPassword().equals(checkedMember.getPassword())) {
				return checkedMember;
			} else {
				checkedMember.setPassword("error");
				return checkedMember;
			}
		} catch (Exception ex) {
			checkedMember = new Member();
			checkedMember.setName("error");
			return checkedMember;
		}
	}
	
	
}
