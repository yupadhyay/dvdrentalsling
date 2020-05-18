<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.SortedSet"%>
<%@page import="java.util.TreeSet"%>
<%@page import="com.dvdrental.util.QueryUtil"%>
<%@page import="com.dvdrental.movie.MovieLanguage"%>
<%@page import="java.util.Collection"%>
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
<script type="text/javascript">

$(document).ready(function() {
    $("select[multiple]").asmSelect({
        sortable: true,
        animate: true,
        addItemTarget: 'top',
        highlight:true
        
    });
});
</script>


</head>
<body>
<%

if(request.getParameter("language")!=null){
	String[] languages = request.getParameterValues("language");
	for(String language:languages)
		out.println("Langusge" +language);
}

%>
<form action="test.jsp" method="post">
<div class="formbox-left" style="width:49%">
<SPAN class="formfieldtext" >
Language:&nbsp;
</SPAN>
</div>
<div class="formbox-right" style="width:50%">
<SPAN>
<select multiple="multiple" class="language" name="language" id="language" title="Please select Language">
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
<input type="submit" value="submit">
</form>
</body>
</html>