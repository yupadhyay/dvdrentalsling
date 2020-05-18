<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="gamequeuehead" align="left">My Rental ItemQ</div>
		<form name="frmgameq" method="post">
			<input type="hidden" name="hidChkStr" value="" />
				<span id="mygameout" style="width:100%;float:left;" >
					<div align="center" style="width:100%;float:left;">
						<div class="tablemessage" align="left">RENTAL ITEMS THAT I HAVE OUT </div>
							<div style="width:100%;float:left;">
								<table cellpadding="0" cellspacing="0" border="0" width="100%">
									<tr>
										<td class="tablecolumnheader">Title</td>
										<td class="tablecolumnheader"></td>
										<td class="tablecolumnheader">Date Shipped</td>
										<td class="tablecolumnheader">Issue Date</td>
										<td class="tablecolumnheader">Days</td>
										<td class="tablecolumnheader">Return</td>
										<td class="tablecolumnheader">&nbsp;</td>
									</tr>
									<%//Logic to get queue from database %>
									<input type="hidden" name="chkReturn[]" value="" />	 
									<tr>
										<td colspan="7" align="center">&nbsp;</td>
									</tr>	
		 							<tr>
										<td colspan="7" align="center"><input type="button" name="btnReturn" value="Update" onclick="javascript:returnQueue()" />
												<!--<input type="button" name="btnRefill" value="Refill" onclick="javascript:refillAccount()" />-->
										</td>
									</tr>
								</table> 		
							</div>
					<br />
					</div>
				</span>
			

	</span>

		 						
		 						
			
</html>