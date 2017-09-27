/**
 * 
 */
function check(bid){
	var status;
	var ck = document.getElementById(bid);
	if(ck.checked==false){
		status = "0";
	}else{
		status = "1";
	}
	$.get('brand/check?brandId='+bid+'&brandStatus='+status, function(data) {
		if(data==1){
			alert("编辑成功！");
		}
	});
}
