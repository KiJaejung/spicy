package com.admin.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.domain.PostsAdmin;
import com.with.dao.HibernateUtil;

public class PostsAdminDao extends MasterDao<PostsAdmin, Long>{

	public List<PostsAdmin> index(Long id) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();

		String hql = " from PostsAdmin p order by p.id";
		List<PostsAdmin> list = session.createQuery(hql).list();
		
		tx.commit();
		session.close();
		
		return list;
	}

	public List<PostsAdmin> deleteContents(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		PostsAdmin num = new PostsAdmin();
		num = (PostsAdmin) session.load(PostsAdmin.class, id);
		session.delete(num);
		
		tx.commit();
		session.close();
		
		return null;
	}
	

}
