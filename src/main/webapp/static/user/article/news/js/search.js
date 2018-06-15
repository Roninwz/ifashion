//根据大类查出二级类 （级联）
function changeSubId(cateId){
	$("#cateId").val(cateId);
	$("#selsub").html('选择小类');
	$("#selgran").html('选择细类');
	$("#subId").val('');
	$("#grandId").val('');
	$("#grandidsc").html('');
	$(this).parent('.se_item').siblings('.se_input').trigger('click');
	
	var key = cateId;
	if(typeof CateData != "undefined" && typeof (CateData[key]) == "object"){
		var arr = CateData[key];
		$("#subidsc").html(arr[0]['html']);
		$("#subidsc a").on("click",function(event){
			event.stopPropagation();
			event.preventDefault();
			$("#selsub").html($(this).find('span').html());
			$("#subId").val($(this).attr("name"));
			$("#selgran").html('选择细类');
			$("#grandId").val('');
			$(this).parent('.se_item').siblings('.se_input').trigger('click');
			
			var arr1 = CateData[$(this).attr("name")];
			$("#grandidsc").html(arr1[0]['html']);
		})
	}
}

$("#grandidsc").delegate('a',"click",function(event){
	event.stopPropagation();
	event.preventDefault();
	$("#selgran").html($(this).find('span').html());
	$("#grandId").val($(this).attr("name"));
	$(this).parent('.se_item').siblings('.se_input').trigger('click');
})

//品牌自动完成
var timer;
function selBrand(bid,autodiv){
//$("#searchpro").keyup(function () {
	var self = $("#"+bid);
	//var self = this;
	//alert(self);exit;
	var temp = [];
	$("#"+autodiv).hide().empty();
	timer && clearTimeout(timer);
	timer = setTimeout(function () {
		var key = $(self).val().toLowerCase();
		for (var i = 0, len = brandInfo.length; i < len; i++) {
			var id = brandInfo[i].id;
			var names = brandInfo[i].names.toLowerCase();
			var pinyins = brandInfo[i].pinyins.toLowerCase();
			var aliasname = brandInfo[i].aliasname.toLowerCase();
			var abbr = brandInfo[i].abbr.toLowerCase();
			var yingwen = brandInfo[i].yingwen.toLowerCase();
			var _ali,_name;

			if (pinyins.indexOf(key) == 0 || aliasname.indexOf(key) == 0 || names.indexOf(key) == 0 || abbr.indexOf(key)==0 || yingwen.indexOf(key) == 0) {
				temp.push(brandInfo[i]);
			}
		}
		if(temp.length==0) {return;}
		for (var j = 0, m = temp.length; j < m; j++) {
			if(temp[j].aliasname)
				_ali = '<span>(' + temp[j].aliasname + ')</span>';
			else
				_ali = '';
			_name = temp[j].names.replace(/\s/g,"+"); 
			if(autodiv == 'auto_brand1'){
				$("#"+autodiv).append('<div style="cursor:pointer;" onclick=selectBrandSerise(\'' + temp[j].customurl + '\','+temp[j].id+ ',\''+_name+'\')>' + _name + _ali +'</div>');
			}else{
				$("#"+autodiv).append('<div style="cursor:pointer;" onclick=selectBrand(\'' + temp[j].customurl + '\','+temp[j].id+ ',\''+_name+'\')>' + _name + _ali +'</div>');
			}
		}
		var key_word = document.getElementById(bid).value;
		if(key_word){
			$("#"+autodiv).show();
			$('.navSearch .search').css({overflow:'visible'});
		}else{
			$("#"+autodiv).hide();
			$('.navSearch .search').css({overflow:'hidden'});
		}
	}, 400);
}
//})
$("#searchpro").keypress(function (event) {
	if(event.keyCode ==13) subBrand();
})

