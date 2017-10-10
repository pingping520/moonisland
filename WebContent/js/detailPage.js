//Tab切换功能
var con1 = document.getElementById('s001')
var con2 = document.getElementById('s002')
var con3 = document.getElementById('s003')
var hh1 = document.getElementById('header001')
var hh2 = document.getElementById('header002')
var hh3 = document.getElementById('header003')
var xiao1=document.getElementById("xiao");
function chaCon1() {
    con1.className = "show";
    con2.className = "hid";
    con3.className = "hid";
    hh1.className="col-xs-4 hshow";
    hh2.className="col-xs-4";
    hh3.className="col-xs-4";
    xiao1.className="col-xs-3 hid";
}
function chaCon2() {
    con1.className = "hid";
    con2.className = "show";
    con3.className = "hid";
    hh1.className="col-xs-4 ";
    hh2.className="col-xs-4 hshow";
    hh3.className="col-xs-4";
    xiao1.className="col-xs-3 show";

}
function chaCon3() {
    con1.className = "hid";
    con2.className = "hid";
    con3.className = "show";
    hh1.className="col-xs-4 ";
    hh2.className="col-xs-4";
    hh3.className="col-xs-4 hshow";
    xiao1.className="col-xs-3 hid";
}

var swiper = new Swiper('.swiper-container');

var windowHeight = $(window).height(),
    $body = $("body");
// console.log($(window).height());
// console.log($('body').height());
$body.css("height", windowHeight);

/*window.onload=function(){
    var imgh=$('.shop02').height();
    alert(imgh);
    var $imgright=$('#imgright');
    $imgright.css("height",imgh);
}*/








