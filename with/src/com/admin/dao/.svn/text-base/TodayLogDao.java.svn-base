package com.admin.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.admin.domain.DropListLog;
import com.admin.domain.MemberAdmin;
import com.admin.domain.PostsLog;
import com.admin.domain.TodayLog;
import com.admin.domain.VisitListLog;
import com.with.dao.HibernateUtil;

public class TodayLogDao {

	public TodayLog show()
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		TodayLog bean = new TodayLog();
									
		String hql = "select v from VisitListLog v where v.visitdate between sysdate-1 and sysdate ";
		List<VisitListLog> vList =session.createQuery(hql).list();
		bean.setVisitcount(vList.size());
		
		hql = "select m from MemberAdmin m where m.signup_date  between sysdate-1 and sysdate  ";
		List<MemberAdmin>mList = session.createQuery(hql).list();
		bean.setSignupcount(mList.size());
		
		hql = "select d from DropListLog d where d.dropdate  between sysdate-1 and sysdate  ";
		List<DropListLog>dList = session.createQuery(hql).list();
		bean.setDropcount(dList.size());
		
		hql = "select p from PostsLog p where p.post_date  between sysdate-1 and sysdate  ";
		List<PostsLog> pList = session.createQuery(hql).list();
		bean.setPostscount(pList.size());
		
		session.close();
		
		return bean;
		
	}
	public TodayLog showAll()
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("showAllDAo");
		TodayLog bean_all = new TodayLog();
		
		String hql = "select v from VisitListLog v ";
		List<VisitListLog>vList = session.createQuery(hql).list();
		bean_all.setVisitcount(vList.size());		
		
		hql = "select m from MemberAdmin m ";
		List<MemberAdmin>mList = session.createQuery(hql).list();
		bean_all.setSignupcount(mList.size());
		
		hql = "select d from DropListLog d ";
		List<DropListLog>dList = session.createQuery(hql).list();
		bean_all.setDropcount(dList.size());
		
		hql = "select p from PostsLog p ";
		List<PostsLog> pList = session.createQuery(hql).list();
		bean_all.setPostscount(pList.size());
		
		System.out.println(bean_all.getDropcount());
		System.out.println(bean_all.getPostscount());
		System.out.println(bean_all.getSignupcount());
		System.out.println(bean_all.getVisitcount());
		
		session.close();
		
		return bean_all;
		
		
		
	}
	
}




