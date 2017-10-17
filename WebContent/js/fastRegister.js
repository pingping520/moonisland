var img1=document.getElementById('img1');
var img2=document.getElementById('img2');
/*var setpwd1=document.getElementById('setpwd');
var setpwd2=document.getElementById('setpwd2')*/
img1.onclick=function () {

    img1.className="span1 hid";

    img2.className="span1 show";
    $('#setpwd').attr('type','password');
}
img2.onclick=function () {
    img1.className="span1 show";
    $('#setpwd').attr('type','text');

    img2.className="span1 hid";

}
$('#btn').click(function(){
    location.href="login.html"
})
