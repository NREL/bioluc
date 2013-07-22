//Generating Pop-up Print Preview pagefunction

function getPrint_FS1_FBS(print_area, css_filename)
{
    //Creating new pagevar
    pp = window.open();
    pp.document.open()
    //Adding HTML opening tag with <HEAD> … </HEAD> portion
    pp.document.writeln('<HTML><HEAD><title>Print Preview</title>')
    //pp.document.writeln('<LINK href=/Design/Themes/Faostat/' + css_filename + ' type="text/css" rel="stylesheet">')
    pp.document.writeln('<LINK href=/Design/Themes/Faostat/print_FS1_FBS.css type="text/css" rel="stylesheet">')
     
     pp.document.writeln('     <style>');
     
     pp.document.writeln('.show');
     pp.document.writeln('  {');
     pp.document.writeln(' display:block;');
     pp.document.writeln(' position:absolute;');
     pp.document.writeln(' }');
     
     pp.document.writeln('.hide');
     pp.document.writeln(' {');
     pp.document.writeln('  display:none;');
     pp.document.writeln(' }');
     
     pp.document.writeln(' </style>');
     pp.document.writeln(' <script>');
     
     pp.document.writeln(' function showdiv(id)');
     pp.document.writeln('{document.getElementById(id).className="show";');
     pp.document.writeln(' document.getElementById(id).top=event.y;');
     pp.document.writeln(' document.getElementById(id).left=event.x;');
     pp.document.writeln(' }');
     
    pp.document.writeln('  function hidediv(id)');
    pp.document.writeln('  {');
    pp.document.writeln('  document.getElementById(id).className="hide";');
    pp.document.writeln('  }');
     
     pp.document.writeln(' </script>');

    
    
    pp.document.writeln('<LINK href=/Design/Themes/Faostat/print_FS1_FBS.css type="text/css" rel="stylesheet" media="print">')
    pp.document.writeln('<base target="_self"></HEAD>')
    //Adding Body Tag
    pp.document.writeln('<body MS_POSITIONING="GridLayout" bottomMargin="0"');
    pp.document.writeln(' leftMargin="0" topMargin="0" rightMargin="0">');
    //Adding form Tag
    
    pp.document.writeln('<form method="post">');
    //Creating two buttons Print and Close within a HTML table
    pp.document.writeln('<TABLE width=100%><TR><TD></TD></TR><TR><TD align=center>');
    pp.document.writeln('<INPUT ID="PRINT"  type="button" value="Print" ');
    pp.document.writeln('onclick="location.reload(true); javascript:hidediv(\'textprint\'); javascript:window.print();" ');
    pp.document.writeln('onMouseOver="javascript:showdiv(\'textprint\')"' );
    pp.document.writeln('onMouseOut="javascript:hidediv(\'textprint\')" >');
    pp.document.writeln('<INPUT ID="CLOSE" type="button" value="Close" onclick="window.close();">');
    pp.document.writeln('</TD></TR><TR><TD align=center><div id=textprint class=hide><FONT color="red">For a better print, choose \"landscape\"<\BR> and reduce the margins in the Page setup</FONT></div></TD></TR></TABLE>');
    //Writing print area of the calling page
    pp.document.writeln(document.getElementById(print_area).innerHTML.replace(/\"javascript.*\"/g,"\"javascript:void(0)\""));
    //Ending Tag of </form>, </body> and </HTML>
    pp.document.writeln('</form></body></HTML>');
    pp.document.close()
    if (window.focus) {pp.focus()}
    
    return false;   //always return false
}

//Generating Pop-up Print Preview pagefunction
function getPrint(print_area, css_filename)
{
    //Creating new pagevar
    pp = window.open();
    pp.document.open()
    //Adding HTML opening tag with <HEAD> … </HEAD> portion
    pp.document.writeln('<HTML><HEAD><title>Print Preview</title>')
    //pp.document.writeln('<LINK href=/Design/Themes/Faostat/' + css_filename + ' type="text/css" rel="stylesheet">')
    pp.document.writeln('<LINK href=/Design/Themes/Faostat/Mod_Print.css type="text/css" rel="stylesheet">')
    pp.document.writeln('<LINK href=/Design/Themes/Faostat/Mod_Print.css type="text/css" rel="stylesheet" media="print">')
    pp.document.writeln('<base target="_self"></HEAD>')
    //Adding Body Tag
    pp.document.writeln('<body MS_POSITIONING="GridLayout" bottomMargin="0"');
    pp.document.writeln(' leftMargin="0" topMargin="0" rightMargin="0">');
    //Adding form Tag
    pp.document.writeln('<form method="post">');
    //Creating two buttons Print and Close within a HTML table
    pp.document.writeln('<TABLE width=70%><TR><TD></TD></TR><TR><TD align=right>');
    pp.document.writeln('<INPUT ID="PRINT" type="button" value="Print" ');
    pp.document.writeln('onclick="location.reload(true);javascript:window.print();">');
    pp.document.writeln('<INPUT ID="CLOSE" type="button" value="Close" onclick="window.close();">');
    pp.document.writeln('</TD></TR><TR><TD></TD></TR></TABLE>');
    //Writing print area of the calling page
    pp.document.writeln(document.getElementById(print_area).innerHTML.replace(/\"javascript.*\"/g,"\"javascript:void(0)\""));
    //Ending Tag of </form>, </body> and </HTML>
    pp.document.writeln('</form></body></HTML>');
    pp.document.close()
    if (window.focus) {pp.focus()}
    
    return false;   //always return false
}

//Generating Pop-up Print Preview for images
function getPrintPage(image_name, title_name, features)
{
    //Creating new pagevar
    pp = window.open("", "printPreview", features);
    pp.document.open()
    //Adding HTML opening tag with <HEAD> … </HEAD> portion
    pp.document.writeln('<HTML><HEAD><title>'+title_name+'</title>')
    //pp.document.writeln('<LINK href=/Design/Themes/Faostat/Mod_Print.css type="text/css" rel="stylesheet" media="print">')
    pp.document.writeln('<base target="_self"></HEAD>')
    //Adding Body Tag
    pp.document.writeln('<body bottomMargin="0"');
    pp.document.writeln(' leftMargin="0" topMargin="0" rightMargin="0">');
    //Adding form Tag
    pp.document.writeln('<form method="post">');
    //Creating two buttons Print and Close within a HTML table
    pp.document.writeln('<TABLE width=100%><TR><TH style="font-size:14px;font-family:Verdana;color:#1445A8;">'+title_name+'</TH></TR><TR><TD align="center"><IMG SRC="/Portals/_Faostat/images/images/'+image_name+'"></TD></TR><TR><TD align=center>');
    pp.document.writeln('<INPUT ID="PRINT" type="button" value="Print" ');
    pp.document.writeln('onclick="location.reload(true);javascript:window.print();">');
    pp.document.writeln('<INPUT ID="CLOSE" type="button" value="Close" onclick="window.close();">');
    pp.document.writeln('</TD></TR></TABLE>');
    //Ending Tag of </form>, </body> and </HTML>
    pp.document.writeln('</form></body></HTML>');
    pp.document.close()
    if (window.focus) {pp.focus()}
    
    return false;   //always return false
}

