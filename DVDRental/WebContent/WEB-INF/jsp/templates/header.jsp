<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script type="text/javascript">
function validate(){
	if($("#search").val()==""){
		alert("Search can not be empty");
		return
	}
	var searchTerm = $("#search").val();
	$.ajax({
		   type: "POST",
		   url: "search.jsp",
		   data: "search="+searchTerm,
		   success: function(html){
			   $("#search-result").append(html);
			   $("#main-body").hide();
		   }
	});
	
	//document.searchfrm.action="home.jsp";
	//document.searchfrm.submit();
	
}
	</script>
<%String contextPath = request.getContextPath(); %>
<div id="main_container_dvddemo">
	<div class="top_bar"><img src="<%=contextPath %>/images/header/top_logo.jpg" alt="DVD Rental System Demo" /></div>
	<ul id="MenuBar1" class="MenuBarHorizontal">
	<% if(!request.getRequestURI().contains("home.jsp")){%>
    <li><a href="<%=contextPath %>/jsp/global/home.jsp">HOME</a></li>
    <%} %>
    <li><a href="<%=contextPath %>/jsp/catalog/browse.jsp">BROWSE DVDs </a></li>
    <li><a href="<%=contextPath %>/jsp/user/rental/rentalqueue.jsp">My Rental Q</a></li>
    <%//Check to see if user is logged in then only show account info %>
    <li><a href="<%=contextPath %>/jsp/user/account/accountInfo.jsp">My Account Info</a></li>
    <li><a href="<%=contextPath %>/jsp/global/customerService.jsp">Customer Service</a></li>
	<li><a href="<%=contextPath %>/jsp/user/cart/cart.jsp">View Cart</a></li>
	<%//If user is not logged in then don't show this link %>
    <li><a href="<%=contextPath %>/jsp/user/registration/registration.jsp">Join Now</a></li>    
    <li><a  href="<%=contextPath %>/jsp/user/login/login.jsp" >Login</a></li>
    <li>
   
  </li>
  </ul>
  <div align="right">
  <form method="post" action="<%=contextPath %>/jsp/global/search.jsp">
  Search: <input type="text" name="search" id="search"/>
  <input type="submit" value="search">
  </form>
  </div>
  
  

