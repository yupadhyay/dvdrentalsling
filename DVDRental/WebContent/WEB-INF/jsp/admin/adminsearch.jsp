<%@page import="com.dvdrental.util.TMDBUtil"%>
<%@page import="net.sf.jtmdb.Movie"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../templates/global.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<script type="text/javascript">
function validate(){
	if($("#search").val()==""){
		alert("Search can not be empty");
		return
	}
	document.searchfrm.action="adminsearch.jsp";
	document.searchfrm.method="post";
	document.searchfrm.submit();
	
}
function createMovie(form){
	//var formname=movieForm+index;
	form.action="createmovie.jsp";
	form.method="post";
	form.submit();
}

</script>
<body>
<%
String searchTerm = null;
if(request.getParameter("search")!=null && !"".equalsIgnoreCase(request.getParameter("search"))){
	searchTerm=request.getParameter("search");
}

%>
<br><br><br>
<div align="center">
<form name="searchfrm" id="searchfrm">
Search: <input type="text" name="search" id="search">
<input type="button" onclick="validate()" value="search">
</form>
</div>


<div id="result">
<%
if(searchTerm!=null){
Collection<Movie> results = TMDBUtil.getTMDBInstance().getMovie(searchTerm);

int i=0;
%>
<div class="rentaldetail" style="margin-top:10px;">
<% 
for(Movie movie:results){

%>
<div style="width:19%;float:left">

<form name="movieForm<%=i%>" >
<div align="center">
<a href="createmovie.jsp?index=<%=i %>">
<img alt="create movie" src="<%=TMDBUtil.getTMDBInstance().getMoviePreviewURL(movie) %>" />
</a>
</div>
<div style="margin-top:5px;" align="center"  class="Cataloggametitle" >

<%=movie.getName() %>
</div>


<%
String movieObjectIndex = "movieobject"+i;
session.setAttribute(movieObjectIndex,movie); %>
<input type="hidden" name="index" id="index" value="<%=i %>">
<div align="center" style="width:100px;margin-top:5px;padding-left:90px;">
<a href="createmovie.jsp?index=<%=i %>"  class="buttoncss">Add Movie</a>
</div>
</form>

</div>
<%
i++;

}
}
%>
</div>
</div>
</body>
</html>