//Generating Pop-up Preview for images
function getNewPage(image_name, x, y)
{
    //Creating new pagevar
    pp = window.open("", "imagePreview", "toolbar=no, scrollbars=yes, resizable=no, height=" + y + ",width=" + x, false);
    pp.document.open()
    //Adding HTML opening tag with <HEAD> … </HEAD> portion
    pp.document.writeln('<HTML><HEAD><title></title></HEAD>')
    //Adding Body Tag
    pp.document.writeln('<body bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0">');
    pp.document.writeln('<CENTER><IMG SRC="/Portals/_Faostat/images/images/'+image_name+'"></CENTER>');
    pp.document.writeln('</body></HTML>');
    pp.document.close()
    if (window.focus) {pp.focus()}
}

function getMouseXY(e) // works on IE6,FF,Moz,Opera7
{ 
  if (!e) e = window.event; // works on IE, but not NS (we rely on NS passing us the event)

  if (e)
  { 
    if (e.pageX || e.pageY)
    { // this doesn't work on IE6!! (works on FF,Moz,Opera7)
      x = e.pageX;
      y = e.pageY;
    }
    else if (e.clientX || e.clientY)
    { // works on IE6,FF,Moz,Opera7
      // Note: I am adding together both the "body" and "documentElement" scroll positions
      //       this lets me cover for the quirks that happen based on the "doctype" of the html page.
      //         (example: IE6 in compatibility mode or strict)
      //       Based on the different ways that IE,FF,Moz,Opera use these ScrollValues for body and documentElement
      //       it looks like they will fill EITHER ONE SCROLL VALUE OR THE OTHER, NOT BOTH 
      //         (from info at http://www.quirksmode.org/js/doctypes.html)
      x = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft;
      y = e.clientY + document.body.scrollTop + document.documentElement.scrollTop;
    }
  }
}

function ShowTooltip(title,item,group)
{
    document.getElementById('idTitle').innerHTML ='<table style=\"width:99%;\"><tr><td><FONT COLOR=\"#FFFFFF\">' + title + '</FONT></td><td style=\"text-align:right;\"><img src=\"/Portals/_Faostat/images/Toolbar/dcr_701804577.gif\" onclick=\"HideTooltip();\"/></td></tr></table>';
  
	document.getElementById('idItem').innerHTML = item;
    
	document.getElementById('idGroup').innerHTML = group;
	if (item!='' || group!='')
	{
    getMouseXY(window.event); // NS is passing (event), while IE is passing (null)
    document.getElementById('ItemDescription').style.display = 'block';
    document.getElementById('ItemDescription').style.left = (document.body.scrollLeft +x).toString(10) + 'px';
    document.getElementById('ItemDescription').style.top = (y).toString(10) + 'px';
	}
	else
	{
    document.getElementById('ItemDescription').style.display = 'none';
	}
	
}

function HideTooltip()
{
    document.getElementById('ItemDescription').style.display = 'none';
}

//Text Blink Effect for IE
function doBlink() {
	var blink = document.all.tags("BLINK")
	for (var i=0; i<blink.length; i++)
		blink[i].style.visibility = blink[i].style.visibility == "" ? "hidden" : "" 
}

function startBlink() {
	if (document.all)
		setInterval("doBlink()",500)
}
window.onload = startBlink;


//Metadata

function showMeta(nam, i, j, k)
{  
	nam=nam.replace(/'/g,"\'"); 
	nam=nam.replace(/&/g,"%26"); 
    hidemenu();
    dt = document.getElementsByTagName('body');
    dt[0].style.cursor="wait";
    var req = null; 
    if(window.XMLHttpRequest)
    {
	    req = new XMLHttpRequest();
	}
    else if (window.ActiveXObject)
    {
	    req  = new ActiveXObject('Microsoft.XMLHTTP'); 
    }

    req.onreadystatechange = function()
    { 
	    if(req.readyState == 4)
	    {
			dt[0].style.cursor="default";
		    if(req.status == 200)
		    {
				if (k==1)
				{
		         hidemenu(); 
                 document.getElementById("Meta").className= "visible";   
                 document.getElementById("FSMain").className= "invisible";
                 document.getElementById("fixe").className= "invisible";
		         document.getElementById('Meta').innerHTML=req.responseText;
				 self.location.hash="cible";
				 }
				 else
				 {
			         hidemenu();
	                 document.getElementById("Meta").className= "invisible";   
	                 document.getElementById("FSMain").className= "invisible";
			         document.getElementById("fixe").innerHTML=req.responseText;
	                 document.getElementById("fixe").className= "visible";
	 				 self.location.hash="cible";
				 }
			}	
		    else	
		    {
			    alert("Error: returned status code " + req.status + " " + req.statusText);
		    }	
	    } 
    }; 
    req.open("POST", "/DesktopModules/Faostat/MetaData/showMeta.aspx", true); 
    req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
	if (i!=3)
	{
		req.send("typ="+i+"&nam="+nam+"&codagg="+j+"&selectedLanguage="+selectedLanguage+"&modDatabaseName="+modDatabaseName+"&modAreaTableName="+modAreaTableName+"&modItemTableName="+modItemTableName+"&modChangeItemClassAllowed="+modChangeItemClassAllowed+"&modDomainName="+modDomainName); 
	}
	else
	{
		//alert("typ=1&nam="+nam+"&codagg="+j+"&selectedLanguage="+selectedLanguage+"&modDatabaseName="+modDatabaseName+"&modAreaTableName="+modPartnerTableName+"&modItemTableName="+modItemTableName+"&modChangeItemClassAllowed="+modChangeItemClassAllowed+"&modDomainName="+modDomainName);
		req.send("typ=1&nam="+nam+"&codagg="+j+"&selectedLanguage="+selectedLanguage+"&modDatabaseName="+modDatabaseName+"&modAreaTableName="+modPartnerTableName+"&modItemTableName="+modItemTableName+"&modChangeItemClassAllowed="+modChangeItemClassAllowed+"&modDomainName="+modDomainName); 		
	}
}

function doBack(i)
{
    if (i==1)
    {
		if (document.getElementById("Meta").className== "visible")
		{
			document.getElementById('Meta').innerHTML="";
	        document.getElementById("FSMain").className= "visible";
			document.getElementById("Meta").className= "invisible";
			document.getElementById("fixe").className= "invisible";
			self.location.hash="cible";
			
		}
		else
		{
			document.getElementById('fixe').innerHTML="";
	        document.getElementById("Meta").className= "visible";
			document.getElementById("fixe").className= "invisible";
			document.getElementById("FSMain").className= "invisible";
			self.location.hash="cible";
		}
    }
    else
    {
        var divElements = document.getElementById('fixe').getElementsByTagName('div');
        for(var i=0; i<divElements.length; i++)
        {
            divElements[i].className="invisible";
        }
        document.getElementById("fixe").className= "invisible";
        document.getElementById('content2').className="visible";
    }
}

 function showmenu(evt, txt) {
	text=txt;
	var tooltip, tipcss;
	tooltip = document.getElementById('tipDiv');
	tipcss = tooltip.style;
	tipcss.visibility='visible';
	if (window.ActiveXObject)
	{
		tipcss.left= evt.x +  document.body.scrollLeft - 10;
		tipcss.top=evt.y + document.body.scrollTop  - 10;
	}		
    else    
	{
		tipcss.left= evt.pageX  +  document.body.scrollLeft - 10;
		tipcss.top= evt.pageY + document.body.scrollTop - 10;
	}
	tipOn = true;
	tooltip.innerHTML =text;
	
} 
function hidemenu() {
	var tooltip, tipcss;
	tooltip = document.getElementById('tipDiv');
	tipcss = tooltip.style;
	tipcss.visibility='hidden';
	tipcss.left='';
	tipcss.top='';
	tipOn = false;
}


//Pivot 
function changePivot(numeroMenu,change)
{
	//alert('numeroMenu' + numeroMenu);
	//alert('change' + change);
    var monOldVal=document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].value;
	//alert('monOldVal' + monOldVal);
    if (monOldVal==2){monOldindex=0;}
	    else if (monOldVal==3){monOldindex=1;}
	    else if (monOldVal==5){monOldindex=2;}
	    else if (monOldVal==7){monOldindex=3;}

    contrainte=new Array();
    contrainte[0]=1;
    contrainte[1]=1;
    contrainte[2]=1;
    contrainte[3]=1;
    for (i=0;i<numeroMenu;i++)
    {
        var maVal=document.getElementById('PIVOT').getElementsByTagName('select')[i].value;
        if (maVal==2){index=0;}
	        else if (maVal==3){index=1;}
	        else if (maVal==5){index=2;}
	        else if (maVal==7){index=3;}
        contrainte[index]=0;
    }
    c=-1;
    cnt=1;
    while(c==-1 && cnt<3)
    {
        cnt++;
        for (i=0;i<4;i++)
        {
            if (contrainte[i]==1)
                {
                    if (c==-1 && change==0){c=i;}
                    else if(monOldindex==i && change==1){c=i;}
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].disabled=false;
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].style.color="black";
                }
            else
                {
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].disabled=true;             
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].style.color="#ececec";
                }
         }
         
         if(c==-1)
            {
                change=0;
            }
     }
    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[c].selected=true;
    if(numeroMenu<3)
    {
        changePivot(numeroMenu+1,0);
    }  
    testPivot();
}



