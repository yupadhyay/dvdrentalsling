<%@page import="com.dvdrental.movie.cast.Producer"%>
<%@page import="com.dvdrental.movie.cast.Director"%>
<%@page import="com.dvdrental.movie.cast.MusicDirector"%>
<%@page import="com.dvdrental.movie.cast.Actor"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.SortedSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@page import="com.dvdrental.util.QueryUtil"%>
<%@page import="com.dvdrental.movie.MovieLanguage"%>
<%@page import="java.util.Collection"%>
<%@page import="com.dvdrental.util.TMDBUtil"%>
<%@page import="net.sf.jtmdb.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%String contextPath = request.getContextPath(); %>
<jsp:include page="../templates/global.jsp"></jsp:include>
<script type="text/javascript" src="<%=contextPath %>/js/JQuerylibrary/js/jquery.asmselect.js"></script>
<link rel="stylesheet" type="text/css" href="<%=contextPath %>/js/JQuerylibrary/css/jquery.asmselect.css" />
</head>
<body>
<%
Movie movie = null;
if(request.getParameter("index")!=null){
	String index = request.getParameter("index");
	
	String movieObjectIndex = "movieobject"+index;
	if(session.getAttribute(movieObjectIndex)!=null){
		
	movie = (Movie)session.getAttribute("movieobject"+index);
	if(movie!=null){
	
	
%>



<% 
	}
	}
}

%>
<script type="text/javascript">

$(document).ready(function() {
    $("select[multiple]").asmSelect({
        sortable: true,
        animate: true,
        addItemTarget: 'top',
        highlight:true
        
    });
});

$(function() {
	$('a.media').media();
	
	$( "#dateadded" ).datepicker({
		showButtonPanel: true
	});
	$( "#dialog-modal" ).hide();
	$( "#dialog-modal-vedio" ).hide();
});

function preview(){
	$("#previewurl").attr("src",$("#imageurl").val());
	$( "#dialog:ui-dialog" ).dialog( "destroy" );
	
	$( "#dialog-modal" ).dialog({
		height: 400,
		width: 400,
		modal: true
	});

}

function moviepreview(){
	alert($("#vediourl").val());
	$("#moviepreviewurl").attr("href",$("#vediourl").val());
	$("#moviepreviewurl").attr("class","media {width:450, height:380, type:'swf'}");
	
	$('a.media').media();
	$( "#dialog:ui-dialog" ).dialog( "destroy");
	$( "#dialog-modal-vedio" ).dialog({
		height: 400,
		width: 400,
		modal: true
	});

}


function addAvailability(){
	if($("#available").val()=='0'){
		var appendString = "<div class='formbox-left' style='width:49%'><SPAN class='formfieldtext'>";
		appendString=appendString+"Available Date:&nbsp;</SPAN></div>";
		appendString=appendString+"<div class='formbox-right' style='width:50%'><SPAN><input id='availabledate' name='availabledate'>";
		appendString=appendString+"</SPAN></div>";
		$("#avail").append(appendString);
		$( "#date" ).datepicker({
			showButtonPanel: true
		});
	}
	
}

function saveInDatabase(){
	
}

</script>
 <div  style="width:100%;float:left;padding-left:5px" >
<div align="left" class="formboxheader">Add Movie</div>
<div class="formboxcontent" align="center">

 
 <div  class="formbox">

<form action="/SaveMovieServlet" method="post">
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Name:
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
 <input type="text" name="name" id="name" value=<%=movie.getName() %>></input>
 </SPAN>
 </div>
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
tmdbId:&nbsp; 
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<input type="text" name="tmdbid" id="tmdbid" value="<%=movie.getID() %>"/>
</SPAN>
</div>
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
imdbId:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
 <input type="text" name="imdbid" id="imdbid" value="<%=movie.getImdbID() %>"/>
 </SPAN>
 </div>
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Availability:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select name="available" id="available" onchange="addAvailability()">
<option value="1">Yes</option>
<option value="0">No</option>
</select>
</SPAN>
</div>
<br>
<div id="avail"></div>
<br>
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Adult:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select name="adult" id="adult">
<option value="1">Yes</option>
<option value="0">No</option>
</select>
</SPAN>
</div>

<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Buy Flag:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select name="buy" id="buy">
<option value="1">Yes</option>
<option value="0">No</option>
</select>
</SPAN>
</div>

<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Date Added:&nbsp; 
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<input type="text" name="dateadded" id="dateadded"/>
</SPAN>
</div>


<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Description:&nbsp; 
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<textarea rows="5" cols="30" name="description" id="description"><%=movie.getOverview() %></textarea>
</SPAN>
</div>

<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Image URL:&nbsp; 
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<input type="text" size="50" name="imageurl" id="imageurl" value="<%=TMDBUtil.getTMDBInstance().getMoviePreviewURL(movie) %>"/>
<a onclick="preview()">Preview</a>

</SPAN>
</div>

