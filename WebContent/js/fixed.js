window.onload=function () {
	Click();
}
function Click(){

	var big_li = document.getElementsByClassName('big_li');
	var ul_sub = document.getElementsByClassName('sub');
	var sub_li = document.getElementsByClassName('sub_li');
	console.log(sub_li.length);
	for(var i = 0;i < big_li.length; i++){
		big_li[i].index = i;
		$(big_li[i]).click(function (e) {
			e.stopPropagation();
			console.log($(this).hasClass('change'));
			if(!$(this).hasClass('change')){
				this.className = 'big_li change';
			}else{
				this.className = 'big_li';
			}
			var that = this.index;
			$(ul_sub[that]).toggle(function () {
			});
		});
	}
	for(var j = 0 ;j<sub_li.length;j++){
		sub_li[j].index = j;
		$(sub_li[j]).click(function () {
			for(var k = 0;k<sub_li.length;k++){
				sub_li[k].className = 'sub_li';
			}
			this.className = 'sub_li down';
		})
	}
}
function Hover() {
	var sub_li = document.getElementsByClassName('sub_li');
	for(var i =0;i<sub_li.length;i++){
		sub_li[i].index = i;
		sub_li[i].onmouseover=function () {
			for(var j =0;j<sub_li.length;j++){

			}
		}
	}
}

(function change_right() {
		//删除键
	var delect = document.getElementsByClassName('delect');
	
	var grand = new Array();
	for(var j =0; j<delect.length;j++){
		grand[j] = delect[j].parentNode.parentNode;
	}
	for(var i =0 ; i<delect.length;i++){
		delect[i].index = i;
		$(delect[i]).mousedown(function () {
			this.className = 'delect delected';
		})
		delect[i].onclick=function () {
			grand[this.index].remove();
		}

	}
	//左边切换
	// var first = document.getElementsByClassName('first');
	var sub_li = document.getElementsByClassName('sub_li');
	var first = document.getElementsByClassName('first');
	console.log(sub_li.length);
	console.log(first[1]);
	for(var k = 0 ;k<sub_li.length;k++){
		sub_li[k].index = k;
		sub_li[k].onclick=function (e) {
			e.stopPropagation();
			for(var m = 0; m <first.length;m++){
				first[m].style.display = 'none'; 
			}
			first[this.index+1].style.display = 'block';
		}


		//修改键
		var fixed = document.getElementsByClassName('fix');
		console.log(fixed.length);
		for(var i =0 ; i<fixed.length;i++){
			fixed[i].index = i;
			$(fixed[i]).mousedown(function () {
				this.className = 'fix delected';
			}).mouseup(function () {
				this.className = 'fix';
			});
		}
	}
	//添加键
	var add = document.getElementsByClassName('add');
		for(var i =0 ; i<add.length;i++){
			$(add[i]).mousedown(function () {
				console.log(123456);
				this.className = 'add added';
			}).mouseup(function () {
				this.className = 'add';
			});
		}


	var btn = document.getElementsByClassName('btn')[0];
			$(btn).mousedown(function () {
				this.className = 'btn down';
			}).mouseup(function () {
				this.className = 'btn';
			});
}());