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
<body>
<jsp:include page="../templates/header.jsp"></jsp:include>
<jsp:include page="../templates/leftNav.jsp"></jsp:include>
<%String contextPath = request.getContextPath(); %>
</head>
<body>
<%String searchTerm = null;
if(request.getParameter("search")!=null &&!"".equals(request.getParameter("search"))){
	searchTerm=request.getParameter("search").toString();
}
Collection<Movie> movies = TMDBUtil.getTMDBInstance().getMovie(searchTerm);
		
%>
<b>Search Result for &nbsp;<font color="red">"<%=searchTerm %>"</font></b>
<%for(Movie movie:movies){ %>

<table>
<tr><td>
<img id="poster" src="<%=TMDBUtil.getTMDBInstance().getMoviePreviewURL(movie)%>"/>
</td>
<td>
<table id="movieInfo" width="500px">
<tr><td>Name</td><td><%=movie.getName()!=null?movie.getName():"No name Found" %></td></tr>
<tr><td>Cast</td><td><%=TMDBUtil.getTMDBInstance().getMovieCast(movie) %></td></tr>
<tr><td>Description</td><td><%=movie.getOverview()%></td></tr>
</table>
</td>
</tr>
</table>

<%} %>

<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>