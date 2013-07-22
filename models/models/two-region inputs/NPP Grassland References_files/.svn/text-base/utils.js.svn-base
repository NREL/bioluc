//for mercury search system - change link here
 var M3Global = "http://mercury.ornl.gov/ornldaac/";
 document.writeln("<a id='nasa-link' href='http://www.nasa.gov' Alt='NASA' title='NASA' target='_blank' ></a>"); 
 			function M3Link(data){ 			
 				window.location = M3Global+data; 				
 		}    



if(typeof(checkSearchForm)=='undefined'){
  function checkSearchForm(){
    var f=document.searchForm;
    f.submit();
    return;
  }
}




function getValue(){
var searchTerm = document.getElementById("term1").value;
var term6Val = document.searchform.term6.value;

//if(term6Val=="all"){
//var term6Val = "daacweb&term6=daac";
//}
if(searchTerm!="" & term6Val!=""){
  document.searchform.action="http://mercury.ornl.gov/ornldaac/send/query?term1="+searchTerm+"&term1attribute=fullText&term6attribute=datasource&term6="+term6Val;  
}
else if(term6Val==""){
	document.searchform.action="http://mercury.ornl.gov/ornldaac/send/query?term1="+searchTerm+"&term1attribute=fullText&term6attribute=datasource&term6=daac&term6=daacweb"
}
else{
	alert("No query has been entered");
	}
}
var whitespace = " \t\n\r";
// TRUE if field is empty or blanks
function isEmpty(s){
  if((s === null) || (s.length === 0)){ return true; }
  var i;
  for(i=0;i<s.length;i++){
   var c = s.charAt(i);
   if(whitespace.indexOf(c) == -1){ return false; }
  }
  return true;
} 
// ignore the enter (CR) key
function ignoreEnter(e){
  if(!e){ e=window.event; }
  var c=(navigator.appName=='Netscape')?e.which:e.keyCode;
  if(c==13){ 
  	return false; }
  return true;
} 
// open new parent even if you are 2 windows up
// odd logic to handle both IE and NS type systems
function newParent(w){
  try {
    window.parent.opener.location=w;
    window.parent.close();
  } catch(E) {
    try {
      window.opener.location=w;
      window.close();
    } catch(E) {
      try {
	window.parent.location=w;
      } catch(E){ 
	try {
	  window.location=w;
	} catch(E) {;}
      }
    }
  }
}

// medium forms/info popup
var newwin='';
function newWindow(w){
  if(newwin && !newwin.closed && newwin.location){ newwin.location.href=w; }
  else{
    newwin=window.open(w,"New_Window",
      "height=500,width=650,resizable,scrollbars,toolbar");
    if(!newwin.opener) newwin.opener=self;
  }
  if(window.focus){ newwin.focus(); }
}

// cart popup
var cartwin='';
function cartWindow(w){
  if(cartwin && !cartwin.closed && cartwin.location){ cartwin.location.href=w; }
  else{
    var cartwin=window.open(w,"Cart_Window",
      "height=600,width=900,resizable,scrollbars,menubar,toolbar");
    if(!artwin.opener) cartwin.opener=self;
  }
  if(window.focus){ cartwin.focus(); }
}

// large article popup
var artwin='';
function articleWindow(w){
  if(artwin && !artwin.closed && artwin.location){ artwin.location.href=w; }
  else{
    var artwin=window.open(w,"Article_Window",
      "height=700,width=760,resizable,scrollbars,menubar,toolbar");
    if(!artwin.opener) artwin.opener=self;
  }
  if(window.focus){ artwin.focus(); }
}

// small description popup
var deswin='';
function descWindow(id){
  var w='/cgi-bin/dataset_desc.pl?d='+id;
  if(deswin && !deswin.closed && deswin.location){ deswin.location.href=w; }
  else{
    deswin=window.open(w,"Desc_Window",
      "height=300,width=550,resizable,scrollbars");
    if(!deswin.opener) deswin.opener=self;
  }
  if(window.focus){ deswin.focus(); }
}

// map server popup
function mapsWindow(w){
  var win=window.open(w,"Maps_Window",
    "height=850,width=1065,resizable,scrollbars,toolbar,menubar"
  );
  win.window.focus();
}
// small help popup
function help(w){
  w="/helps/"+w;
  if(w.indexOf('\.shtml')<0){ w+='.shtml'; }
  var win=window.open(w,"Help_Window",
    "height=350,width=550,resizable,scrollbars"
  );
  win.window.focus();
}

// auto select form pulldowns
function select_url(l){
  if(l == "") return false;
  location=l;
  return false;
}

// set cookie
function setCookie(k,v) {
  document.cookie=k+'='+v+'; PATH=/;';
  return;
}
// remove cookie
function remCookie(k) {
  document.cookie=k+'=; PATH=/; EXPIRES=Thu. 01-Jan-1970 00:00:01 GMT';
  return;
}
// rapid signout
function signOut() {
  remCookie('ORNLDAACUSER');
  remCookie('ORNLDAACCONNECT');
  remCookie('ORNLDAACSHIPTO');
  remCookie('ORNLDAACALTNAV');
  window.location.reload();
}

/* ================================================================
This copyright notice must be kept untouched in the stylesheet at
all times.

The original version of this script and the associated (x)html
is available at http://www.stunicholls.com/menu/pro_drop_1.html
Copyright (c) 2005-2007 Stu Nicholls. All rights reserved.
This script and the associated (x)html may be modified in any
way to fit your requirements.
=================================================================== */
stuHover = function() {
  var cssRule;
  var newSelector;
  for (var i = 0; i < document.styleSheets.length; i++)
    for (var x = 0; x < document.styleSheets[i].rules.length ; x++)
      {
      cssRule = document.styleSheets[i].rules[x];
      if (cssRule.selectorText.indexOf("LI:hover") != -1)
      {
        newSelector = cssRule.selectorText.replace(/LI:hover/gi, "LI.iehover");
        document.styleSheets[i].addRule(newSelector , cssRule.style.cssText);
      }
    }
  var getElm = document.getElementById("nav").getElementsByTagName("LI");
  for (var i=0; i<getElm.length; i++) {
    getElm[i].onmouseover=function() {
      this.className+=" iehover";
    }
    getElm[i].onmouseout=function() {
      this.className=this.className.replace(new RegExp(" iehover\\b"), "");
    }
  }
}
if (window.attachEvent) window.attachEvent("onload", stuHover);