function changePivotTP(numeroMenu,change)
{
    var monOldVal=document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].value;
    if (monOldVal==2){monOldindex=0;}
	    else if (monOldVal==3){monOldindex=1;}
	    else if (monOldVal==5){monOldindex=2;}
	    else if (monOldVal==7){monOldindex=3;}
	    else if (monOldVal==11){monOldindex=4;}
    contrainte=new Array();
    contrainte[0]=1;
    contrainte[1]=1;
    contrainte[2]=1;
    contrainte[3]=1;
    contrainte[4]=1;
    for (i=0;i<numeroMenu;i++)
    {
        var maVal=document.getElementById('PIVOT').getElementsByTagName('select')[i].value;
        if (maVal==2){index=0;}
	        else if (maVal==3){index=1;}
	        else if (maVal==5){index=2;}
	        else if (maVal==7){index=3;}
	        else if (maVal==11){index=4;}
        contrainte[index]=0;
    }
	
    c=-1;
    cnt=1;
    while(c==-1 && cnt<4)
    {
        cnt++;
        for (i=0;i<5;i++)
        {
            if (contrainte[i]==1)
                {
                    if (c==-1 && change==0){c=i;}
                    else if(monOldindex==i && change==1){c=i;}
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].disabled=false;
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].style.color="black";
                }
            else
                {
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].disabled=true;             
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].style.color="#ececec";
                }
         }
         
         if(c==-1)
            {
                change=0;
            }
     }
    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[c].selected=true;
    if(numeroMenu<1)
    {
        changePivotTP(numeroMenu+1,0);
    }  
    testPivotTP();
}


function changePivotTM(numeroMenu,change)
{
    var monOldVal=document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].value;
    if (monOldVal==2){monOldindex=0;}
	    else if (monOldVal==3){monOldindex=1;}
	    else if (monOldVal==5){monOldindex=2;}
	    else if (monOldVal==7){monOldindex=3;}
	    else if (monOldVal==11){monOldindex=4;}

    contrainte=new Array();
    contrainte[0]=1;
    contrainte[1]=1;
    contrainte[2]=1;
    for (i=0;i<numeroMenu;i++)
    {
        var maVal=document.getElementById('PIVOT').getElementsByTagName('select')[i].value;
        if (maVal==2){index=0;}
	        else if (maVal==3){index=1;}
	        else if (maVal==5){index=2;}
	        else if (maVal==7){index=3;}
	        else if (maVal==11){index=4;}
        contrainte[index]=0;
    }
    c=-1;
    cnt=1;
    while(c==-1 && cnt<2)
    {
        cnt++;
        for (i=0;i<3;i++)
        {
            if (contrainte[i]==1)
                {
                    if (c==-1 && change==0){c=i;}
                    else if(monOldindex==i && change==1){c=i;}
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].disabled=false;
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].style.color="black";
                }
            else
                {
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].disabled=true;             
                    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[i].style.color="#ececec";
                }
         }
         
         if(c==-1)
            {
                change=0;
            }
     }
    document.getElementById('PIVOT').getElementsByTagName('select')[numeroMenu].options[c].selected=true;
    if(numeroMenu<2)
    {
        changePivot(numeroMenu+1,0);
    }  
    testPivot();
}

function testPivotTP()
{
    for (i=0;i<2;i++)
    {
        for (j=0;j<4;j++)
        {
             if (document.getElementById('PIVOT').getElementsByTagName('select')[i].options[j].selected)
             {
                if( document.getElementById('PIVOT').getElementsByTagName('select')[i].options[j].style.color=="#ececec")
                {
                    document.getElementById('PIVOT').getElementsByTagName('select')[i].options[j].style.color="black";
                }
                for (k=i+1;k<2;k++)
                {
                    document.getElementById('PIVOT').getElementsByTagName('select')[k].options[j].style.color="#ececec";
                }
            }
        }
    }
}

function testPivot()
{
    for (i=0;i<4;i++)
    {
        for (j=0;j<4;j++)
        {
             if (document.getElementById('PIVOT').getElementsByTagName('select')[i].options[j].selected)
             {
                if( document.getElementById('PIVOT').getElementsByTagName('select')[i].options[j].style.color=="#ececec")
                {
                    document.getElementById('PIVOT').getElementsByTagName('select')[i].options[j].style.color="black";
                }
                for (k=i+1;k<4;k++)
                {
                    document.getElementById('PIVOT').getElementsByTagName('select')[k].options[j].style.color="#ececec";
                }
            }
        }
    }
}

