package com.admin.service;

import java.util.List;

import com.admin.dao.PostsAdminDao;
import com.admin.domain.MemberAdmin;
import com.admin.domain.PostsAdmin;

public class PostsAdminService extends MasterService<PostsAdmin, Long, PostsAdminDao>{
	public void index(){
	}

	public List<PostsAdmin> index(PostsAdminDao dao, Long id) {
		List<PostsAdmin> list = ((PostsAdminDao) dao).index(id);
		
		return list;
	}

	public List<PostsAdmin> deleteContents(PostsAdminDao dao, Long id) {
		List<PostsAdmin> list = ((PostsAdminDao) dao).deleteContents(id);
		return null;
	}
	


}
