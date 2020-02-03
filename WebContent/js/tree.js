window.onload=function () {
	Click();
	
}
//左边导航栏
function Click(){
	var big_li = document.getElementsByClassName('big_li');
	var ul_sub = document.getElementsByClassName('sub');
	var sub_li = document.getElementsByClassName('sub_li');
	var V = new Array();
	//左边big_ul的样式变换
	for(var i = 0;i < big_li.length; i++){
		big_li[i].index = i;
		$(big_li[i]).click(function () {
			if(!$(this).hasClass('change')){
				this.className = 'big_li change';
			}else{
				this.className = 'big_li';
			}

			for(var j = 0;j<big_li.length;j++){
				V[j]=$(big_li[j]).hasClass('change');
			}
			if(V[0]==false&&V[1]==false){
					parent.document.getElementById("rightFrame").src='welcome.html';
				}


			var that = this.index;
			$(ul_sub[that]).toggle(function () {
			});
			var child_ul = this.children[0];
			var child_li = child_ul.children;
			if($(this).hasClass('change')){
				for(var k =0;k<child_li.length;k++){
					$(child_li[k]).attr('class','sub_li');
				}
			}
		});
	}

	for(var j = 0 ;j<sub_li.length;j++){
		sub_li[j].index = j;
		$(sub_li[j]).click(function (e) {
			e.stopPropagation();
			for(var k = 0;k<sub_li.length;k++){
				sub_li[k].className = 'sub_li';
			}
			this.className = 'sub_li down';
		});
	}
}
//点击的CSS效果
function box_shadow(btnname,cssname) {
		var btn = document.getElementsByClassName(btnname)[0];
			$(btn).mousedown(function () {
				$(this).attr('class',btnname +' '+cssname);
			}).mouseup(function () {
				$(this).attr('class',btnname);
			}).click(function (e) {
				// e.preventDefault();
			});
}