<div id="dialog-modal" title="Preview">
	<img id="previewurl" alt="" height="200px" width="200px">
</div>

<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Language:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select multiple="multiple" name="language" id="language" title="Please select Language">
<%Collection<MovieLanguage> languages = new QueryUtil<MovieLanguage>().getCollection(MovieLanguage.class);
SortedSet<MovieLanguage> sortedLanguages = new TreeSet<MovieLanguage>(languages);
Iterator<MovieLanguage> langItr = sortedLanguages.iterator();
while(langItr.hasNext()){ 
	MovieLanguage language = langItr.next();
%>
<option value="<%=language.getLanguageId() %>"><%=language.getLanguage() %></option>
<%} %>
</select>
</SPAN>
</div>


<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Lead Actor:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select name="actor" id="actor">
<%Collection<Actor> actors = new QueryUtil<Actor>().getCollection(Actor.class);

SortedSet<Actor> sortedActor = new TreeSet<Actor>(actors);


Iterator<Actor> actorItr = sortedActor.iterator();
while(actorItr.hasNext()){ 
	Actor actor = actorItr.next();
	
	
%>
<option value="<%=actor.getId() %>"><%=actor.getName() %></option>
<%} %>
</select>
</SPAN>
</div>

<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Lead Actress:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select name="actress" id="actress">
<%Collection<Actor> actresses = new QueryUtil<Actor>().getCollection(Actor.class);

SortedSet<Actor> sortedActoresses = new TreeSet<Actor>(actresses);


Iterator<Actor> actoressesItr = sortedActoresses.iterator();
while(actoressesItr.hasNext()){ 
	Actor actor = actoressesItr.next();
	
	
%>
<option value="<%=actor.getId() %>"><%=actor.getName() %></option>
<%} %>
</select>
</SPAN>
</div>




<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Caste:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select multiple="multiple" name="caste" id="caste">
<%Collection<Actor> casts = new QueryUtil<Actor>().getCollection(Actor.class);

SortedSet<Actor> sortedCaste = new TreeSet<Actor>(actors);
Iterator<Actor> casteItr = sortedCaste.iterator();
while(casteItr.hasNext()){ 
	Actor actor = casteItr.next();
	
	
%>
<option value="<%=actor.getId() %>"><%=actor.getName() %></option>
<%} %>
</select>
</SPAN>
</div>

<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Director:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select multiple="multiple" name="director" id="director">
<%Collection<Director> directors = new QueryUtil<Director>().getCollection(Director.class);

SortedSet<Director> sortedSet = new TreeSet<Director>(directors);
Iterator<Director> iterator = sortedSet.iterator();
while(iterator.hasNext()){ 
	Director director = iterator.next();
	
	
%>
<option value="<%=director.getId() %>"><%=director.getName() %></option>
<%} %>
</select>
</SPAN>
</div>



<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Producer:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select multiple="multiple" name="producer" id="producer">
<%Collection<Producer> producers = new QueryUtil<Producer>().getCollection(Producer.class);

SortedSet<Producer> producersSet = new TreeSet<Producer>(producers);
Iterator<Producer> producerItr = producersSet.iterator();
while(producerItr.hasNext()){ 
	Producer producer = producerItr.next();
%>
<option value="<%=producer.getId() %>"><%=producer.getName() %></option>
<%} %>
</select>
</SPAN>
</div>



<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Music Director:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select multiple="multiple" name="musicDirector" id="musicDirector">
<%Collection<MusicDirector> musicDirectors = new QueryUtil<MusicDirector>().getCollection(MusicDirector.class);

SortedSet<MusicDirector> musicDirectorsSet = new TreeSet<MusicDirector>(musicDirectors);
Iterator<MusicDirector> musicDirectorItr = musicDirectorsSet.iterator();
while(musicDirectorItr.hasNext()){ 
	MusicDirector musicDirector = musicDirectorItr.next();
	%>
	

<option value="<%=musicDirector.getId() %>"><%=musicDirector.getName() %></option>
<%} %>
</select>
</SPAN>
</div>


<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Rating:
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
 <input type="text" name="rating" id="rating" value=<%=movie.getRating() %>></input>
 </SPAN>
 </div>
 
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Runtime:
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
 <input type="text" name="runtime" id="runtime" value=<%=movie.getRuntime()	 %>></input>
 </SPAN>
 </div>
 
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Sound:
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
 <input type="text" name="runtime" id="runtime" value=<%=movie.getRuntime()	 %>></input>
 </SPAN>
 </div>
 
 <div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Trailer:
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
 <input type="text" name="vediourl" id="vediourl" value="<%=movie.getTrailer() %>"></input>
 <a onclick="moviepreview()">Preview</a>
 </SPAN>
 <div id="dialog-modal-vedio" title="Trailer">
 <a id="moviepreviewurl"></a> 
 </div>
 
 </div>

 <input type="submit" value="Save in database"/>
 
</form>
</div>
</div>
</div>

</body>
</html>