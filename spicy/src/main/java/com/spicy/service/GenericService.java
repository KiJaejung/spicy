package com.spicy.service;

import java.util.List;

import com.spicy.dao.GenericDao;

public abstract class GenericService<Domain, ID, Dao> extends GenericDao<Domain, ID> {
	
	public List<Domain> index(Dao dao) {
		List<Domain> domainList = ((GenericDao) dao).index();
		return domainList;
	}
	
	public boolean create(Domain domain, Dao dao) {
		boolean result = ((GenericDao) dao).create(domain);
		return result;
	}
	
	public boolean update(Domain domain, ID id, Dao dao) {
		boolean result = ((GenericDao) dao).update(domain, id);
		return result;
	}
	
	public boolean delete(ID id, Dao dao) {
		boolean result = ((GenericDao) dao).delete(id);
		return result;
	}
}
