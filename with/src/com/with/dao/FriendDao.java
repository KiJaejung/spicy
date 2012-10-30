package com.with.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.domain.Friend;
import com.with.domain.Member;
import com.with.domain.Posts;

public class FriendDao extends MasterDao<Friend, Long> {

	// Friend 라인이지만 리턴타입은 멤버이기 때문에 Override
	public List<Member> index(Long myid, FriendDao dao) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		buf.append("from Member m ");
		buf.append("where m.id in");
		buf.append("(select f.accept from Friend f where f.request=:myid) ");
		String hql = buf.toString();
		List<Member> domainList = session.createQuery(hql).setLong("myid", myid).list();
		tx.commit();
		session.close();
		return domainList;
	}
	
	public Friend find(Long me, Long friendNum) {
		Friend checkedFriend = new Friend();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		StringBuffer buf = new StringBuffer();
		buf.append("from Friend f ");
		buf.append("where f.request =:me ");
		buf.append("and f.accept =:friendNum ");
		String hql = buf.toString();
		
		checkedFriend = (Friend) session.createQuery(hql).setLong("me", me).setLong("friendNum", friendNum).uniqueResult();
		tx.commit();
		session.close();
		return checkedFriend;
	}
	
	public String delete(Long me, Long friendNum) {
		Friend deleteFriend = new Friend();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		StringBuffer buf = new StringBuffer();
		buf.append("from Friend f ");
		buf.append("where f.request =:me ");
		buf.append("and f.accept =:friendNum ");
		String hql = buf.toString();
		
		deleteFriend = (Friend) session.createQuery(hql).setLong("me", me).setLong("friendNum", friendNum).uniqueResult();
		
		session.delete(deleteFriend);
		
		tx.commit();
		session.close();
		if (deleteFriend == null) {
			return "false";
		} else {
			return "true";
		}
	}
	
}