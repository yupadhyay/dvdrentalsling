package com.dvdrental.movie;

import java.io.Serializable;
import javax.persistence.*;

import sun.nio.cs.ext.ISCII91;


/**
 * The persistent class for the movie_language database table.
 * 
 */
@Entity
@Table(name="movie_language")

public class MovieLanguage implements Serializable, Comparable<MovieLanguage> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="language_id")
	private int languageId;
	
	
	private String language;

    public MovieLanguage() {
    }

	public int getLanguageId() {
		return this.languageId;
	}

	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	@Override
	public boolean equals(Object arg0) {
		if(arg0 instanceof MovieLanguage){
			MovieLanguage language = (MovieLanguage)arg0;
			return language.getLanguage().equals(this.getLanguage());
		}
		// TODO Auto-generated method stub
		return super.equals(arg0);
	}

	@Override
	public int compareTo(MovieLanguage o) {
		return this.getLanguage().compareToIgnoreCase(o.getLanguage());
		// TODO Auto-generated method stub
		
		
	}

}