//Area Group Type JV Version
function cleanASP(toThis)
	{
	    tr=toThis.replace(/(<form.*>)/g," "); 
	    tr=tr.replace(/(<\/form.*>)/g," "); 
        tr=tr.replace(/(<!DOCTYPE htm.*>)/g," "); 
        tr=tr.replace(/(<html.*>)/g," "); 
        tr=tr.replace(/(<\/html.*>)/g," "); 
        tr=tr.replace(/(<input type=\"hidden.*>)/g," "); 
        tr=tr.replace(/(<head.*>)/g," "); 
        tr=tr.replace(/(<\/head>)/g," "); 
        tr=tr.replace(/(<body.*>)/g," "); 
        tr=tr.replace(/(<\/body>)/g," "); 
        tr=tr.replace(/(<title .*>)/g," "); 
        tr=tr.replace(/(<\/title>)/g," "); 

	    return tr;
	}
	
function afficheAreaGroupType(toThis) 
  {
    tr=cleanASP(toThis);
    document.getElementById('ajaxcountries').innerHTML = tr;
  }
  function ChangeCountriesTypes()
{
        var group=document.getElementById('FSAreaGpType').value;
        var req = null; 
		if(window.XMLHttpRequest)
		{
			req = new XMLHttpRequest(); 
			}
		else if (window.ActiveXObject)
		{
			req  = new ActiveXObject('Microsoft.XMLHTTP'); 
        }
        
		req.onreadystatechange = function()
		{ 
			if(req.readyState == 4)
			{
				if(req.status == 200)
				{
				afficheAreaGroupType(req.responseText);
				}	
				else	
				{
					alert("Error: returned status code " + req.status + " " + req.statusText);
				}	
			} 
		}; 
		//alert("selectedLanguage="+selectedLanguage+"&group="+group+"&modDatabaseName="+modDatabaseName+"&modAreaTableName="+modAreaTableName+"&selectedcountries="+selectedcountries); 

		req.open("POST", "/DesktopModules/Faostat/StatisticalDataMulti/changeAreaClassification.aspx", true); 
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
	    req.send("selectedLanguage="+selectedLanguage+"&group="+group+"&modDatabaseName="+modDatabaseName+"&modAreaTableName="+modAreaTableName+"&selectedcountries="+selectedcountries); 

}

//TradePartnerNew
function TPshow()
{
	var req = null; 
	if(window.XMLHttpRequest)
		{
			req = new XMLHttpRequest();
			 
		} 
		else 
		{		
			if (window.ActiveXObject)
            {
				req  = new ActiveXObject('Msxml2.XMLHTTP.5.0');
            }
		}
	
	req.onreadystatechange = function()
	{ 
		if(req.readyState == 4)
		{
			if(req.status == 200)
			{	
				TPdisplayresult(req.responseText);
			}	
			else	
			{
				alert("Error: returned status code " + req.status + " " + req.statusText);
			}	
		} 
		else
		{
			TPdisplayresult("...");
		}
	} 
	
	req.open("POST", "/DesktopModules/Faostat/TradePartnerNew/fstpr.aspx", true); 
	req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
		//req.send("rsujet="+subject+"&ryears="+years+"&rarea="+country+"&ritem="+items+"&DDL0="+DDL0+"&DDL1="+DDL1+"&unS="+getValueName(DDL0)+"&deuxS="+getValueName(DDL1)+"&troisS="+getValueName(DDL2)+"&quatreS="+getValueName(DDL3)+"&DDL2="+DDL2+"&DDL3="+DDL3+"&tshowcode="+getChecked(document.getElementById('ctl03_DesktopThreePanes1_ThreePanes_ctl01_showcode').checked)+"&tshowdataquality="+getChecked(document.getElementById('ctl03_DesktopThreePanes1_ThreePanes_ctl01_showdataquality').checked)+"&tshownewcode="+getChecked(document.getElementById('ctl03_DesktopThreePanes1_ThreePanes_ctl01_newcode').checked)+"&tshowunit="+getChecked(document.getElementById('ctl03_DesktopThreePanes1_ThreePanes_ctl01_showunit').checked)+"&tlogmode="+getChecked(document.getElementById('ctl03_DesktopThreePanes1_ThreePanes_ctl01_log').checked)+"&tshowflag="+getChecked(document.getElementById('ctl03_DesktopThreePanes1_ThreePanes_ctl01_showflag').checked)+"&tUI="+tUI+"&thousandsSeparator="+getThousand()+"&decimalsSeparator="+getDecimal()+"&pivot=0&micro=0&idResult="+IdResult+"&"+pourJS); 
	subject=1;
	req.send("rsujet="+subject); 
	
	//else
	//{
		//TPdisplayresult("You must fill all the fields");
	//}
	
}

function TPdisplayresult(toThis)
{ 
	tr=cleanASP(toThis);
    document.getElementById('TPresults').innerHTML += tr;
}


function TPQuery(tot)
{
	if (tot==0)
	{
		document.getElementById('TPresults').innerHTML = "";
	}
//***VARIABLES***
	//Dico for ASP 
	var TPquantityControl = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_TPquantityControl';
	var TPvalueControl = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_TPvalueControl';
	var DDL0 = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_DDL0';
	var DDL2 = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_DDL2';
	var TPdim = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_TPdim';
	var header1 = '';
	var header2 = '';
	var header3 = '';
	
	
	//Quantities selected ?
	var selectedQuantityState;
	/*if (document.getElementById(TPquantityControl).getAttribute('class') == "FaostatControlSelected")
	{
		selectedQuantityState = true
	}
	else
	{
		selectedQuantityState = false;
	}
	
	//Values  selected ?
	var selectedValueState;
	if (document.getElementById(TPvalueControl).getAttribute('class') == "FaostatControlSelected")
	{
		selectedValueState = true
	}
	else
	{
		selectedValueState = false;
	} */

	selectedQuantityState = true;
	selectedValueState = true
	
//*** LOOP PREPARATION*** 

	//match values, DDL and LB
	myDDLTable = new Array(2);
	myDDLTable[2] = 'R';
	myDDLTable[3] = 'I';
	myDDLTable[5] = 'E';
	myDDLTable[7] = 'Y';
	myDDLTable[11] = 'P';
	
	
	//Dimensions which have not been choosen as axis
	if (tot == 0)
	{
		myNotAxisTable = new Array(2);
		for (i=0;i<3;i++)
		{
			myNotAxisTable[i] = new Array();
		}
		var ik=0;
		for (k=11;k>1;k--)
	    {
			if (k==2 || k==3 || k==5 || k==7 || k==11)
			{
				if (document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value!=k && document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value!=k)
				{
					myNotAxisTable[ik][0] = k ;
					myNotAxisTable[ik][1] = myDDLTable[k] ;
					ik++;
				}
			}
		}
	}
	else
	{
		myNotAxisTable = new Array(2);
		for (i=0;i<2;i++)
		{
			myNotAxisTable[i] = new Array();
		}
		var ik=0;
		for (k=7;k>1;k--)
	    {
			if (k==2 || k==3 || k==5 || k==7)
			{
				if (document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value!=k && document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value!=k)
				{
					myNotAxisTable[ik][0] = k ;
					myNotAxisTable[ik][1] = myDDLTable[k] ;
					ik++;
				}
			}
		}
	}
	
	//Values selected in for axis dimensions
	var stTmp = '';
	myValuesTable = new Array(1);
	for (i=0;i<document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value]).length;i++)
	{
		if (document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value])[i].selected)
		{
			if (stTmp == '')
			{
				stTmp  =  document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value])[i].value;
			}
			else
			{
				stTmp  =  stTmp + ',' + document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value])[i].value;
			}
		}
	}
	myValuesTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value] = stTmp;
	
	stTmp = '';
	for (i=0;i<document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value]).length;i++)
	{
		if (document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value])[i].selected)
		{
			if (stTmp == '')
			{
				stTmp  =  document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value])[i].value;
			}
			else
			{
				stTmp  =  stTmp + ',' + document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value])[i].value;
			}
		}
	}	
	myValuesTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value] = stTmp;
	

