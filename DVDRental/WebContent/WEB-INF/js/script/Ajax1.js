/**
 * Ajax.js
 *
 * Collection of Scripts to allow in page communication from browser to (struts) server
 * ie can reload part instead of full page
 *
 * How to use
 * ==========
 * 1) Call retrieveURL from the relevant event on the HTML page (e.g. onclick)
 * 2) Pass the url to contact (e.g. Struts Action) and the name of the HTML form to post
 * 3) When the server responds ...
 *		 - the script loops through the response , looking for <span id="name">newContent</span>
 * 		 - each <span> tag in the *existing* document will be replaced with newContent
 *
 * NOTE: <span id="name"> is case sensitive. Name *must* follow the first quote mark and end in a quote
 *		 Everything after the first '>' mark until </span> is considered content.
 *		 Empty Sections should be in the format <span id="name"></span>
 */

//global variables
  var req;
  var which;
  var spanId;

  /**
   * Get the contents of the URL via an Ajax call
   * url - to get content from (e.g. /struts-ajax/sampleajax.do?ask=COMMAND_NAME_1) 
   * nodeToOverWrite - when callback is made
   * nameOfFormToPost - which form values will be posted up to the server as part 
   *					of the request (can be null)
   */
   function opacity(id, opacStart, opacEnd, millisec) { 
    //speed for each frame 
    var speed = Math.round(millisec / 100); 
    var timer = 0; 

    //determine the direction for the blending, if start and end are the same nothing happens 
    if(opacStart > opacEnd) { 
        for(i = opacStart; i >= opacEnd; i--) { 
            setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed)); 
            timer++; 
        } 
    } else if(opacStart < opacEnd) { 
        for(i = opacStart; i <= opacEnd; i++) 
            { 
            setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed)); 
            timer++; 
        } 
    } 
} 

  function changeOpac(opacity, id) { 
    var object = document.getElementById(id).style; 
    object.opacity = (opacity / 100); 
    object.MozOpacity = (opacity / 100); 
    object.KhtmlOpacity = (opacity / 100); 
    object.filter = "alpha(opacity=" + opacity + ")"; 
} 
  function retrieveURL(url,nameOfFormToPost) {
   // alert("hello");
  // spanid = id;
    //get the (form based) params to push up as part of the get request
/*   document.getElementById('mask').style.width='1000';	
   document.getElementById('mask').style.height='1000';
   opacity('mask','0','70',2);
*///   document.getElementById('mask').style.opacity = '50%';
	var posturl="";
	
   if(nameOfFormToPost != 'inputForm')
    posturl=url+getFormAsString(nameOfFormToPost);
   
    //Do the Ajax call
    if (window.XMLHttpRequest) { // Non-IE browsers
      req = new XMLHttpRequest();
      req.onreadystatechange = processStateChange;
      try {
      	req.open("POST", url, true); //was get
        req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		req.send(posturl); //was get
      } catch (e) {
        alert("Problem Communicating with Server\n"+e);
      }
    //  req.send(null);
    } else if (window.ActiveXObject) { // IE
      
      req = new ActiveXObject("Microsoft.XMLHTTP");
      if (req) {
         req.open("POST", url, true);
    	req.onreadystatechange = processStateChange;
	    req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		req.send(posturl);
      }
    }
  }
  function methodsretrieveURL(url,nameOfFormToPost) {
   // alert("hello");
  // spanid = id;
    //get the (form based) params to push up as part of the get request
   
    //Do the Ajax call
    if (window.XMLHttpRequest) { // Non-IE browsers
      req = new XMLHttpRequest();
      req.onreadystatechange = processStateChange;
      try {
      	req.open("GET", url, true); //was get
      } catch (e) {
        alert("Problem Communicating with Server\n"+e);
      }
      req.send(null);
    } else if (window.ActiveXObject) { // IE
      
      req = new ActiveXObject("Microsoft.XMLHTTP");
      if (req) {
        req.onreadystatechange = processStateChange;
        req.open("GET", url, true);
        req.send();
      }
	  }
	  
  }
    function processStateChange1() {
  
  	  if (req.readyState == 4) { // Complete
      if (req.status == 200) { // OK response
             alert(req.responseText)
      } else {
        alert("Problem with server response:\n " + req.statusText);
      }
    }
  }

   function ratingRetrieveURL(url,nameOfFormToPost,spanId) {
   // alert("hello");
   spanid = spanId;
    //get the (form based) params to push up as part of the get request
   if(nameOfFormToPost != 'inputForm')
    url=url+getFormAsString(nameOfFormToPost);
   
    //Do the Ajax call
    if (window.XMLHttpRequest) { // Non-IE browsers
      req = new XMLHttpRequest();
      req.onreadystatechange = processStateChange;
      try {
      	req.open("GET", url, true); //was get
      } catch (e) {
        alert("Problem Communicating with Server\n"+e);
      }
      req.send(null);
    } else if (window.ActiveXObject) { // IE
      
      req = new ActiveXObject("Microsoft.XMLHTTP");
      if (req) {
        req.onreadystatechange = processStateChange;
        req.open("GET", url, true);
        req.send();
      }
    }
  }

