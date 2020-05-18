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
<form name="frmRequest" method="post">
<div align="center">
<div  class="formbox">
			

		<div align="left" class="formboxheader">Request for item</div>
					<div class="formboxcontent" align="center">

			
			<br>
			
			
			<div class="formbox-left" style="float:left;width:20%">
				<SPAN class="formfieldtext" >Title:</SPAN>
				
			</div>
			<div class="formbox-right" style="float:left;width:69%">
				<SPAN><input type="text" name="txtTitle" value="" /></SPAN>
			</div>
			
			<div class="formbox-left" style="float:left;width:20%">

				<SPAN class="formfieldtext" >Type:</SPAN>
				
			</div>
			<div class="formbox-right" style="float:left;width:69%">
				<SPAN><input type="radio" name="rdoType" value="G" checked="checked" />Game&nbsp;<input type="radio" name="rdoType" value="M" />Movie</SPAN>
			</div>

			
			
			
			<div class="formbox-left" style="width:20%">
				<SPAN class="formfieldtext" >Description:</SPAN>

			</div>
			<div class="formbox-right" style="width:79%">
				<SPAN><textarea name="txtDesc" rows="5" cols="50"></textarea></SPAN>
			</div>
			
			
			
		</div>
		<br clear="all">
	<div align="center" class="formboxfooter"><a href="javascript:submitRequest()">Send Request</a>&nbsp;|&nbsp;<a href="accountInfo.jsp">Back to My Account</a></div>	


</div>
</div>
</form>

<jsp:include page="../../templates/footer.jsp"></jsp:include>
</body>
</html>