package com.admin.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.domain.MemberLog;
import com.with.dao.HibernateUtil;

public class MemberLogDao extends MasterDao<MemberLog, Long> {

	public List<MemberLog> show(Date s, Date e){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		//String hql="from MemberLog m where m.memberLogDate between :date1 and :date2";
		String hql="from MemberLog m where m.memberLogDate between :startDate and :endDate order by m.memberLogDate ";
		List<MemberLog> list = session.createQuery(hql).setDate("startDate", s).setDate("endDate", e).list();
		
		tx.commit();
		session.close();

		return list;
	}
}
