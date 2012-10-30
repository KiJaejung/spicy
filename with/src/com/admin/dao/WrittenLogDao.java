package com.admin.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.domain.WrittenLog;
import com.with.dao.HibernateUtil;

public class WrittenLogDao extends MasterDao<WrittenLog, Long>{

	public List<WrittenLog> showAll(Date s, Date e)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String hql = "select w from WrittenLog w " +
				"where w.writtenlogdate between :startDate and :endDate order by w.writtenlogdate";		
		List<WrittenLog> list =(List<WrittenLog>)session.createQuery(hql).setDate("startDate", s).setDate("endDate", e).list(); 
		tx.commit();
		session.close();
		return list;
	}
}