/*
   * Set as the callback method for when XmlHttpRequest State Changes 
   * used by retrieveUrl
  */
  function processStateChange() {
  
  	  if (req.readyState == 4) { // Complete
      if (req.status == 200) { // OK response
        
       // alert("Ajax response:"+req.responseText);
        
        //Split the text response into Span elements
        spanElements = splitTextIntoSpan(req.responseText);
        
        //Use these span elements to update the page
        replaceExistingWithNewHtml(spanElements);
		
		/* document.getElementById('mask').style.width='0';	
		   document.getElementById('mask').style.height='0';
		   document.getElementById('mask').style.opacity = 'hide';
		   */
        
      } else {
        alert("Problem with server response:\n " + req.statusText);
      }
    }
  }
 
 /**
  * gets the contents of the form as a URL encoded String
  * suitable for appending to a url
  * @param formName to encode
  * @return string with encoded form values , beings with &
  */ 
 function getFormAsString(formName){
 	
 	//Setup the return String
 	returnString ="";
 	
  	//Get the form values
	//alert("ddd="+formName);
 	formElements=document.forms[formName].elements;
 	
 	//loop through the array , building up the url
 	//in the form /strutsaction.do&name=value
 	
 	for ( var i=formElements.length-1; i>=0; --i ){
 		//we escape (encode) each value
		if (formElements[i].type=="radio")
		{
			if (formElements[i].checked==true)
			{
			returnString=returnString+"&"+escape(formElements[i].name)+"="+escape(formElements[i].value);
			}
		}
		else
		{
		returnString=returnString+"&"+escape(formElements[i].name)+"="+escape(formElements[i].value);	
		}
 	}
 	
 	//return the values
 	return returnString; 
 }
 
 /**
 * Splits the text into <span> elements 
 * @param the text to be parsed
 * @return array of <span> elements - this array can contain nulls
 */
 function splitTextIntoSpan(textToSplit){
 
  	//Split the document
 	returnElements=textToSplit.split("</span>")
 	//Process each of the elements 	
 	for ( var i=returnElements.length-1; i>=0; --i ){
 		
 		//Remove everything before the 1st span
 		spanPos = returnElements[i].indexOf("<span");		
 		
 		//if we find a match , take out everything before the span
 		if(spanPos>0){
 			subString=returnElements[i].substring(spanPos);
 			returnElements[i]=subString;
			//alert(subString);
 		
 		} 
 	}
 	
 	return returnElements;
 }
 
 /*
  * Replace html elements in the existing (ie viewable document)
  * with new elements (from the ajax requested document)
  * WHERE they have the same name AND are <span> elements
  * @param newTextElements (output of splitTextIntoSpan)
  *					in the format <span id=name>texttoupdate
  */
 function replaceExistingWithNewHtml(newTextElements){
        
 	//loop through newTextElements
 	for ( var i=newTextElements.length-1; i>=0; --i ){
 		//check that this begins with <span
 		if(newTextElements[i].indexOf("<span")>-1){
 			
 			//get the name - between the 1st and 2nd quote mark
 			startNamePos=newTextElements[i].indexOf('"')+1;
 			endNamePos=newTextElements[i].indexOf('"',startNamePos);
 			name=newTextElements[i].substring(startNamePos,endNamePos);
 			
 			//get the content - everything after the first > mark
 			startContentPos=newTextElements[i].indexOf('>')+1;
 			content=newTextElements[i].substring(startContentPos);
 			
 			//Now update the existing Document with this element
// 			alert(name);
//			alert(content);
	 			//check that this element exists in the document
				
	 			if(document.getElementById(name)){
	 			
                                   
	 				//alert("Replacing Element:"+name);
	 				document.getElementById(name).innerHTML = content;
	 			} else {
	 			//	alert("Element:"+name+"not found in existing document");
	 			}
 		}
 	}
 }