//***LOOP***
	if (tot == 0)
	{
		for (i=0;i<document.getElementById(TPdim + myNotAxisTable[0][1]).length;i++)
		{
			if (document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].selected)
			{
				myValuesTable[myNotAxisTable[0][0]] = document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].value;
				header1 = document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].text;
				
				for (j=0;j<document.getElementById(TPdim + myNotAxisTable[1][1]).length;j++)
				{
					if (document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].selected)
					{
						myValuesTable[myNotAxisTable[1][0]] = document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].value;
						header2 = document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].text;
						
						for (var k=0;k<document.getElementById(TPdim + myNotAxisTable[2][1]).length;k++)
						{
							if (document.getElementById(TPdim + myNotAxisTable[2][1]).options[k].selected)
							{
								myValuesTable[myNotAxisTable[2][0]] = document.getElementById(TPdim + myNotAxisTable[2][1]).options[k].value;	
								header3 = document.getElementById(TPdim + myNotAxisTable[2][1]).options[k].text;
								//Ajax
								if (myValuesTable[2][1]!='' && myValuesTable[3][1]!='' && myValuesTable[5][1]!='' && myValuesTable[7][1]!='' && myValuesTable[11][1]!='')
								{
									var req = null; 
									if (window.ActiveXObject)
									{
										req  = new ActiveXObject('Msxml2.XMLHTTP.5.0');
									}
									else if(window.XMLHttpRequest)
										req = new XMLHttpRequest(); 
										
									req.onreadystatechange = function()
									{ 
										if(req.readyState == 4)
										{
											if(req.status == 200)
											{	
												TPdisplayresult(req.responseText);
											}	
											else	
											{
												alert("Error: returned status code " + req.status + " " + req.statusText);
											}	
										} 
										else
										{
											//TPdisplayresult("...");
										}
									} 
									req.open("POST", "/DesktopModules/Faostat/TradePartnerNew/fstpr.aspx", false); 
									req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
									
									req.send("&header1="+header1+"&header2="+header2+"&header3="+header3+"&dimYaxis="+document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].text+"&dimXaxis="+document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].text+"&selectedLanguage="+selectedLanguage+"&modFlowTableName="+modFlowTableName+"&modDataTableName="+modDataTableName+"&modAreaTableName="+modAreaTableName+"&modItemTableName="+modItemTableName+"&modDatabaseName="+modDatabaseName+"&selectedQuantityState="+selectedQuantityState+"&selectedValueState="+selectedValueState+"&axisX="+myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value]+"&axisY="+myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value]+"&nested1="+myNotAxisTable[0][1]+"&nested2="+myNotAxisTable[1][1]+"&nested3="+myNotAxisTable[2][1]+"&dimR="+myValuesTable[2]+"&dimI="+myValuesTable[3]+"&dimP="+myValuesTable[11]+"&dimY="+myValuesTable[7]+"&dimE="+myValuesTable[5]+"&tot="+tot); 
									
								}
							}
						}
					}
				}
			}
		}
	}
	else
	{
		stTmp = '';
		for (var k=0;k<document.getElementById(TPdim + 'P').length;k++)
		{
			if (document.getElementById(TPdim + 'P').options[k].selected)
			{
				if (stTmp == '')
				{
					stTmp  =  document.getElementById(TPdim + 'P').options[k].value;	
				}
				else
				{
					stTmp = stTmp + ',' + document.getElementById(TPdim + 'P').options[k].value;	
				}
				header1 = 'TOTAL PARTNERS';
			}			
		}	
		for (i=0;i<document.getElementById(TPdim + myNotAxisTable[0][1]).length;i++)
		{
			if (document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].selected)
			{
				myValuesTable[myNotAxisTable[0][0]] = document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].value;
				header2 = document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].text;
				
				for (j=0;j<document.getElementById(TPdim + myNotAxisTable[1][1]).length;j++)
				{
					if (document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].selected)
					{
						myValuesTable[myNotAxisTable[1][0]] = document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].value;
						header3 = document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].text;
						
						//Ajax
							if (myValuesTable[2][1]!='' && myValuesTable[3][1]!='' && myValuesTable[5][1]!='' && myValuesTable[7][1]!='')
							{
								var req = null; 
								if (window.ActiveXObject)
								{
									req  = new ActiveXObject('Msxml2.XMLHTTP.5.0');
								}
								else if(window.XMLHttpRequest)
									req = new XMLHttpRequest(); 
									
								req.onreadystatechange = function()
								{ 
									if(req.readyState == 4)
									{
										if(req.status == 200)
										{	
											TPdisplayresult(req.responseText);
										}	
										else	
										{
											alert("Error: returned status code " + req.status + " " + req.statusText);
										}	
									} 
									else
									{
										//TPdisplayresult("...");
									}
								} 
								req.open("POST", "/DesktopModules/Faostat/TradePartnerNew/fstpr.aspx", false); 
								req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
								
								req.send("&header1="+header1+"&header2="+header2+"&header3="+header3+"&dimYaxis="+document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].text+"&dimXaxis="+document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].text+"&selectedLanguage="+selectedLanguage+"&modFlowTableName="+modFlowTableName+"&modDataTableName="+modDataTableName+"&modAreaTableName="+modAreaTableName+"&modItemTableName="+modItemTableName+"&modDatabaseName="+modDatabaseName+"&selectedQuantityState="+selectedQuantityState+"&selectedValueState="+selectedValueState+"&axisX="+myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value]+"&axisY="+myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value]+"&nested1="+myNotAxisTable[0][1]+"&nested2="+myNotAxisTable[1][1]+"&nested3=''"+"&dimR="+myValuesTable[2]+"&dimI="+myValuesTable[3]+"&dimP="+stTmp+"&dimY="+myValuesTable[7]+"&dimE="+myValuesTable[5]+"&tot="+tot); 
								
							}
					}
				}
			}
		}
	}
	if (tot == 0 && document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value!=11 && document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value!=11)
	{
		TPQuery(1);
	}
}

function TPQuery_old()
{


//***VARIABLES***
	//Dico for ASP 
	var TPquantityControl = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_TPquantityControl';
	var TPvalueControl = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_TPvalueControl';
	var DDL0 = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_DDL0';
	var DDL2 = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_DDL2';
	var TPdim = 'ctl03_DesktopThreePanes1_ThreePanes_ctl01_TPdim';
	var header1 = '';
	var header2 = '';
	var header3 = '';
	
	
	//Quantities selected ?
	var selectedQuantityState;
	if (document.getElementById(TPquantityControl).getAttribute('class') == "FaostatControlSelected")
	{
		selectedQuantityState = true
	}
	else
	{
		selectedQuantityState = false;
	}
	
	//Values  selected ?
	var selectedValueState;
	if (document.getElementById(TPvalueControl).getAttribute('class') == "FaostatControlSelected")
	{
		selectedValueState = true
	}
	else
	{
		selectedValueState = false;
	}

//*** LOOP PREPARATION*** 

	//match values, DDL and LB
	myDDLTable = new Array(2);
	myDDLTable[2] = 'R';
	myDDLTable[3] = 'I';
	myDDLTable[5] = 'E';
	myDDLTable[7] = 'Y';
	myDDLTable[11] = 'P';
	
	
	//Dimensions which have not been choosen as axis
	myNotAxisTable = new Array(2);
	for (i=0;i<3;i++)
	{
		myNotAxisTable[i] = new Array();
	}
	var ik=0;
	for (k=0;k<12;k++)
    {
		if (k==2 || k==3 || k==5 || k==7 || k==11)
		{
			if (document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value!=k && document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value!=k)
			{
				myNotAxisTable[ik][0] = k ;
				myNotAxisTable[ik][1] = myDDLTable[k] ;
				ik++;
			}
		}
	}
	
	//Values selected in for axis dimensions
	var stTmp = '';
	myValuesTable = new Array(1);
	for (i=0;i<document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value]).length;i++)
	{
		if (document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value])[i].selected)
		{
			if (stTmp == '')
			{
				stTmp  =  document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value])[i].value;
			}
			else
			{
				stTmp  =  stTmp + ',' + document.getElementById(TPdim + myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value])[i].value;
			}
		}
	}
	myValuesTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value] = stTmp;
	
	stTmp = '';
	for (i=0;i<document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value]).length;i++)
	{
		if (document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value])[i].selected)
		{
			if (stTmp == '')
			{
				stTmp  =  document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value])[i].value;
			}
			else
			{
				stTmp  =  stTmp + ',' + document.getElementById(TPdim + myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value])[i].value;
			}
		}
	}	
	myValuesTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value] = stTmp;
	
	
	
