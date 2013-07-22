function cCookie(name,value,days) {
  if (days) { 
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }
  else var expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}

function rCookie(name) {
  var nameEQ = name + "=";
  var ca = document.cookie.split(';');
  for(var i=0;i < ca.length;i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1,c.length);
    if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
  }
  return null;
}

function toggleDiv(element){
     var el;
     var currcookie;
     el = document.getElementById(element);
     currcookie = rCookie('toggleDiv');
     if(el.style.display != 'block') {
       el.style.display = 'block';
       currcookie = ((currcookie==null)?'':currcookie)+element+'|';
       cCookie('toggleDiv',currcookie,1);
     }
     else {
       el.style.display = 'none';
       currcookie = currcookie.replace(element+'|',"");
       cCookie('toggleDiv',currcookie,1);
     }
}