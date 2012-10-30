package com.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.admin.dao.PostsAdminDao;
import com.admin.domain.PostsAdmin;
import com.admin.service.PostsAdminService;

// 회원글관리에 쓰는 Controller
@Controller
@RequestMapping(value="/admin/posts")
public class PostsAdminController extends AdminController<PostsAdmin, Long, PostsAdminService, PostsAdminDao>{
	
	@RequestMapping (value="/index/{contentsNo}", method=RequestMethod.GET)
	public String index(Model model,PostsAdmin posts, @PathVariable("contentsNo") Long id, PostsAdminService service, PostsAdminDao dao){
		List<PostsAdmin> list = ((PostsAdminService) service).index(dao, id);
		model.addAttribute("contentsList", list);
		return "/admin/postsadmin/show";
	}
	
	@RequestMapping (value="/deleteContents/{posts_id}", method=RequestMethod.DELETE)
	public String deleteContents(Model model,PostsAdmin posts, @PathVariable("posts_id") Long id, PostsAdminService service, PostsAdminDao dao){
		List<PostsAdmin> list = ((PostsAdminService) service).deleteContents(dao, id);
		model.addAttribute("contentsList", list);
		return "/admin/postsadmin/show";
	}

}	

