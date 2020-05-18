package com.dvdrental.util;

import java.util.Collection;
import java.util.List;
import java.util.Set;

import net.sf.jtmdb.BrowseOptions;
import net.sf.jtmdb.CastInfo;
import net.sf.jtmdb.GeneralSettings;
import net.sf.jtmdb.Movie;
import net.sf.jtmdb.MoviePoster;
import net.sf.jtmdb.MoviePoster.Size;

/**
 * TMDB util class to get TMDB information
 * API Key="8daa8407f00f7e7e96bff0c16647bfc9"
 * this is registered under yogi_1306
 * @author yogeshupadhyay
 *
 */
public class TMDBUtil {
	private static final String API_KEY = "8daa8407f00f7e7e96bff0c16647bfc9";
	private static volatile TMDBUtil tmdbUtil;
	private TMDBUtil(){
		
	}
	public static synchronized TMDBUtil getTMDBInstance(){
		GeneralSettings.setApiKey(API_KEY);
		if(tmdbUtil==null){
			tmdbUtil = new TMDBUtil();
			return tmdbUtil;
		}
		return tmdbUtil;
	}
	public Collection<Movie> getMovie(String searchTerm){
		
		List<Movie> results;
		try{
		BrowseOptions options = new BrowseOptions();
		
		options.setQuery(searchTerm);
		
		results = Movie.browse(options);
		}catch (Exception e) {
			results=null;
		}
		return results;
		
	}
	public String getMovieCast(Movie movie){
		Set<CastInfo> casts = movie.getCast();
		if(casts!=null){
		return casts.toString().replace("[", "").replace("]", "");
		}else{
			return "No Cast Info Found";
		}
	}
	
	public String getMoviePreviewURL(Movie movie){
	Set<MoviePoster> posters = movie.getImages().posters;
	
	for(MoviePoster poster:posters){
		return poster.getImage(Size.THUMB).toString();
	}
	return "../../images/misc/no_image_available.jpg";
	}
	
	
}