//***LOOP***
	for (i=0;i<document.getElementById(TPdim + myNotAxisTable[0][1]).length;i++)
	{
		if (document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].selected)
		{
			myValuesTable[myNotAxisTable[0][0]] = document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].value;
			header1 = document.getElementById(TPdim + myNotAxisTable[0][1]).options[i].text;
			
			for (j=0;j<document.getElementById(TPdim + myNotAxisTable[1][1]).length;j++)
			{
				if (document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].selected)
				{
					myValuesTable[myNotAxisTable[1][0]] = document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].value;
					header2 = document.getElementById(TPdim + myNotAxisTable[1][1]).options[j].text;
					
					for (var k=0;k<document.getElementById(TPdim + myNotAxisTable[2][1]).length;k++)
					{
						if (document.getElementById(TPdim + myNotAxisTable[2][1]).options[k].selected)
						{
							myValuesTable[myNotAxisTable[2][0]] = document.getElementById(TPdim + myNotAxisTable[2][1]).options[k].value;	
							header3 = document.getElementById(TPdim + myNotAxisTable[2][1]).options[k].text;
							//alert('titi');
							//Ajax
							if (myValuesTable[2][1]!='' && myValuesTable[3][1]!='' && myValuesTable[5][1]!='' && myValuesTable[7][1]!='' && myValuesTable[11][1]!='')
							{
								var req = null; 
								if (window.ActiveXObject)
								{
									req  = new ActiveXObject('Msxml2.XMLHTTP.5.0');
								}
								else if(window.XMLHttpRequest)
									req = new XMLHttpRequest(); 
									
								req.onreadystatechange = function()
								{ 
									if(req.readyState == 4)
									{
										if(req.status == 200)
										{	
											//alert(req.responseText);
											TPdisplayresult(req.responseText);
										}	
										else	
										{
											alert("Error: returned status code " + req.status + " " + req.statusText);
										}	
									} 
									else
									{
										TPdisplayresult("...");
									}
								} 
								req.open("POST", "/DesktopModules/Faostat/TradePartnerNew/fstpr.aspx", false); 
								req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
								
								req.send("&header1="+header1+"&header2="+header2+"&header3="+header3+"&dimYaxis="+document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].text+"&dimXaxis="+document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].text+"&selectedLanguage="+selectedLanguage+"&modFlowTableName="+modFlowTableName+"&modDataTableName="+modDataTableName+"&modAreaTableName="+modAreaTableName+"&modItemTableName="+modItemTableName+"&modDatabaseName="+modDatabaseName+"&selectedQuantityState="+selectedQuantityState+"&selectedValueState="+selectedValueState+"&axisX="+myDDLTable[document.getElementById(DDL2).options[document.getElementById(DDL2).selectedIndex].value]+"&axisY="+myDDLTable[document.getElementById(DDL0).options[document.getElementById(DDL0).selectedIndex].value]+"&nested1="+myNotAxisTable[0][1]+"&nested2="+myNotAxisTable[1][1]+"&nested3="+myNotAxisTable[2][1]+"&dimR="+myValuesTable[2]+"&dimI="+myValuesTable[3]+"&dimP="+myValuesTable[11]+"&dimY="+myValuesTable[7]+"&dimE="+myValuesTable[5]); 
								
							}
						}
					}
				}
			}
		}
	}
}
/**********************************************************************************************
SiteMapping 
***********************************************************************************************/

function topicSelection(topicCode)
{
	if(document.getElementById('Div_' + topicCode).style.display == "none")
	{
		document.getElementById('Img_' + topicCode).src = "/Portals/_Faostat/images/images/Moins.png";
		//document.getElementById('Div_' + topicCode).style.visibility=  "visible";
		showMapping('Div_' + topicCode, '/DesktopModules/Faostat/SiteMapping/mainTree.aspx', 'selectedLanguage=' + selectedLanguage + '&topic=' + topicCode);
		document.getElementById('Div_' + topicCode).style.display = "block";
	}
	else
	{
		document.getElementById('Img_' + topicCode).src = "/Portals/_Faostat/images/images/Croix.png";
		document.getElementById('Div_' + topicCode).style.visibility=  "hidden";
		document.getElementById('Div_' + topicCode).style.display = "none";
		document.getElementById('Div_' + topicCode).innerHTML = ""
	}
}

function showMapping(divi, module, params)
{
	//document.getElementById('Div1').style.display = 'block';
   
    var req = null; 	
	if(window.XMLHttpRequest)
    {
	    req = new XMLHttpRequest();
	}
    else if (window.ActiveXObject)
    {
	    req  = new ActiveXObject('Microsoft.XMLHTTP'); 
    }	
    req.onreadystatechange = function()
    { 
		if(req.readyState == 4)
		    {
				//document.getElementById('Div1').style.display = 'none';
			    if(req.status == 200)
			    {
					if(req.responseText != "")
					{
						document.getElementById(divi).style.visibility = "visible";
						document.getElementById(divi).style.display = "block";
					}
					document.getElementById(divi).innerHTML=req.responseText;
				}	
			    else	
			    {
				    alert("Error: returned status code " + req.status + " " + req.statusText);
			    }	
			} 
    }; 
    req.open("POST", module, true); 
    req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");   
	req.send(params);

}

/**********************************************************************************************
TopicMap
***********************************************************************************************/


