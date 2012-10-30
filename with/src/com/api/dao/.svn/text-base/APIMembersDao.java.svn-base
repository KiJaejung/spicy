package com.api.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.api.bean.WithMembers;
import com.with.dao.HibernateUtil;
import com.with.domain.Member;

public class APIMembersDao {

	//result의 true냐 false냐만 던짐
	public String get(Member domain) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		System.out.println(domain.getName());
		//name 파라메터를 가져왔다고 가정하자
		domain = (Member)session.createQuery("from Member m where m.name = :name and m.password = :password").setParameter("name", domain.getName()).setParameter("password", domain.getPassword()).uniqueResult();
		tx.commit();
		session.close();
		if (domain != null) {
			return "true";
		} else {
			return "false";
		}
	}

	public String update(Member member) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		System.out.println(member.getName());
		System.out.println(member.getPassword());
		//name 파라메터를 가져왔다고 가정하자
//		String name = "";
//		member = (Member) session.get(Member.class,
//				new String(name));
		
		//위의 방법이 안먹힌다면 위의 get메소드의 쿼리문을 가져다 써서 객체를 받아오자.
		Member domain = (Member)session.createQuery("from Member m where m.name = :name").setParameter("name", member.getName()).uniqueResult();
		
		//password도 받아왔다고 가정해달라
		String password = member.getPassword();
		domain.setPassword(password);
		
		session.update(domain);

		tx.commit();
		session.close();
		
		//여기까지 왔음에도 업데이트가 안될리는 없다고 믿고 일단 true를 넘겼다.
		return "true";
	}

	public String delete(Member member) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		//역시 name이 있다고 가정하자.
		
		
		// 왠지 세션에서 id가 아닌 컬럼으로 객체를 뽑아오진 못할 것 같으므로 그냥 이 방법을 쓰자
		Member domain = (Member)session.createQuery("from Member m where m.name = :name").setParameter("name", member.getName()).uniqueResult();
		
		session.delete(domain);
		tx.commit();
		session.close();
		return "true";
	}

}
