// JavaScript Document

window.onload = function() {
    var oLi = document.getElementById('tab').getElementsByTagName('li');
    var oUl = document.getElementById('content').getElementsByClassName('tabdiv');
    for (var i = 0; i < oLi.length; i++) {

        oLi[i].index = i;
        oLi[i].onclick = function() {
            //alert('ff');
            // for (var n in oLi) oLi[n].className = '';
            for (var n = 0; n < oLi.length; n++) {
                oLi[n].className = '';
                //alert(oLi[n].className);
            }
            this.className = 'active';
            for (var n = 0; n < oUl.length; n++) {
                // 
                //alert(oUl[n].style.display);
                oUl[n].style.display = "none";
            }

            oUl[this.index].style.display = "block";
        }
    }
}