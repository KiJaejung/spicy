package com.admin.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.domain.MemberAdmin;

import com.with.dao.HibernateUtil;

public class MemberAdminDao extends MasterDao<MemberAdmin, Long>{
	public List<MemberAdmin> show(java.sql.Date todate) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String hql = "select m from MemberAdmin m " + "where m.signup_date between :date and sysdate order by m.id";
		List<MemberAdmin> list = session.createQuery(hql).setDate("date", todate).list();
		tx.commit();
		session.close();
		return list;		
	}

	public List<MemberAdmin> send() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String hql = "from MemberAdmin";
		List<MemberAdmin> list = session.createQuery(hql).list();
		tx.commit();
		session.close();
		return list;
	}

	public List<MemberAdmin> showPeriod(java.sql.Date periodStart, java.sql.Date periodEnd) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String hql = "select m from MemberAdmin m " + "where m.signup_date between :periodStart and :periodEnd order by m.id";
		List<MemberAdmin> list = session.createQuery(hql).setDate("periodStart", periodStart).setDate("periodEnd", periodEnd).list();
		tx.commit();
		session.close();

		return list;
		
	}

	public List<MemberAdmin> searchAddress(String email_add) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		// 받은 String 내용과 일치하는 email 주소들을 가져온다~!!
		StringBuffer buf = new StringBuffer();
		buf.append("from MemberAdmin m ");
		buf.append("where m.email like '%"+email_add+"%'");
		String hql = buf.toString();
		
		List<MemberAdmin> list = session.createQuery(hql).list();
		
		return list;
	}

	public List<MemberAdmin> showWhole(Long period) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		System.out.println(period);
		String hql = "from MemberAdmin m order by m.id" ; 
		List<MemberAdmin> list = session.createQuery(hql).list();
		
		tx.commit();
		session.close();
		return list;
	}
}
