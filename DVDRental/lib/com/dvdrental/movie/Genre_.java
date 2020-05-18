package com.dvdrental.movie;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2010-11-15T15:09:01.681-0500")
@StaticMetamodel(Genre.class)
public class Genre_ {
	public static volatile SingularAttribute<Genre, String> name;
	public static volatile SingularAttribute<Genre, Integer> id;
	public static volatile CollectionAttribute<Genre, MovieInfo> movieInfos;
}
