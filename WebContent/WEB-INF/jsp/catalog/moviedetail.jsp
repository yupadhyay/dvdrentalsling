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
<script language="javascript">
function pageLinkHref(url, frmName)
{
	var actionUrl = "index.php" + url;
	//alert(actionUrl);
	retrieveURL(actionUrl, frmName);
}
</script>

<script language="javascript" type="text/javascript">
	var StarbarOldImage = "";
	
	function StarbarMouseOver(imgNum,SStar,whichStar)
	{
		SStar = "2";
		if (whichStar=="-1")
		{
			StarbarOldImage = document.images["starbar_ni_mini"+imgNum].src;
			document.images["starbar_ni_mini"+imgNum].src = "images/ni_selected.gif";
		}
		else
		{
				
			StarbarOldImage = document.images["starbar"+imgNum].src;
			var ratImage = "images/stars_"+SStar+"_"+whichStar+"0.gif";
			document.images["starbar"+imgNum].src = ratImage;

		}
		
	}
	
	
	function StarbarMouseOut(imgNum,SStar,whichStar)
	{
	
		if (whichStar=="-1")
			document.images["starbar_ni_mini"+imgNum].src = StarbarOldImage;
		else
			document.images["starbar"+imgNum].src = StarbarOldImage	;	
		
	}	
	function StarbarClick(spanId,imgNum,SStar,whichStar,id,formName)
	{
		if (spanId=="")
		{
			SStar = 2;
			document.frmGameDetail.hidRating.value = whichStar;
			if (whichStar=="-1")
			{
				document.images["starbar"+imgNum].src = "images/stars_1_0.gif";
				document.images["starbar_ni_mini"+imgNum].src = "images/ni_selected.gif";
				StarbarOldImage = "images/ni_selected.gif";
			}
			else
			{
				var ratImage = "images/stars_"+SStar+"_"+whichStar+"0.gif";
				document.images["starbar"+imgNum].src = ratImage;
			//	alert(document.images["starbar"+imgNum].src);
				document.images["starbar_ni_mini"+imgNum].src = "images/ni_low.gif";
			//	alert(document.images["starbar_ni_mini"+imgNum].src);
				StarbarOldImage = ratImage;
			}
		}
		else
			ratingRetrieveURL('index.php?view=custrating&spanId='+spanId+'&id='+id+'&value='+whichStar+'&formName='+formName, formName,spanId);	
	}	
</script>

