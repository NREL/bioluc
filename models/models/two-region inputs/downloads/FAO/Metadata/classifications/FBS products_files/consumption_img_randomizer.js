var bdis = "<img src=\"";
var edis4 = " alt=\"FAO/F. Mattioli\" title=\"FAO/F. Mattioli\"></a>";
var edis5 = " alt=\"FAO/D. White\" title=\"FAO/D. White\"></a>";
var edis6 = " alt=\"FAO/G. Bizzarri\" title=\"FAO/G. Bizzarri\"></a>";
var rnumb = "";
var img = "";
rnumb += Math.floor(Math.random()*3);
img = rnumb;

function showImageConsumption() {

if (img == "0") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_consumption_1.jpg\"" +edis4);
}
if (img == "1") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_consumption_2.jpg\"" +edis5);
}
if (img == "2") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_consumption_3.jpg\"" +edis6);
}
}