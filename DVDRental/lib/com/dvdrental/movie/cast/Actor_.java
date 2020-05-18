package com.dvdrental.movie.cast;

import com.dvdrental.movie.MovieInfo;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2010-11-16T10:50:53.366-0500")
@StaticMetamodel(Actor.class)
public class Actor_ {
	public static volatile SingularAttribute<Actor, Integer> id;
	public static volatile SingularAttribute<Actor, String> description;
	public static volatile SingularAttribute<Actor, String> name;
	public static volatile CollectionAttribute<Actor, MovieInfo> movieInfos;
}
