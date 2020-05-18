package com.dvdrental.movie;

import com.dvdrental.movie.cast.Actor;
import com.dvdrental.movie.cast.Director;
import com.dvdrental.movie.cast.MusicDirector;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2010-11-16T10:47:29.012-0500")
@StaticMetamodel(MovieInfo.class)
public class MovieInfo_ {
	public static volatile SingularAttribute<MovieInfo, Integer> movieId;
	public static volatile SingularAttribute<MovieInfo, Integer> adult;
	public static volatile SingularAttribute<MovieInfo, Integer> availability;
	public static volatile SingularAttribute<MovieInfo, Date> availabilityDate;
	public static volatile SingularAttribute<MovieInfo, Byte> buyFlag;
	public static volatile SingularAttribute<MovieInfo, Date> dateAdded;
	public static volatile SingularAttribute<MovieInfo, String> description;
	public static volatile SingularAttribute<MovieInfo, Integer> directorId;
	public static volatile SingularAttribute<MovieInfo, String> formate;
	public static volatile SingularAttribute<MovieInfo, byte[]> image;
	public static volatile SingularAttribute<MovieInfo, String> image_url;
	public static volatile SingularAttribute<MovieInfo, String> imdbId;
	public static volatile SingularAttribute<MovieInfo, String> language;
	public static volatile SingularAttribute<MovieInfo, Integer> leadActorId;
	public static volatile SingularAttribute<MovieInfo, Integer> leadActressId;
	public static volatile SingularAttribute<MovieInfo, Integer> musicDirectorId;
	public static volatile SingularAttribute<MovieInfo, String> name;
	public static volatile SingularAttribute<MovieInfo, Integer> number_of_time_rented;
	public static volatile SingularAttribute<MovieInfo, Integer> producerId;
	public static volatile SingularAttribute<MovieInfo, Float> rating;
	public static volatile SingularAttribute<MovieInfo, Date> releaseDate;
	public static volatile SingularAttribute<MovieInfo, Integer> runtime;
	public static volatile SingularAttribute<MovieInfo, String> sound;
	public static volatile SingularAttribute<MovieInfo, String> tmdbId;
	public static volatile SingularAttribute<MovieInfo, byte[]> vedio;
	public static volatile SingularAttribute<MovieInfo, String> vedioUrl;
	public static volatile CollectionAttribute<MovieInfo, Genre> genres;
	public static volatile CollectionAttribute<MovieInfo, Actor> cast;
	public static volatile CollectionAttribute<MovieInfo, Director> director;
	public static volatile CollectionAttribute<MovieInfo, MusicDirector> musicDirector;
}
