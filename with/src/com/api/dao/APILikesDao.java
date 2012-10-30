package com.api.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.with.dao.HibernateUtil;
import com.with.domain.Likes;
import com.with.domain.LikesCount;
import com.with.domain.Member;
import com.with.domain.Posts;

public class APILikesDao {

	public LikesCount get(int post_no) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();

		LikesCount domain = (LikesCount) session.createQuery("from LikesCount l where l.post_no = :post_no").setParameter("post_no", post_no).uniqueResult();
		tx.commit();
		
		session.close();
		return domain;
	}
	
	// 외부에서 좋아요 버튼을 누른자가 회원인가 아닌가 체크하는 메서드
	// developer랑 user가 필요한데, WithLikes 객체를 그대로 받아서 그 안의 필드를 꺼내 쓰는게 좋을듯.
	// 좋아요를 클릭한 자가 회원이라면 Likes 형태의 빈에 developer와 user의 int값을 담아 리턴한다.
	// 회원이 아니면 null을 리턴한다.
	// 회원인지 아닌지는 user만으로 충분하나 이후의 편의를 위해 여기서 developer의 값도 구해놓는다.
	public Likes check(String user, String developer){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		// user의 id값을 구하자ㅠㅠ
		Member domain = (Member)session.createQuery("from Member m where m.name = :name").setParameter("name", user).uniqueResult();
		// developer는 쿼리문 한번 돌려서 id값을 받아놓자.
		Member domain2 = (Member)session.createQuery("from Member m where m.name = :name").setParameter("name", developer).uniqueResult();
		
		tx.commit();
		session.close();
		
		if (domain != null) {
			Likes bean = new Likes();
			bean.setWriter(Integer.parseInt(String.valueOf(domain.getId())));
			bean.setOwner(Integer.parseInt(String.valueOf(domain2.getId())));
			return bean;	// 회원
		} else {
			return null;	// 회원 아냐
		}
	}
	
	public int check(String user){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		// user의 id값을 구하자ㅠㅠ
		Member domain = (Member)session.createQuery("from Member m where m.name = :name").setParameter("name", user).uniqueResult();

		tx.commit();
		session.close();
		
		return Integer.parseInt(String.valueOf(domain.getId()));	// 회원

	}
	

	// 글번호가 없는 경우 글번호를 발급하기 위한 메서드
	// 위의 check에서 리턴한 빈객체를 service에서 적당히 만져서 posts 형태의 객체로 받는다.
	// posts 테이블에 넣어야 하므로 type, post_date, writer와owner(developer)가 필요함
	// 포스트 테이블에 넣고나서 Long 형태의 ID를 리턴한다. 이 ID를 post_no로 쓰기 위해서는 int로의 형변환이 필요하다.
	public Long create(Posts domain) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
	    session.save(domain);
			
	    session.flush();
		Long id	= domain.getId();
		
	    tx.commit();
		session.close();
		return id;
	}
	
	// 좋아요 클릭여부 체크와 likes 테이블에 자료를 집어넣는 역할을 하는 메서드
	// service 영역에서 Likes에 맞게 ID를 제외한 네개의 필드를 채운 객체를 받는다.
	// 이미 클릭이 되어있으면 String 형태로 변환한 id, 아니면 likes 테이블에 인서트를 수행하고 true를 반환
	// 증가한 카운트 수는 위의 get 메소드를 이용하면 어떨지...
	public boolean insert(Likes domain){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		Likes checkedLikes = (Likes)session.createQuery("from Likes l where l.post_no=:post_no and l.writer=:writer ")
				.setInteger("post_no", domain.getPost_no()).setInteger("writer", domain.getWriter()).uniqueResult();
		if(checkedLikes == null){
			session.save(domain);
			tx.commit();
			session.close();
			return true;
		}else{
			tx.commit();
			session.close();
			return false;	
		}
	}

	// insert 메서드에서 인서트 안됐을때 받은 id를 다시 Long 형태로 변환해서 파라메터로 받는다.
	public String delete(Likes domain) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		Likes likes = (Likes)session.createQuery("from Likes l where l.post_no=:post_no and l.writer=:writer ")
				.setInteger("post_no", domain.getPost_no()).setInteger("writer", domain.getWriter()).uniqueResult();
		session.delete(likes);
		tx.commit();
		session.close();
		return "true";
	}

}
