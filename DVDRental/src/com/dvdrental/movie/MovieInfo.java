package com.dvdrental.movie;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.dvdrental.movie.cast.Actor;
import com.dvdrental.movie.cast.Director;
import com.dvdrental.movie.cast.MusicDirector;
import com.dvdrental.movie.cast.Producer;


/**
 * The persistent class for the movie_info database table.
 * 
 */
@Entity
@Table(name="movie_info")
public class MovieInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="movie_id")
	private int movieId;

	private int adult;

	private int availability;

    @Temporal( TemporalType.DATE)
	@Column(name="availability_date")
	private Date availabilityDate;

	@Column(name="buy_flag")
	private byte buyFlag;

    @Temporal( TemporalType.DATE)
	@Column(name="date_added")
	private Date dateAdded;

	private String description;

	@Column(name="director_id")
	private int directorId;

	private String formate;

    @Lob()
	private byte[] image;

	@Column(name="Image_url")
	private String image_url;

	@Column(name="imdb_id")
	private String imdbId;

	private String language;

	@Column(name="lead_actor_id")
	private int leadActorId;

	@Column(name="lead_actress_id")
	private int leadActressId;

	@Column(name="music_director_id")
	private int musicDirectorId;

	private String name;

	@Column(name="Number_of_time_rented")
	private int number_of_time_rented;

	@Column(name="producer_id")
	private int producerId;

	private float rating;

    @Temporal( TemporalType.DATE)
	@Column(name="release_date")
	private Date releaseDate;

	private int runtime;


	@Column(name="tmdb_id")
	private String tmdbId;

    @Lob()
	private byte[] vedio;

	@Column(name="vedio_url")
	private String vedioUrl;
	
	
	

    public MovieInfo() {
    }

	public int getMovieId() {
		return this.movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public int getAdult() {
		return this.adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getAvailability() {
		return this.availability;
	}

	public void setAvailability(int availability) {
		this.availability = availability;
	}

	public Date getAvailabilityDate() {
		return this.availabilityDate;
	}

	public void setAvailabilityDate(Date availabilityDate) {
		this.availabilityDate = availabilityDate;
	}

	public byte getBuyFlag() {
		return this.buyFlag;
	}

	public void setBuyFlag(byte buyFlag) {
		this.buyFlag = buyFlag;
	}

	public Date getDateAdded() {
		return this.dateAdded;
	}

	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDirectorId() {
		return this.directorId;
	}

	public void setDirectorId(int directorId) {
		this.directorId = directorId;
	}

	public String getFormate() {
		return this.formate;
	}

	public void setFormate(String formate) {
		this.formate = formate;
	}

	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getImage_url() {
		return this.image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getImdbId() {
		return this.imdbId;
	}

	public void setImdbId(String imdbId) {
		this.imdbId = imdbId;
	}

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public int getLeadActorId() {
		return this.leadActorId;
	}

	public void setLeadActorId(int leadActorId) {
		this.leadActorId = leadActorId;
	}

	public int getLeadActressId() {
		return this.leadActressId;
	}

	public void setLeadActressId(int leadActressId) {
		this.leadActressId = leadActressId;
	}

	public int getMusicDirectorId() {
		return this.musicDirectorId;
	}

	public void setMusicDirectorId(int musicDirectorId) {
		this.musicDirectorId = musicDirectorId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNumber_of_time_rented() {
		return this.number_of_time_rented;
	}

	public void setNumber_of_time_rented(int number_of_time_rented) {
		this.number_of_time_rented = number_of_time_rented;
	}

	public int getProducerId() {
		return this.producerId;
	}

	public void setProducerId(int producerId) {
		this.producerId = producerId;
	}

	public float getRating() {
		return this.rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public Date getReleaseDate() {
		return this.releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public int getRuntime() {
		return this.runtime;
	}

	public void setRuntime(int runtime) {
		this.runtime = runtime;
	}

	
	public String getTmdbId() {
		return this.tmdbId;
	}

	public void setTmdbId(String tmdbId) {
		this.tmdbId = tmdbId;
	}

	public byte[] getVedio() {
		return this.vedio;
	}

	public void setVedio(byte[] vedio) {
		this.vedio = vedio;
	}

	public String getVedioUrl() {
		return this.vedioUrl;
	}

	public void setVedioUrl(String vedioUrl) {
		this.vedioUrl = vedioUrl;
	}
	
	@ManyToMany(
			targetEntity=Genre.class,
			cascade={CascadeType.ALL}
			)
			@JoinTable(
		    name="movie_genre",
		    joinColumns=@JoinColumn(name="movie_id"),
		    inverseJoinColumns=@JoinColumn(name="genre_id")
			)
	private Collection<Genre> genres;
	public Collection<Genre> getGenres(){
		if(this.genres==null){
			return new HashSet<Genre>();
		}
		return genres;
	}
	public void setGenre(Collection<Genre> genres){
		this.genres = genres;
		
	}
	@ManyToMany(
			targetEntity=Actor.class,
			cascade={CascadeType.ALL}
			)
			@JoinTable(
		    name="movie_cast",
		    joinColumns=@JoinColumn(name="movie_id"),
		    inverseJoinColumns=@JoinColumn(name="cast_id")
			)
	private Collection<Actor> cast;
	public Collection<Actor> getcast(){
		if(this.cast==null){
			return new HashSet<Actor>();
		}
		return this.cast;
	}
	public void setCast(Collection<Actor> actors){
		this.cast = actors;
	}
	
	@ManyToMany(
			targetEntity=Director.class,
			cascade={CascadeType.ALL}
			)
			@JoinTable(
		    name="movie_director",
		    joinColumns=@JoinColumn(name="movie_id"),
		    inverseJoinColumns=@JoinColumn(name="director_id")
			)
	private Collection<Director> director;
	public Collection<Director> getDirector(){
		if(director==null){
			return new HashSet<Director>();
		}
		return this.director;
	}
	public void setDirector(Collection<Director> director){
		this.director = director;
	}
	
	
	
	
	
	@ManyToMany(
			targetEntity=MusicDirector.class,
			cascade={CascadeType.ALL}
			)
			@JoinTable(
		    name="movie_music_director",
		    joinColumns=@JoinColumn(name="movie_id"),
		    inverseJoinColumns=@JoinColumn(name="music_director_id")
			)
	private Collection<MusicDirector> musicDirector;
	public Collection<MusicDirector> getMusicDirector(){
		if(musicDirector==null){
			return new HashSet<MusicDirector>();
		}else{
		return this.musicDirector;
		}
	}
	
	public void setMusicDirector(Collection<MusicDirector> musicDirectors){
		this.musicDirector=musicDirectors;
	}
	
	@ManyToMany(
			targetEntity=Producer.class,
			cascade={CascadeType.ALL}
			)
			@JoinTable(
		    name="movie_producer",
		    joinColumns=@JoinColumn(name="movie_id"),
		    inverseJoinColumns=@JoinColumn(name="producer_id")
			)
	private Collection<Producer> producer;
	public Collection<Producer> getProducer(){
		if(producer==null){
			return new HashSet<Producer>();
		}
		return this.producer;
	}
	public void setProducer(Collection<Producer> producer){
		this.producer = producer;
	}
	
	@ManyToMany(
			targetEntity=Producer.class,
			cascade={CascadeType.ALL}
			)
			@JoinTable(
		    name="movie_sound",
		    joinColumns=@JoinColumn(name="movie_id"),
		    inverseJoinColumns=@JoinColumn(name="sound_id")
			)
	private Collection<Sound> sound;
	public Collection<Sound> getSound(){
		if(sound==null){
			return new HashSet<Sound>();
		}
		return this.sound;
	}
	public void setSound(Collection<Sound> sound){
		this.sound = sound;
	}
	
	
	
	

}