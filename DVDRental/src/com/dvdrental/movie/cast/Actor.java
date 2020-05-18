package com.dvdrental.movie.cast;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;

import javax.persistence.*;

import com.dvdrental.movie.MovieInfo;


/**
 * The persistent class for the actor database table.
 * 
 */
@Entity
@Table(name="actor")
public class Actor implements Serializable,Comparable<Actor> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String description;

	private String name;

    public Actor() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@ManyToMany(
			cascade = {CascadeType.ALL},
			mappedBy = "cast",
			targetEntity = MovieInfo.class
			)
			private Collection<MovieInfo> movieInfos;
			public Collection<MovieInfo> getMovies(){
				if(this.movieInfos==null){
					return new HashSet<MovieInfo>();
				}
				return this.movieInfos;
			}

			@Override
			public int compareTo(Actor o) {
				// TODO Auto-generated method stub
				return this.getName().compareToIgnoreCase(o.getName());
			}

}