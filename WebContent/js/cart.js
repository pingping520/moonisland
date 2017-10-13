$(document).ready(function(){
    var flag = true;
    /*全选*/
    $('.nav .row .col-xs-1 .icon-xuanzhong').click(function(e) {

        if(flag==true){

            flag = false;
            $(this).css('color','#f43233');
            $('.pro .row .col-xs-1 .icon-xuanzhong').css('color','#f43233');
            $('#footer .row .col-xs-2 .icon-xuanzhong').css('color','#f43233');
        }else{

            flag = true;
            $(this).css('color','#cccccc');
            $('.pro .row .col-xs-1 .icon-xuanzhong').css('color','#cccccc');
            $('#footer .row .col-xs-2 .icon-xuanzhong').css('color','#cccccc');
        }        
    });

    $('#footer .row .col-xs-2 .icon-xuanzhong').click(function(e) {
        if(flag==true){
            flag = false;
            $(this).css('color','#f43233');
            $('.pro .row .col-xs-1 .icon-xuanzhong').css('color','#f43233');
            $('.nav .row .col-xs-1 .icon-xuanzhong').css('color','#f43233');
        }else{
            flag = true;
            $(this).css('color','#cccccc');
            $('.pro .row .col-xs-1 .icon-xuanzhong').css('color','#cccccc');
            $('.nav .row .col-xs-1 .icon-xuanzhong').css('color','#cccccc');
        }        
    });

    /*单选*/
    $('.pro .row .col-xs-1 .icon-xuanzhong').click(function(event) {
        if(flag==true){
            flag = false;
            $(this).css('color','#f43233');
        }else{
            flag = true;
            $(this).css('color','#cccccc');
        }        
    });

   /* 删除商品*/
   $('.message .col-xs-2 .icon-xuanzhong').click(function(event) {
       if(confirm("确定删除？")){
            $(this).parents('div.pro').remove();
       }
   });
    
    /*商品加减*/
    $('.btn1').click(function(event) {
        var value = $(this).next().val();
        if(value>0){
            value--;
        }else{
            value = 0;
        }
        $(this).next().val(value);       
    });

     $('.btn2').click(function(event) {
        var value = $(this).prev().val();
        value++;
        $(this).prev().val(value);       
    });    
});