/*
function showSubTree(divi, module, numTree)
{
	document.getElementById('Top_Div1').style.display = 'block';
	tree = numTree;
	tree2 = '';
	hideSelection();
	showSelection(divi, module, 'type=1&tree=' + tree + '&selectedLanguage=' + selectedLanguage);	
	document.getElementById('Div_Selection').visibility = 'hidden';
	document.getElementById('Div_Selection').display = 'none';	
	for(var num=1; num<=3; num++)
	{
		if(num == numTree)
		{
			document.getElementById(LongName + num).style.borderBottom='2px #bea4d7 solid'; 
		}
		else
		{
			document.getElementById(LongName + num).style.borderBottom='2px #a9e1b8 solid'; 
		}
	}
	cleanSubTrees();
} 

function firstSelection(numTree, code, name)
{
	code1 = code;
	code2 = '';
	document.getElementById(LongName + numTree).innerHTML += ': ' + name;
	hideSelection();
	for(var t1=1; t1<=3; t1++)
	{
		for(var t2=1; t2<=3; t2++)
		{
			if(t1 != t2)
			{
				if(t1 == numTree)
				{
					document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.visibility = 'visible';
					document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.display = 'block';
					document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.visibility = 'visible';
					document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.display = 'block';
				}
				else
				{
					document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.visibility = 'hidden';
					document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.display = 'none';
					document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.visibility = 'hidden';
					document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.display = 'none';
				}
			}
		}
	}
	//showSelection('Div_Selection', '/DesktopModules/Faostat/SiteMapping/mainTree.aspx', 'type=3&tree=' + tree + '&code1=' + code1 + '&code2=' + code2+ '&selectedLanguage=' + selectedLanguage);	
	
	showSelection('Div_Pages', '/DesktopModules/Faostat/TopicMap/mTree.aspx', 'type=4&tree=' + tree + '&tree2=' + tree2 + '&code1=' + code1 + '&code2=' + code2 + '&code3=' + code3 + '&selectedLanguage=' + selectedLanguage);
}

function showSubTree2(divi, module, numTree)
{	
	document.getElementById('Top_Div1').style.display = 'block';
	if (tree2 != 0)
	{
		document.getElementById(LongName + '_Sub2_' + tree + '_' + tree2).style.borderBottom='2px #a9e1b8 solid'; 
		var table = document.getElementById(LongName + '_Sub2_' + tree + '_' + tree2).innerHTML.split(':');
		document.getElementById(LongName + '_Sub2_' + tree + '_' + tree2).innerHTML = table[0];
		document.getElementById('Div_ImgSubTree_' + tree + '_' + tree2).style.visibility = 'hidden';
		document.getElementById('Div_ImgSubTree_' + tree + '_' + tree2).style.display = 'none';
		document.getElementById('Div_SpanSubTree_' + tree + '_' + tree2).style.visibility = 'hidden';
		document.getElementById('Div_SpanSubTree_' + tree + '_' + tree2).style.display = 'none';
		var table = document.getElementById(LongName + '_Sub3_' + tree + '_' + tree2).innerHTML.split(':');
		document.getElementById(LongName + '_Sub3_' + tree + '_' + tree2).innerHTML = table[0];
		code2 = '';
		showSelection('Div_Pages', '/DesktopModules/Faostat/TopicMap/mTree.aspx', 'type=4&tree=' + tree + '&tree2=' + tree2 + '&code1=' + code1 + '&code2=' + code2 + '&code3=' + code3 + '&selectedLanguage=' + selectedLanguage);
	}	
	
	tree2 = numTree;
	hideSelection();
	showSelection(divi, module, 'type=2&tree=' + tree + '&tree2=' + tree2 + '&code1=' + code1 + '&selectedLanguage=' + selectedLanguage);
	document.getElementById(LongName + '_Sub2_' + tree + '_' + tree2).style.borderBottom='2px #bea4d7 solid'; 
}

function secondSelection(code, name)
{	
	code2 = code;
	code3 = '';
	document.getElementById(LongName + '_Sub2_' + tree + '_' + tree2).innerHTML += ': ' + name;
	hideSelection();
	document.getElementById('Div_ImgSubTree_' + tree + '_' + tree2).style.visibility = 'visible';
	document.getElementById('Div_ImgSubTree_' + tree + '_' + tree2).style.display = 'block';
	document.getElementById('Div_SpanSubTree_' + tree + '_' + tree2).style.visibility = 'visible';
	document.getElementById('Div_SpanSubTree_' + tree + '_' + tree2).style.display = 'block';
	showSelection('Div_Pages', '/DesktopModules/Faostat/TopicMap/mTree.aspx', 'type=4&tree=' + tree + '&tree2=' + tree2 + '&code1=' + code1 + '&code2=' + code2 + '&code3=' + code3 + '&selectedLanguage=' + selectedLanguage);
}

function showSubTree3(divi, module, numTree)
{	
	document.getElementById('Top_Div1').style.display = 'block';
	if (tree3 != 0)
	{
		var table = document.getElementById(LongName + '_Sub3_' + tree + '_' + tree2).innerHTML.split(':');
		document.getElementById(LongName + '_Sub3_' + tree + '_' + tree2).innerHTML = table[0];
		code3 = '';
		showSelection('Div_Pages', '/DesktopModules/Faostat/TopicMap/mTree.aspx', 'type=4&tree=' + tree + '&tree2=' + tree2 + '&code1=' + code1 + '&code2=' + code2 + '&code3=' + code3 + '&selectedLanguage=' + selectedLanguage);
	}	
	
	tree3 = numTree;
	hideSelection();
	showSelection('Div_Selection', '/DesktopModules/Faostat/TopicMap/mTree.aspx', 'type=3&tree=' + tree + '&tree2=' + tree2 + '&code1=' + code1 + '&code2=' + code2+ '&selectedLanguage=' + selectedLanguage);	
	document.getElementById(LongName + '_Sub3_' + tree + '_' + tree2).style.borderBottom='2px #bea4d7 solid'; 
}


function thirdSelection(code, name)
{
	code3 = code;
	document.getElementById(LongName + '_Sub3_' + tree + '_' + tree2).innerHTML += ': ' + name;
	hideSelection();
	showSelection('Div_Pages', '/DesktopModules/Faostat/TopicMap/mTree.aspx', 'type=4&tree=' + tree + '&tree2=' + tree2 + '&code1=' + code1 + '&code2=' + code2 + '&code3=' + code3 + '&selectedLanguage=' + selectedLanguage);
}

function cleanSubTrees()
{
	for(var t1=1; t1<=3; t1++)
	{
		for(var t2=1; t2<=3; t2++)
		{
			if(t1 != t2)
			{
				document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.display = 'none';
				document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.display = 'none';
				document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_ImgSubTree' + t1 + '_' + t2).style.display = 'none';
				document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_SpanSubTree' + t1 + '_' + t2).style.display = 'none';
				document.getElementById('Div_ImgSubTree_' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_ImgSubTree_' + t1 + '_' + t2).style.display = 'none';
				document.getElementById('Div_SpanSubTree_' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_SpanSubTree_' + t1 + '_' + t2).style.display = 'none';
				document.getElementById('Div_ImgSubTree_' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_ImgSubTree_' + t1 + '_' + t2).style.display = 'none';
				document.getElementById('Div_SpanSubTree_' + t1 + '_' + t2).style.visibility = 'hidden';
				document.getElementById('Div_SpanSubTree_' + t1 + '_' + t2).style.display = 'none';
				var table = document.getElementById(LongName + t1).innerHTML.split(':');
				document.getElementById(LongName + t1).innerHTML = table[0];
				var table = document.getElementById(LongName + '_Sub2_' + t1 + '_' + t2).innerHTML.split(':');
				document.getElementById(LongName + '_Sub2_' + t1 + '_' + t2).innerHTML = table[0];
			}
		}
	}
	document.getElementById('Div_Pages').innerHTML = '';
}

function cleanSubTree2()
{
	
}

function hideSelection()
{
	document.getElementById('Div_Selection').innerHTML = '';
}

function showHelp()
{
	document.getElementById('TableMain').style.visibility = 'hidden';
	document.getElementById('TableMain').style.display = 'none';
	document.getElementById('Div_Help').style.visibility = 'visible';
	document.getElementById('Div_Help').style.display = 'block';	
	showSelection('Div_Help', '/DesktopModules/Faostat/TopicMap/Help.aspx', "");
}

function hideHelp()
{
	document.getElementById('Div_Help').style.visibility = 'hidden';
	document.getElementById('Div_Help').style.display = 'none';
	document.getElementById('TableMain').style.visibility = 'visible';
	document.getElementById('TableMain').style.display = 'block';	
}
*/
/**********************************************************************************************
Top20
***********************************************************************************************/
var q = -1;
function showSelection(divi, module, params, a, b, ddl, type)
{
	document.getElementById("T20MainTable").style.cursor = 'wait';
    var req = null; 	
	if(window.XMLHttpRequest)
    {
	    req = new XMLHttpRequest();
	}
    else if (window.ActiveXObject)
    {
	    req  = new ActiveXObject('Microsoft.XMLHTTP'); 
    }	
    req.onreadystatechange = function()
    { 
		if(req.readyState == 4)
		    {
			    if(req.status == 200)
			    {		
					document.getElementById(divi).innerHTML= req.responseText;
					if(a!=0 && ddl!='')
					{
						selectDdlVal(ddl, a);
					}
					if(b!=0  && ddl!='')
					{
						selectDdlVal('ddl_Year', b);
					}
					if(type!=0)
					{				
						if(type!=6 && type!=7 && type!=8 && type!=11 && type!=12 && type!=13)
						{
							Top20(document.getElementById(ddl).value, document.getElementById('ddl_Year').value, type, ddl);
						}
						else
						{
							Top20('', document.getElementById('ddl_Year').value, type, '');
						}
					}
					
					document.getElementById("T20MainTable").style.cursor = 'default';
					adjustDdlSort(q);
					q = -1;
				}	
			    else	
			    {
				    alert("Error: returned status code " + req.status + " " + req.statusText);
			    }	
			} 
    }; 
    req.open("POST", module, true); 
    req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");   
	req.send(params);

}



