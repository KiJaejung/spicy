package com.admin.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.domain.VisitListLog;
import com.with.dao.HibernateUtil;

public class VisitListLogDao {

	public String create(VisitListLog domain){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(domain);
		 
		session.flush();
		Long id	= domain.getId();

		tx.commit();
		session.close();
		return String.valueOf(id);
	}
}
