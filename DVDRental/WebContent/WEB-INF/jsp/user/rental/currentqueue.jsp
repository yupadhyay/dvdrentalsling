<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div align="right"><strong>*Drag and Drop Items to change Priority.</strong>t</div>
			<input type="hidden" name="chkchangepro" value="" />
			<div align="center" style="width:100%;float:left;">
			<div class="tablemessage" align="left"><%//Get the Queu Name %></div>
			<div style="width:100%;float:left;">
				<div cellpadding="0" cellspacing="0" border="0" width="100%">
					<div class="tablecolumnheader" style="float:left;width:10%">Rank</div>
					<div class="tablecolumnheader" style="float:left;width:45%">Title</div>
							<!--<div class="tablecolumnheader" style="float:left;width:20%"></div>
							-->
					<div class="tablecolumnheader" style="float:left;width:20%">Availibility</div>
					<div class="tablecolumnheader" style="float:left;width:17%">Remove</div>
				</div>
				<%//Write logic to get value from the databse this below code logic will come in a loop %>
				<%//for{all movie in queue do following %>
			<div id="sortable">	
		 						<input type="hidden" name="minpriority" value="0" />
		 						<div id="<%//generate Random ID {in a formate Digit_Digit to get position %>" class="tablerow" style="float:left;width:100%">
		 						<div class="tablerow" style="float:left;width:10%"><a href="javascript:move(<%//Get same position in formate Digit-X,Digit-Y %>)"><img src="images/up.gif" border="0" alt="Move Up" title="Move Up"></a>&nbsp;
		 						<!--<input type="text" name="txtPriority_351"  id="txtPriority_351" value="0" size="3" />-->&nbsp;
		 						<a href="javascript:move(<%//Get Position Digit-X-1,Digit-Y %>)"><img src="images/down.gif" border="0" alt="Move Down" title="Move Down"></a></div>
						<div class="tablerow"  style="float:left;width:48%"><%//Get movie name from database %></div>
						<!--<div class="tablerow"  style="float:left;width:21%"></div>-->
						
						<div class="tablerow"  style="float:left;width:22%">High</div>
						
						<div class="tablerow"  style="float:left;width:20%">
						<input align="middle" type="checkbox" name="rentqueue_id[]" value="<%//Digit-Y %>" style="border:none"></div>
				
					</div>
		 		<input type="hidden" name="deliver_rentqueue_id[]" value="" />	
				<input type="hidden" name="deliver_rentqueue_title[]" value="" />	
				<input type="hidden" name="rentqueue_id[]" value="" />	
				<input type="hidden" name="hidCountRentalQueue" value="<%//Number of item in queue %>" />


<div style="width:100%;float:left;padding-top:10px;padding-bottom:10px;"  align="center" class="gamequeuefooter">
				<div align="left" style="float:left;padding-left:30px">&nbsp;	View :
				<select name="selQueueViewPage" onchange="javascript:pageRentalQueue()">
					<option value="25"  >25</option>
					<option value="50"  >50</option>
					<option value="100"   >100</option>
					<option value="3"   >ALL</option>
				</select>
				</div>
				<div align="center" style="float:left;padding-left:300px">
				<table class="pagetable" border="0" cellspacing="1"><tr>
				<td><a href="javascript:pageLinkHref('?page=1&view=rentqueue', 'frmgameq')" class="pagelink_first">First</a> </td>
				<td class="pagetable_activecell">&nbsp;1&nbsp;</td>
				<td><a href="javascript:pageLinkHref('?page=1&view=rentqueue', 'frmgameq')" class="pagelink_last">Last</a> </td>
				</tr></table>
				</div>
				<div align="right"  >
				<input type="button" name="btnRemove" value="Remove" onclick="javascript:remove()" />
				</div>
</div>
			
													
		 
			</div>
		</div>
		</div>
</html>