package com.admin.service;

import java.util.List;

import com.admin.dao.MasterDao;
import com.admin.dao.MemberAdminDao;
import com.admin.domain.MemberAdmin;

@SuppressWarnings("unchecked")
public abstract class MasterService<Domain, ID, Dao> extends MasterDao<Domain, ID> {

	public List<Domain> index(Dao dao, ID id) {
		System.out.println("MasterService에 왔다");
		List<Domain> domainList = ((MasterDao) dao).index(id);
		return null;
		//return domainList;
	}
	
	public List<Domain> show(ID id, Dao dao) {
		System.out.println("혹시 여기??");
		Domain domain = (Domain) ((MasterDao) dao).show(id);
		return null;
	}
	
	public Domain find(ID id1, ID id2, Dao dao) {
		Domain domain = (Domain) ((MasterDao) dao).find(id1, id2);
		return domain;
	}
	
	public String newly(Dao dao) {
		return null;
	}
	
	public Domain edit(ID id, Dao dao) {
		Domain domain = (Domain) ((MasterDao) dao).edit(id);
		return null;
	}
	
	public String create(Domain domain, Dao dao) {
		String result = ((MasterDao) dao).create(domain);
		return result;
	}
	
	public String update(Domain domain, ID id, Dao dao) {
		String result = ((MasterDao) dao).update(domain, id);
		return null;
	}
	
	public String delete(Long id, Dao dao) {
		System.out.println("Service : delete 까지 들어옴");
		List<MemberAdmin> list = ((MemberAdminDao) dao).delete(id);
		return null;
	}
}

