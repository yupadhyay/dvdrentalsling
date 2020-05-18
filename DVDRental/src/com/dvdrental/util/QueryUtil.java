package com.dvdrental.util;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

public class QueryUtil<T> {
	/**
	 * This is generic method that will return all the column for a table
	 * prototype Collection<Genre> getCollection(Genre.class)
	 * @param obj
	 * @return
	 */
	public Collection<T> getCollection(Class<T> obj){
		EntityManager em = PersistenceUtil.getEntityManager();
		CriteriaBuilder builder = em.getCriteriaBuilder();
		CriteriaQuery<T> criteria = builder.createQuery(obj);
		Root<T> root = criteria.from(obj);
		criteria.select( root );
		List<T> results = em.createQuery(criteria).getResultList();
		PersistenceUtil.closeEntityManager();
		if(results!=null){
			return results;
		}
		return null;
		
	}
}
