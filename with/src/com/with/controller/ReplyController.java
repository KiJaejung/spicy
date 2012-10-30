package com.with.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.with.dao.PostsDao;
import com.with.dao.ReplyDao;
import com.with.domain.Posts;
import com.with.domain.Reply;
import com.with.service.PostsService;
import com.with.service.ReplyService;

@Controller
@RequestMapping (value="/reply")
public class ReplyController extends MasterController<Reply, Long, ReplyService, ReplyDao> {
	
	@RequestMapping (value="/result/{id}", method=RequestMethod.GET)
	public String show(Model model, @PathVariable("id") int id, ReplyService service, ReplyDao dao) {
		int result = service.show(id, dao);
		model.addAttribute("result", result);
		return "reply/show";
	}
}