$(document).click(function(){$('.navSearch .search').height(0); $("#auto_brand").hide();$("#auto_brand1").hide();$("#cateidsc").hide();$("#subidsc").hide();$("#grandidsc").hide();$("#se_gx").hide();$("#se_pl").hide();})
//搜索品牌
function selectBrand(customurl,ids,names){
	$("#searchpro").val(names.replace(/\+/g," "));
	$("#auto_brand").hide();
	$("#brandid").val(customurl);
	var url = "http://hzp.onlylady.com/"+customurl+"/";
	window.open(url);
}	

function subBrand(){
	if($('#brandid').val()){
		var act='http://hzp.onlylady.com/'+$('#brandid').val()+'/';
	}else{
		var act='http://hzp.onlylady.com/brand.html';
	}	
	$('#form_brand').attr('action',act);
	$('#brandid').val('');
	$('#form_brand').submit();
}

//搜索系列(级联)
function selectBrandSerise(customurl,ids,names){
	$("#serisefield").val(names.replace(/\+/g," "));
	$("#auto_brand1").hide();
	$("#serisebrandid").val(ids);
	$("#selseries").html('选择系列');
	$("#Seriessc").hide();
	$("#seriseId").val('');
	$("#serisebrandurl").val(customurl);
	$("#Seriessc").css('height','140px');
	$("#se_pl").empty();
	
	var key = ids;
	if(typeof BrandSeriesData != "undefined" && typeof (BrandSeriesData[key]) == "object"){
		var arr = BrandSeriesData[key];
		$("#Seriessc").html(arr[0]['html']);
		$("#Seriessc a").on("click",function(event){
			event.stopPropagation();
			event.preventDefault();
			$("#selseries").html($(this).find('span').html());
			$("#seriseId").val($(this).attr("name"));
			$(this).parent('.se_item').siblings('.se_input').trigger('click');
			
		})
	}
}

function subSeriseBrand(){
	var brandurl = $("#serisebrandurl").val();
	var seriesid = $("#seriseId").val();
	
	if(!brandurl) {
		alert('请输入正确的品牌~'); 
		return false;
	}
	if(!seriesid){
		alert('请选择系列~'); 
		return false;
	}
	
	var url = "http://hzp.onlylady.com/"+brandurl+"/b_0_"+seriesid+"_0_0_0_1.html";
	window.open(url);
}

//功效搜索
var id, oth;
$("#se_gx_key").click(function (event) {
    event.stopPropagation();
    var target = $(event.target),
        url = target.attr("data-src");
    id = target.attr("rev");
    oth = (id == "se_gx") ? "se_pl" : "se_gx";
    $("#" + id).toggle();
    $("#" + oth).hide();
})
$("#se_gx a").click(function(event){
	event.stopPropagation();
	event.preventDefault();
	cPinLei(event);
	$("#selecate").text("\u8bf7\u9009\u62e9\u54c1\u7c7b");
	$("#se_pl").hide();
	$("#se_gx").siblings('.se_input').trigger('click');
	$("#se_pl_v").val('');
	$("#efflist").html($(this).html());
	$("#se_gx_v").val($(event.target).attr("name"));
})

$("#se_pl a").on("click",function(event){
	event.stopPropagation();
	event.preventDefault();
	$("#se_gx").hide();
	$("#se_pl").siblings('.se_input').trigger('click');
	$("#selecate").html($(this).html());
	$("#se_pl_v").val($(event.target).attr("name"));
 })
function cPinLei(event){
	$("#se_pl").empty();
	var key = $(event.target).attr("name");
	if(typeof PinLeiData != "undefined" && typeof (PinLeiData[key]) == "object"){
		var arr = PinLeiData[key];
		for(var i=0,len=arr.length;i<len;i++){
			$("#se_pl").append("<h4 style='color: #736356;'>"+arr[i]['title']+"</h4>"+arr[i]['html']);
		};
		$("#se_pl a").on("click",function(event){
			event.stopPropagation();
			event.preventDefault();
			$("#se_gx").hide();
			$("#se_pl").siblings('.se_input').trigger('click');
			$("#selecate").html($(this).html());
			$("#se_pl_v").val($(event.target).attr("name"));
		})
	}
}