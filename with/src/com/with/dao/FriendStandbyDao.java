package com.with.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.domain.FriendStandby;
import com.with.domain.Member;

public class FriendStandbyDao extends MasterDao<FriendStandby, Long> {

	public List<Member> requestList(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		buf.append("from Member m ");
		buf.append("where m.id in");
		buf.append("(select f.request from FriendStandby f where f.accept=:myid) ");
		String hql = buf.toString();
		
		List<Member> domainList = session.createQuery(hql).setLong("myid", id).list();
		tx.commit();
		session.close();
		return domainList;
	}
	
	public FriendStandby find(Long me, Long friend) {
		FriendStandby checkedFriend = new FriendStandby();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		StringBuffer buf = new StringBuffer();
		buf.append("from FriendStandby f ");
		buf.append("where f.request =:me ");
		buf.append("and f.accept =:friendNum ");
		String hql = buf.toString();
		
		checkedFriend = (FriendStandby) session.createQuery(hql).setLong("me", me).setLong("friendNum", friend).uniqueResult();
		tx.commit();
		session.close();
		return checkedFriend;
	}

	public String delete(FriendStandby domain) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		buf.append("from FriendStandby f ");
		buf.append("where f.request =:friendNum ");
		buf.append("and f.accept =:me ");
		String hql = buf.toString();
		
		domain = (FriendStandby) session.createQuery(hql).setLong("friendNum", domain.getRequest()).setLong("me", domain.getAccept()).uniqueResult();
		session.delete(domain);
		
		tx.commit();
		session.close();
		
		return "true";
	}

}
