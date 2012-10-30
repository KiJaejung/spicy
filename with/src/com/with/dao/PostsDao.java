package com.with.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.domain.Member;
import com.with.domain.Posts;



public class PostsDao extends MasterDao<Posts, Long> {
	
	public List<Posts> index(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		buf.append("Select distinct p from Posts p ");
		buf.append("left join p.likesCount l ");
		buf.append("left join p.replyCount r ");
		buf.append("where p.owner=:ownerno ");
		buf.append("order by p.id desc ");
		String hql = buf.toString();
		
		List<Posts> list = session.createQuery(hql).setLong("ownerno", id).list();
		
		tx.commit();
		session.close();
		
		return list;
	}
	
	public List<Posts> timeline(Long id,int page) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		buf.append("Select distinct p from Posts p ");
		buf.append("left join p.likesCount l ");
		buf.append("left join p.replyCount r ");
		buf.append("where p.owner in");
		buf.append("(select f.accept from Friend f where f.request=:ownerno) ");
		buf.append("or p.owner=:ownerno ");
		buf.append("order by p.id desc ");
		String hql = buf.toString();
		List<Posts> list = session.createQuery(hql).setLong("ownerno", id)
				.setFirstResult(page*5).setMaxResults(5).list();
		
//		for (Posts posts : list) {
//			System.out.println(posts.getLikesCount());
//			System.out.println(posts.getReplyCount());
//		}
		
		tx.commit();
		session.close();
		return list;
	}

	// 글 수정 화면을 가져오기 위한 메소드
	public List<Posts> editView(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		StringBuffer buf = new StringBuffer();
		buf.append("from Posts p ");
		buf.append("where p.id =:id");
		String hql = buf.toString();
		List<Posts> searchList = session.createQuery(hql).setLong("id", id).list();
		
		tx.commit();
		session.close();
		
		return searchList;
	}
}
