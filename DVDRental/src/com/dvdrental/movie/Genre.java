package com.dvdrental.movie;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.dvdrental.util.QueryUtil;


/**
 * The persistent class for the genre database table.
 * 
 */
@Entity
@Table(name="genre")
public class Genre implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="genre_id")
	private int id;

	private String name;
	
	
	

    public Genre() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@ManyToMany(
	cascade = {CascadeType.ALL},
	mappedBy = "genres",
	targetEntity = MovieInfo.class
	)
	private Collection<MovieInfo> movieInfos = new HashSet<MovieInfo>();
	public Collection<MovieInfo> getMovies(){
		return this.movieInfos;
	}
	
	
	public static Collection<Genre> getAllGenre(){
		return new QueryUtil<Genre>().getCollection(Genre.class);
	}
	

}