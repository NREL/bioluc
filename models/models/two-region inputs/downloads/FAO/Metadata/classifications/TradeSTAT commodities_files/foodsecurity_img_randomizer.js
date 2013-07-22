var bdis = "<img src=\"";
var edis10 = " alt=\"FAO/16951/R. Haviv/SABA/Contrasto\" title=\"FAO/16951/R. Haviv/SABA/Contrasto\"></a>";
var edis11 = " alt=\"FAO photo\" title=\"FAO photo\"></a>";
var edis12 = " alt=\"UNICEF/HQ-093-0986/Toutounji\" title=\"UNICEF/HQ-093-0986/Toutounji\"></a>";
var rnumb = "";
var img = "";
rnumb += Math.floor(Math.random()*3);
img = rnumb;

function showImageFoodSecurity() {

if (img == "0") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_fs_4.jpg\"" +edis10);
}
if (img == "1") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_fs_2.jpg\"" +edis11);
}
if (img == "2") {
document.write(bdis+ "/Portals/_Faostat/images/images/index_fs_3.jpg\"" +edis12);
}
}