<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../../templates/global.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../../templates/header.jsp"></jsp:include>
<jsp:include page="../../templates/leftNav.jsp"></jsp:include>
<form name="frmReportProb" method="post" action="">
<div align="center">
<div  class="page">
	<div align="left" class="pageheader">Report Problem</div>
	<div class="pagecontent" align="center" style="margin-left:10px">

		<span id="spanMsg" class="errMsgType1">
			</span>

			<div align="left" class="pagefieldtext">1. What is the problem?</div>
		<div align="left" style="margin-left:25px">
			<div class="formbox-left" style="float:left;width:20%">
				<SPAN class="formfieldtext" >Problem Subject :</SPAN>
				
			</div>

			<div class="formbox-right" style="float:left;width:69%">
				<SPAN><input type="text" name="txtProblem" value="" size="30" /></SPAN>
			</div>
			<div class="formbox-left" style="float:left;width:20%">
				<SPAN class="formfieldtext" >Description :</SPAN>
				
			</div>
			<div class="formbox-right" style="float:left;width:69%">
				<SPAN><textarea name="txtDescription" rows="6" cols="50"></textarea></SPAN>

			</div>

		</div>
		<br />
		<%//Logic to see which all items are out %>
		<div align="left" class="pagefieldtext"><br clear="all" />
		2. Which of these Rental Items that you currently have out has this problem?</div>
		<div align="left" style="margin-left:25px">
		<%//For loop to get all the items %>
			<ul>
				<li style="list-style:none"><input type="radio" name="rdoRentedId" value="10"><%//Name of movie %></li>
				<input type="hidden" name="rdoRentedId" value="" />
			</ul>
		<%//End of for loop %>
		</div>
		</div>
	<br clear="all">
		<div align="center" class="formboxfooter">
			<a href="javascript:reportProblem()">Report This Problem</a>&nbsp;|&nbsp;			
			<a href="accountInfo.jsp">Back to My Account</a></div>

</div>
</div>  

</form>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>