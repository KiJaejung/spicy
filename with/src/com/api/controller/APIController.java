package com.api.controller;

import org.json.simple.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.api.bean.WithLikes;
import com.api.bean.WithMembers;
import com.api.dao.APILikesDao;
import com.api.dao.APIMembersDao;
import com.api.service.APILikesService;
import com.api.service.APIMembersService;
import com.with.dao.MemberDao;
import com.with.domain.Member;
import com.with.service.MemberService;

@Controller
@RequestMapping(value="/api")
public class APIController {
	
	
	// 원래 회원정보 보는건데 비번 노출때문에 일단 포스트 방식으로 받는다
	@RequestMapping (value="/members/{uselessname}", method=RequestMethod.POST)
	public ResponseEntity<String> get(@PathVariable("uselessname") String name, WithMembers bean, APIMembersService service, APIMembersDao dao) {
		System.out.println("멤버 get");
		JSONObject obj = new JSONObject();
		bean = service.get(bean,dao);
		obj.put("result", bean.isResult());
		
		ResponseEntity<String> jsonResponse = getJSONResponse (obj);
	    return jsonResponse;
	}
	
	@RequestMapping (value="/members", method=RequestMethod.POST)
	public ResponseEntity<String> create(Member domain, MemberService service, MemberDao dao) {
		System.out.println("멤버 create");
		JSONObject obj = new JSONObject();
		System.out.println("이름 : "+domain.getName());
		System.out.println("비번 : "+domain.getPassword());
		System.out.println("이멜 : "+domain.getEmail());
		String result = service.create(domain,dao);
		obj.put("result", result);
		
		ResponseEntity<String> jsonResponse = getJSONResponse (obj);
	    return jsonResponse;
	}
	
	@RequestMapping (value="/members", method=RequestMethod.PUT)
	public ResponseEntity<String> update(WithMembers bean, APIMembersService service, APIMembersDao dao) {
		System.out.println("멤버 update");
		JSONObject obj = new JSONObject();
		bean = service.update(bean,dao);
		obj.put("result", bean.isResult());
		
		ResponseEntity<String> jsonResponse = getJSONResponse (obj);
	    return jsonResponse;
	}
	
	@RequestMapping (value="/members", method=RequestMethod.DELETE)
	public ResponseEntity<String> delete(WithMembers bean, APIMembersService service, APIMembersDao dao) {
		System.out.println("멤버 delete");
		JSONObject obj = new JSONObject();
		bean = service.delete(bean,dao);
		obj.put("result", bean.isResult());
		
		ResponseEntity<String> jsonResponse = getJSONResponse (obj);
	    return jsonResponse;
	}
	
	
	
	
	
	
	@RequestMapping (value="/likes/{post_no}", method=RequestMethod.GET)
	public ResponseEntity<String> get(@PathVariable("post_no") int post_no, WithLikes bean, APILikesService service, APILikesDao dao) {
		System.out.println("라이크 get");
		JSONObject obj = new JSONObject();
		
		bean.setPost_no(post_no);
		bean = service.get(bean, dao);
		obj.put("count", bean.getCount());
		ResponseEntity<String> jsonResponse = getJSONResponse (obj);
	    return jsonResponse;
	}
	
	@RequestMapping (value="/likes", method=RequestMethod.POST)
	public ResponseEntity<String> create(WithLikes bean, APILikesService service, APILikesDao dao) {
		System.out.println("라이크 create");
		JSONObject obj = new JSONObject();
		System.out.println(bean.getDeveloper());
		System.out.println(bean.getUser());
		System.out.println(bean.getPost_no());
		bean = service.create(bean, dao);
		System.out.println(bean.getPost_no());
		System.out.println(bean.getCount());
		System.out.println(bean.isResult());
		obj.put("post_no", bean.getPost_no());
		obj.put("count", bean.getCount());
		obj.put("result", bean.isResult());
		
		ResponseEntity<String> jsonResponse = getJSONResponse (obj);
	    return jsonResponse;
	}
	
	@RequestMapping (value="/likes", method=RequestMethod.DELETE)
	public ResponseEntity<String> delete(WithLikes bean, APILikesService service, APILikesDao dao) {
		System.out.println("라이크 delete");
		JSONObject obj = new JSONObject();
		bean = service.delete(bean, dao);
		obj.put("count", bean.getCount());
		obj.put("result", bean.isResult());
		
		ResponseEntity<String> jsonResponse = getJSONResponse (obj);
	    return jsonResponse;
	}
	
	
	public ResponseEntity<String> getJSONResponse(JSONObject obj) {
//		String result = "callback("+obj.toJSONString()+")";
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.setContentType(MediaType.APPLICATION_JSON);
	    responseHeaders.set("Access-Control-Allow-Origin","*");
	    return new ResponseEntity<String>(obj.toJSONString(), responseHeaders, HttpStatus.CREATED);
	}
}
//
//@RequestMapping (value="/likes", method=RequestMethod.DELETE)
//public ResponseEntity<String> delete(WithLikes bean, JSONObject obj, APILikesService service, APILikesDao dao) {
//	
//	bean = null;
//	obj.put("conut", bean.getCount());
//	obj.put("result", bean.isResult());
//	
//	HttpHeaders responseHeaders = new HttpHeaders();
//    responseHeaders.setContentType(MediaType.APPLICATION_JSON);
//    return new ResponseEntity<String>(obj.toJSONString(), responseHeaders, HttpStatus.CREATED);
//}
