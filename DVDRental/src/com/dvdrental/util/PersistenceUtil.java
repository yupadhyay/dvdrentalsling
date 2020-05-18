package com.dvdrental.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PersistenceUtil {
	private static EntityManagerFactory entityManagerFactory;
	private static EntityManager entityManager;
	private static final String PERSISTENCE_UNIT="dvdRentalDb";
	public static EntityManager getEntityManager(){
		try{
			entityManagerFactory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
			entityManager=entityManagerFactory.createEntityManager();
			return entityManager;
			
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public static void closeEntityManager(){
		if(entityManager!=null){
			entityManager.close();
		}
	}
	public static void persist(Object obj){
		EntityManager em = getEntityManager();
		em.getTransaction().begin();
		em.persist(obj);
		try{
			em.getTransaction().commit();
		}catch (Exception e) {
			em.getTransaction().rollback();
		}finally{
			closeEntityManager();
		}
	}

}
