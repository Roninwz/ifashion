/**
 * ��ָ����治����ʱ������
 *
 * ����ʾ��:
 * 		AdCleaner.clear('123,456');
 * 		AdCleaner.clearAll();
 */
var AdCleaner = {
	/**
	 * �������кͿո�
	 * @param string ids ����ID(�����Զ��ŷָ�)
	 */
	trim: function(str){
		str = str.replace(/\s+/g, "");		
		str = str.replace(/[\r\n]/g, "");
		return str;
	},

	/**
	 * ָ�������޹����������
	 * @param string ids ����ID(�����Զ��ŷָ�)
	 */
	clear: function(ids){
		var aIdList = ids.split(',');
		for (i=0;i<aIdList.length;i++){
			var AdPlaceId = 'OL_SYS_' + aIdList[i];
			var objDoc    = document.getElementById(AdPlaceId);
			if(objDoc != null){
				var sAdContent = objDoc.innerHTML;
				sAdContent = this.trim(sAdContent);
				if (sAdContent == "") {
					objDoc.style.display='none';
				}
			}
		}
	},

	/**
	 * ����ȫ��DIV�������޹��������
	 * @param string ids ����ID(�����Զ��ŷָ�)
	 */
	clearAll: function(){
		var i;
		var reg = /^OL_SYS_(\d){1,}(_){0,}(\d){1,}$/;
		var aAllDiv=document.getElementsByTagName("div");
		for(i=0;i<aAllDiv.length;i++){
			var sObjId = aAllDiv[i].id;
			if(sObjId.match(reg)){
				var sAdContent = aAllDiv[i].innerHTML;
				sAdContent = this.trim(sAdContent);
				if(!sAdContent || sAdContent==''){
					aAllDiv[i].style.display='none';
				}
			}
		}
	}
};