<form name="frmDetail" method="post">
<div style="margin:2px;">
	<div class="m-left-col">
		<div class="mov-des-holder">
		<div class="m-heading-txt"><%//Get the name of movie from request param %></div>
		<div class="m-blk-bg-txt"><%//Get movie Description from DB %></div> 
		</div>
	<span id="moviedetals">
	<div class="m-tab-blue">
	<div class="m-tab-nav"><a href="javascript:rentalDetail('<%//Movie ID %>','<%//Movie title %>','<%//Index %>','<%//Flag %>')">&nbsp;Simillar Movies</a>	</div>
	<div class="m-tab-nav"><img src="images/divider.gif" alt="kaku" /></div>
	<div class="m-tab-nav"><a href="javascript:rentalDetail('46','ArmyOfTwo:The40thDay(Eng)(PS3)','2','M')">&nbsp;Movie Details</a></div>
	<div class="m-tab-nav"><img src="images/divider.gif" alt="kaku" /></div>
	<div class="m-tab-nav"><a href="javascript:rentalDetail('46','ArmyOfTwo:The40thDay(Eng)(PS3)','3','M')">Reviews</a></div>
	<div class="m-tab-nav"><img src="images/divider.gif" alt="kaku" /></div>
	<div class="m-tab-nav"><a href="javascript:rentalDetail('46','ArmyOfTwo:The40thDay(Eng)(PS3)','4','M')">&nbsp;Screenshots & Videos</a></div>
	<div class="m-tab-nav"><img src="images/divider.gif" alt="kaku" /></div>
	<div class="m-tab-nav"><a href="javascript:rentalDetail('46','ArmyOfTwo:The40thDay(Eng)(PS3)','5','M')">&nbsp;Bonus Fetures From Movie</a></div>
	</div>
	<div class="m-white-box">
		<div class="rentaldetail" style="margin-top:10px;">
			<div align="justify" style="margin-bottom:5px;margin-top:5px;margin-right:10px;margin-left:10px;">
			<%//Fill this section by ajax call based on what is selected %>	
			</div>
		</div>
	</div>
	</span>
	</div>
	<div class="m-right-col">
		<div class="m-r-col-r">
		<div align="center" style="padding-top:5px;">
		<img src="<%//Get this image from database %>"  height="200" width="200"  border="0"/></div>
  		<div align="center" style="padding-top:5px;">
  			<span class="our-rating" id="spanRating0">	Our Rating
				<map name="starbar0">
					<area href='javascript:StarbarClick("spanRating0",0,2,1,<%//Movie ID %>,"frmDetail");' alt='Click if Did Not Like It'
		             onMouseOver='StarbarMouseOver(0,2,1);'
		             onMouseOut='StarbarMouseOut(0,2,1);'
		             shape='rect' coords='0,0,18,14'>
					<area href='javascript:StarbarClick("spanRating0",0,2,2,46,"frmDetail");' alt='Click if Just OK'
	                onMouseOver='StarbarMouseOver(0,2,2);'
	                onMouseOut='StarbarMouseOut(0,2,2);'
	                shape='rect' coords='19,0,37,14'>
					<area href='javascript:StarbarClick("spanRating0",0,2,3,46,"frmDetail");' alt='Click if Liked It'
	                onMouseOver='StarbarMouseOver(0,2,3);'
	                onMouseOut='StarbarMouseOut(0,2,3);'
	                shape='rect' coords='38,0,56,14'>
					<area href='javascript:StarbarClick("spanRating0",0,2,4,46,"frmDetail");' alt='Click if Really Liked It'
	                onMouseOver='StarbarMouseOver(0,2,4);'
	                onMouseOut='StarbarMouseOut(0,2,4);'
	                shape='rect' coords='57,0,75,14'>
					<area href='javascript:StarbarClick("spanRating0",0,2,5,46,"frmDetail");' alt='Click if Loved It'
	                onMouseOver='StarbarMouseOver(0,2,5);'
	                onMouseOut='StarbarMouseOut(0,2,5);'
	                shape='rect' coords='76,0,92,14'>
				</map>
				<%//Get the current rating from database. If rating is 1 rating index is 10 and so on  %>
				<img src='<%=request.getContextPath() %>/images/ratings/stars_2_<%//rating index %>.gif' alt='no of stars' width='92' height='15' border='0' name='starbar0' usemap='#starbar0' />
				<nobr>
			 	<a href='javascript:StarbarClick("spanRating0",0,2,-1,46,"frmDetail");'
	           		onMouseOver='StarbarMouseOver(0,2,-1);'
					onMouseOut='StarbarMouseOut(0,2,-1);' >
				</a>
				</nobr>
			</span>
		</div>
		<div align="center" style="padding-left:70px;padding-top:5px;" >			
			<SPAN  style="float:left;width:100px;padding-left:5px;">
			<%//Logic to check if this movie is already in queue %>
			<a onclick="return validateUserStatus()" href="index.php?view=rentqueue&formMode=2&hidChkStr=357"  class="buttoncss2"><%//Show status accordingly %></a>
			</SPAN>
		</div>
		<BR clear="all" />
		<div class="blk-txt-bold" align="center"><%//Logic to check availibility of this movie %></div>
		</div>
		<div class="m-r-col-r" style="vertical-align:top">
			<SPAN class="blue-txt">Genre:&nbsp; </SPAN>
			<SPAN class="blk-txt">	
				<a href="browse.jsp?item_type=M&cat_id=15"><%//Get the gener of movie e.g. Action or Comedy %></a>
			</SPAN>
			<br /> <br /> <SPAN class="blue-txt">Starring:&nbsp; </SPAN>
			<%//Check if Starring is not null and show starring from DB %><SPAN class="blk-txt"><%//Get Starring from database %></SPAN><%//End of if condition %>
		    <br /> <br /> <SPAN class="blue-txt">Director:&nbsp; </SPAN>
		    <%//Check if Starring is not null and show starring from DB %><SPAN class="blk-txt"><%//Get Director from database %></SPAN><%//End of if condition %>
		</div>
		<div class="m-r-col-r">
 			<SPAN class="blue-txt">Language:&nbsp; </SPAN><SPAN class="blk-txt"><%//Get Language from Database %></SPAN>
 	 		<br /> <br /> <SPAN class="blue-txt">Sound:&nbsp;</SPAN><SPAN class="blk-txt"><%//Get sound from DB %></SPAN>
 	 		<br /> <br /> <SPAN class="blue-txt">Subtitles:&nbsp;</SPAN><SPAN class="blk-txt"><%//Get sub title property from DB %></SPAN>
			<br />  <br /> <SPAN class="blue-txt">Format:&nbsp;</SPAN><SPAN class="blk-txt"><%//Get formate from DB %></SPAN>
	  		<br />	  <br /> <SPAN class="blue-txt">Run Time:&nbsp;</SPAN><SPAN class="blk-txt"><%//Get run time from database %></SPAN>
			<br /> <br /> <SPAN class="blue-txt">Release Date:&nbsp;</SPAN><SPAN class="blk-txt"><%//Get release data from databse %></SPAN>
		</div>
	</div>
<br class="clear" />
</div>
</form>

<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>