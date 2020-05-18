package com.dvdrental.movie.cast;

import com.dvdrental.movie.MovieInfo;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2010-11-16T10:52:09.283-0500")
@StaticMetamodel(Director.class)
public class Director_ {
	public static volatile SingularAttribute<Director, Integer> id;
	public static volatile SingularAttribute<Director, String> description;
	public static volatile SingularAttribute<Director, String> name;
	public static volatile CollectionAttribute<Director, MovieInfo> movieInfos;
}
