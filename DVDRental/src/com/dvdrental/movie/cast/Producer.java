package com.dvdrental.movie.cast;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;

import javax.persistence.*;

import com.dvdrental.movie.MovieInfo;


/**
 * The persistent class for the producer database table.
 * 
 */
@Entity
@Table(name="producer")
public class Producer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String description;

	private String name;

    public Producer() {
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
			mappedBy = "producer",
			targetEntity = MovieInfo.class
			)
			private Collection<MovieInfo> movieInfos;
			public Collection<MovieInfo> getMovies(){
				if(this.movieInfos==null){
					return new HashSet<MovieInfo>();
				}
				return this.movieInfos;
			}


}