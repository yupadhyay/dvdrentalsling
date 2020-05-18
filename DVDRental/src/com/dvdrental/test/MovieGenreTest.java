package com.dvdrental.test;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import net.sf.jtmdb.Movie;

import org.hibernate.Criteria;



import com.dvdrental.movie.Genre;
import com.dvdrental.movie.Genre_;
import com.dvdrental.movie.MovieInfo;
import com.dvdrental.movie.MovieLanguage;
import com.dvdrental.util.PersistenceUtil;
import com.dvdrental.util.QueryUtil;
import com.dvdrental.util.TMDBUtil;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.QEncoderStream;

public class MovieGenreTest {
	
	
	public static void main(String[] args) {
		/*
		Genre genre = new Genre();
		genre.setName("Thriller");
		MovieInfo movieInfo = new MovieInfo();
		movieInfo.setName("Test");
		movieInfo.setDescription("This is test");
		Collection<Genre> genres = new HashSet<Genre>();
		genres.add(genre);
		movieInfo.setGenre(genres);
		EntityManager em =  PersistenceUtil.getEntityManager();
		em.getTransaction().begin();
		
		em.persist(genre);
		em.persist(movieInfo);
		em.getTransaction().commit();
		*/
		
		/*
		EntityManager em =  PersistenceUtil.getEntityManager();
		CriteriaBuilder builder = em.getCriteriaBuilder();
		CriteriaQuery<Genre> criteria = builder.createQuery( Genre.class );
		Root<Genre> personRoot = criteria.from( Genre.class );
		criteria.select( personRoot );
		criteria.where(builder.equal(builder.lower(personRoot.get(Genre_.name)), "horror"));
		List<Genre> people = em.createQuery( criteria ).getResultList();
		for(Genre g :people){
			System.out.println(g.getId());
		}
		*/
		
		/*
		EntityManager em =  PersistenceUtil.getEntityManager();
		String sqlQuery = "select * from genre where lower(name) = ?";
		Query q = em.createNativeQuery(sqlQuery, Genre.class);
		q.setParameter( 1, "horror" );
		List<Genre> people = q.getResultList();
		for(Genre g :people){
			System.out.println(g.getId());
		}
		
		Collection<Genre> results = new QueryUtil<Genre>().getCollection(Genre.class);
		for(Genre g:results){
			System.out.println(g.getName());
		}
		
		Collection<Movie> movies = TMDBUtil.getTMDBInstance().getMovie("swades");
		for(Movie movie:movies){
			System.out.println(movie.getOverview());
			System.out.println(TMDBUtil.getTMDBInstance().getMovieCast(movie));
			System.out.println(movie.getCast());
			
			
		}*/
		
		Collection<MovieLanguage> languages = new QueryUtil<MovieLanguage>().getCollection(MovieLanguage.class);
		Collections.sort(new ArrayList<MovieLanguage>(languages));
		for(MovieLanguage movie:languages){
			System.out.println(movie.getLanguage());
		}
		
		}

}
