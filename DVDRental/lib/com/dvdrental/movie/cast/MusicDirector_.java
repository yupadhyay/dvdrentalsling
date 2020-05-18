package com.dvdrental.movie.cast;

import com.dvdrental.movie.MovieInfo;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2010-11-16T10:52:36.288-0500")
@StaticMetamodel(MusicDirector.class)
public class MusicDirector_ {
	public static volatile SingularAttribute<MusicDirector, Integer> id;
	public static volatile SingularAttribute<MusicDirector, String> description;
	public static volatile SingularAttribute<MusicDirector, String> name;
	public static volatile CollectionAttribute<MusicDirector, MovieInfo> movieInfos;
}
