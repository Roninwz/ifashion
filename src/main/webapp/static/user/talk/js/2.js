// // JavaScript Document
// var spans=new Array();
// window.onload = function() {
//
//     var oLi = document.getElementById('tag-list').getElementsByTagName('li');
//     for (var i = 0; i < oLi.length; i++) {
//         var n=0;
//         oLi[i].onclick = function() {
//            // alert(oLi[i].val());
//             this.className = 'active';
//             spans[n]=$(this).find("span").text();
//             n++;
//         }
//     }
//
// }
// function  tagonclick() {
//
//     var datas={"spans":spans};
//
//     alert(1);
//     // $.ajax({
//     //     url: "${pageContext.request.contextPath }/user/attention.action",
//     //     type:"POST",
//     //     dataType: 'json', //表示返回值的数据类型
//     //     contentType: 'application/json;charset=UTF-8', //内容类型
//     //     traditional: true, //使json格式的字符串不会被转码
//     //     data: JSON.stringify(datas),
//     //
//     //     success: function(data){
//     //         alert(data);
//     //         // $(this).addClass("done");
//     //     }});
//
// }
