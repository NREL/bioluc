var bdis = "<img src=\"";
var edis7 = " alt=\"\" title=\"\"></a>";
var edis8 = " alt=\"\" title=\"\"></a>";
var edis9 = " alt=\"FAO/F. Mattioli\" title=\"FAO/F. Mattioli\"></a>";
var rnumb = "";
var img = "";
rnumb += Math.floor(Math.random()*3);
img = rnumb;

function showImageResources() {

if (img == "0") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_resources_1.jpg\"" +edis7);
}
if (img == "1") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_resources_2.jpg\"" +edis8);
}
if (img == "2") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_resources_3.jpg\"" +edis9);
}
}