function showTop20Interface(type, a, b)
{
	menuStyle(type);
	if (document.getElementById('ddl_Sort') != null)
	{	
		q = document.getElementById('ddl_Sort').selectedIndex;
	}
	switch(type)
	{
		case 1:
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=1&dataBaseName=' + dataBaseName + '&areaTableName=' + areaTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Area', 1);
			break;
		case 2:
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=2&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 2);
			break;
		case 3: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=3&dataBaseName=' + dataBaseName + '&areaTableName=' + areaTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Area', 3);
			break;
		case 4: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=4&dataBaseName=' + dataBaseName + '&areaTableName=' + areaTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Area', 4);
			break;
		case 5: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=5&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 5);
			break;
		case 6: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=6&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 6);
			break;
		case 7: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=7&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 7);
			break;
		case 8: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=8&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 8);
			break;
		case 9: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=9&dataBaseName=' + dataBaseName + '&areaTableName=' + areaTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Area', 9);
			break;
		case 10: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=10&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 10);
			break;
		case 11: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=11&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 11);
			break;
		case 12: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=12&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 12);
			break;
		case 13: 
			showSelection('T20_interface', '/DesktopModules/Faostat/Top20/T20_interface.aspx', 'language=' + lang + '&type=13&dataBaseName=' + dataBaseName + '&itemTableName=' + itemTableName + '&dataTableName=' + dataTableName + '&yearTableName=' + yearTableName, a, b, 'ddl_Item', 13);
			break;
		default:
			break;
	}
}

function Top20(a, b, typ, ddl)
{
	if (typ<=3)
	{
		if (typ==1 || typ==3)
		{
			atext = document.getElementById('ddl_Area').options[document.getElementById('ddl_Area').selectedIndex].text;
		}
		else
		{
			atext = document.getElementById('ddl_Item').options[document.getElementById('ddl_Item').selectedIndex].text;
		}
	}
	else
	{
		if (typ !=6 && typ !=7 && typ !=8 && typ !=11 && typ !=12 && typ !=13)
		{
			if (typ==4 || typ==9)
			{
				atext = document.getElementById('ddl_Area').options[document.getElementById('ddl_Area').selectedIndex].text;
			}
			else
			{
				atext = document.getElementById('ddl_Item').options[document.getElementById('ddl_Item').selectedIndex].text;
			}
		}
		else
		{
			atext='';
		}
	}
	document.getElementById('T20_result').innerHTML = "";
	if (typ<=3) qu = 0; else qu = 1;
	//alert("boolQuant " +boolQuant );
	showSelection('T20_result', '/DesktopModules/Faostat/Top20/T20_result.aspx', 'language=' + lang + '&type=' + typ + '&dataBaseName=' + dataBaseName + '&areaTableName=' + areaTableName + '&dataTableName=' + dataTableName + '&itemTableName=' + itemTableName + '&param1=' + a + '&param2=' + b + '&boolQuant=' + boolQuant + '&param1Text=' + atext + '&param2Text=' + document.getElementById('ddl_Year').value, 0, 0, ddl, 0);

}

function adjustDdlSort(q)
{
	if (document.getElementById('ddl_Sort') != null && q!=-1)
	{
		document.getElementById('ddl_Sort').getElementsByTagName('option')[q].selected=true; 
	}	
}

function selectDdlVal(ddl, val)
{
	if (val !=0)
	{
		for(var ind=0; ind<document.getElementById(ddl).length; ind++)
		{
			if(document.getElementById(ddl).options[ind].value == val)
			{
				document.getElementById(ddl).selectedIndex=ind;
				break;
			}
		}
	}
}

function menuStyle(t)
{
	if(t<=3)
	{
		document.getElementById('a1').setAttribute("class", "menu1");
		document.getElementById('a1').setAttribute("className", "menu1");
		document.getElementById('a2').setAttribute("class", "menu1");
		document.getElementById('a2').setAttribute("className", "menu1");
		document.getElementById('a3').setAttribute("class", "menu1");
		document.getElementById('a3').setAttribute("className", "menu1");
	}
	else
	{
		document.getElementById('a4').setAttribute("class", "menu1");
		document.getElementById('a4').setAttribute("className", "menu1");
		document.getElementById('a5').setAttribute("class", "menu1");
		document.getElementById('a5').setAttribute("className", "menu1");
		document.getElementById('a6').setAttribute("class", "menu1");
		document.getElementById('a6').setAttribute("className", "menu1");
		document.getElementById('a7').setAttribute("class", "menu1");
		document.getElementById('a7').setAttribute("className", "menu1");
		document.getElementById('a8').setAttribute("class", "menu1");
		document.getElementById('a8').setAttribute("className", "menu1");
		document.getElementById('a9').setAttribute("class", "menu1");
		document.getElementById('a9').setAttribute("className", "menu1");
		document.getElementById('a10').setAttribute("class", "menu1");
		document.getElementById('a10').setAttribute("className", "menu1");
		document.getElementById('a11').setAttribute("class", "menu1");
		document.getElementById('a11').setAttribute("className", "menu1");
		document.getElementById('a12').setAttribute("class", "menu1");
		document.getElementById('a12').setAttribute("className", "menu1");
		document.getElementById('a13').setAttribute("class", "menu1");
		document.getElementById('a13').setAttribute("className", "menu1");
	}
	document.getElementById('a' + t).setAttribute("class", "menu1sel");
	document.getElementById('a' + t).setAttribute("className", "menu1sel");	
	
	if(t<=3)
	{
		document.getElementById('divP_1').style.visibility = 'hidden';
		document.getElementById('divP_1').style.display = 'none';
		document.getElementById('divP_2').style.visibility = 'hidden';
		document.getElementById('divP_2').style.display = 'none';
		document.getElementById('divP_3').style.visibility = 'hidden';
		document.getElementById('divP_3').style.display = 'none';	
		document.getElementById('divP_' + t).style.visibility = 'visible';
		document.getElementById('divP_' + t).style.display = 'block';
	}
}

function sortByChange(t)
{
	//alert('ssss');
	boolQuant = document.getElementById('ddl_Sort').value;
	//alert("ss" + document.getElementById('ddl_Sort').value);
		if (t==2 || t==5 || t==10)
		{
			Top20(document.getElementById('ddl_Item').value, document.getElementById('ddl_Year').value, t);
		}
		else
		{
			Top20(document.getElementById('ddl_Area').value, document.getElementById('ddl_Year').value, t);
		}
	
}

