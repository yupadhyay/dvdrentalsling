<%@page import="com.dvdrental.movie.Genre"%>
<%@page import="java.util.Collection"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="com.dvdrental.util.PersistenceUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="clearfix"></div>
<div class="underliner"></div>
<div  class="left-side"  style="float:left;width:200px">
			<div class="title-menu">Browse By Genres</div>
 				<ul id="MenuBar2" class="MenuBarVertical">
 				<%
 				Collection<Genre> genres = Genre.getAllGenre();
 				for(Genre genre:genres){
 				%>
 				<li ><a  href=""><%=genre.getName() %></a></li>
				<%} %>
				</ul>
				<div style="height:2px;">&nbsp;</div>
				
									
		<div class="title-menu">Hot lists</div>
 <ul id="MenuBar2" class="MenuBarVertical">
						
						<li ><a   href='index.php?view=upcoming&item_type=M' >Rental Items Coming Soon</a></li>
						<li ><a   href='index.php?view=recommendations&item_type=M'>Recommendations</a></li>
						<li ><a href='index.php?view=newreleases&item_type=M'>New Releases</a></li>
						<li ><a href='index.php?view=top100&item_type=M'>Top 100 Rental Items</a></li>

					</ul>
			<div style="height:2px;">&nbsp;</div>
				
</div>
<div class="left-side" style="width:745px;" >



