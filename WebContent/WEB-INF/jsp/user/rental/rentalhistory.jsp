<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<span id="mygameqhistorylist" style="width:100%;float:left;">
	<div align="center" style="width:100%;float:left;">
	<div class="tablemessage" align="left">MY RENTAL HISTORY </div>
		<div style="width:100%;float:left;">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="tablecolumnheader">Title</td>
					<td class="tablecolumnheader"></td>
					<td class="tablecolumnheader">Request Date</td>
					<td class="tablecolumnheader">Date Shipped</td>
					<td class="tablecolumnheader">Received By</td>
				</tr>
				<%//For loop to get all the rental History from database %>
		 		<tr class="tablerow">
					<td class="tablerow"><%//Movie name %></td>
					<td class="tablerow"></td>
					<td class="tablerow"><%//Requested Date %></td>
					<td class="tablerow"><%//Date Shipped %></td>
					<td class="tablerow"><%//Date Recieved %></td>
				</tr>
				<%//For loop ends here %>
			</table>
		</div>
		<div style="width:100%;float:left;padding-top:10px;padding-bottom:10px;"  align="center" class="gamequeuefooter">
			<div align="left" style="float:left;padding-left:30px">	View :
				<select name="selPageHistory" onchange="javascript:pageRentalHistory()">
							<option value="25">25</option>
							<option value="50">50</option>
							<option value="100">100</option>
							<option value="2">ALL</option>
				</select>
						</div>
						<div align="left" style="padding-left:420px" >
						<table class="pagetable" border="0" cellspacing="1">
							<tr>
								<td><a href="javascript:pageLinkHref('?page1=1&view=rentqueue', 'frmgameq')" class="pagelink_first">First</a> </td>
								<td class="pagetable_activecell">&nbsp;1&nbsp;</td>
								<td><a href="javascript:pageLinkHref('?page1=1&view=rentqueue', 'frmgameq')" class="pagelink_last">Last</a> </td>
		
							</tr>
						</table>
						</div>
		</div>
	</div>
</span>
</html>