package com.with.service;

import java.util.List;

import com.with.dao.MasterDao;

@SuppressWarnings("unchecked")
public abstract class MasterService<Domain, ID, Dao> extends MasterDao<Domain, ID> {
	
	public List<Domain> index(ID id, Dao dao) {
		List<Domain> domainList = ((MasterDao) dao).index(id);
		return domainList;
	}
	
	public Domain show(ID id, Dao dao) {
		Domain domain = (Domain) ((MasterDao) dao).show(id);
		return domain;
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
	
	public String delete(ID id, Dao dao) {
		String result = ((MasterDao) dao).delete(id);
		return result;
	}
}
