package com.with.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.domain.Likes;
import com.with.domain.LikesCount;

public class LikesDao extends MasterDao<Likes, Integer>{
	
	//재중 : 필요한 메서드 전부 새로 추가(create는 마스터 이용)
	public String check(Likes domain){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		buf.append("from Likes l ");
		buf.append("where l.post_no=:post_no ");
		buf.append("and l.writer=:writer ");
		String hql = buf.toString();
		
		Likes checkedLikes = (Likes)session.createQuery(hql)
						.setInteger("post_no", domain.getPost_no()).setInteger("writer", domain.getWriter()).uniqueResult();
		tx.commit();
		session.close();
		if (checkedLikes != null) {
			return String.valueOf(checkedLikes.getId());
		} else {
			return "true";
		}
	}
	
	public List<LikesCount> show(int id){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		StringBuffer buf = new StringBuffer();
		buf.append("from LikesCount l ");
		buf.append("where l.post_no=:post_no ");
		String hql = buf.toString();
		List<LikesCount> result = session.createQuery(hql)
				.setInteger("post_no", id).list();
		tx.commit();
		session.close();
		return result;
	}
}
