package com.dvdrental.movie;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;

import javax.persistence.*;


/**
 * The persistent class for the sound database table.
 * 
 */
@Entity
@Table(name="sound")
public class Sound implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String description;

	private String sound;

    public Sound() {
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

	public String getSound() {
		return this.sound;
	}

	public void setSound(String sound) {
		this.sound = sound;
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