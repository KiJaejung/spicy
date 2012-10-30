package com.admin.dao;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.domain.DropListLog;
import com.with.dao.HibernateUtil;

public class DropListLogDao extends MasterDao<DropListLog, Long> {

	public String delete(DropListLog domain){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(domain);
		
		tx.commit();
		session.close();
		
		return "true";
	}
}
