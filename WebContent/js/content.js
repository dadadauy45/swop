window.onload=function () {
	Click();
}
function Click(){

	var big_li = document.getElementsByClassName('big_li');
	var ul_sub = document.getElementsByClassName('sub');
	var sub_li = document.getElementsByClassName('sub_li');
	var first_0 = document.getElementsByClassName('first')[0];
	var first = document.getElementsByClassName('first');
	var V = new Array();
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
			if(V[0]==false&&V[1]==false&&V[2]==false&&V[3]==false){
					first_0.style.display="block";
					for(var k = 1;k<first.length;k++){
						$(first[k]).css('display','none');
					}
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
		$(sub_li[j]).click(function () {
			for(var k = 0;k<sub_li.length;k++){
				sub_li[k].className = 'sub_li';
			}
			this.className = 'sub_li down';
		});
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
	var sub_li = document.getElementsByClassName('sub_li');
	var first = document.getElementsByClassName('first');
	var fix_box = document.getElementsByClassName('fix_box')[0];
	var back = document.getElementsByClassName('back');
	var add_box = document.getElementsByClassName('add_box')[0];
	for(var k = 0 ;k<sub_li.length;k++){
		sub_li[k].index = k;
		sub_li[k].onclick=function (e) {
			e.stopPropagation();
			for(var m = 0; m <first.length;m++){
				first[m].style.display = 'none'; 
				$(fix_box).css('display','none');
			}
			first[this.index+1].style.display = 'block';
		}
		var parent = null;
		var fixed = document.getElementsByClassName('fix');
		for(var n = 0;n<back.length;n++){
			$(back[n]).click(function (e) {
				e.preventDefault();
				var parent_box = this.parentNode.parentNode.parentNode.parentNode;
				console.log(parent);
				$(parent).css('display','block') ;
				$(parent_box).css('display','none');
			});
		}
	
			
		
		for(var i =0 ; i<fixed.length;i++){
			$(fixed[i]).mousedown(function () {
				this.className = 'fix delected';
			}).mouseup(function () {
				this.className = 'fix';
			}).click(function (e) {
				e.stopPropagation();
				parent = this.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode;
				$(parent).css('display','none') ;
				$(fix_box).css('display','block');
			});
		}
	}

	var add = document.getElementsByClassName('add');
	for(var i = 0; i<add.length; i++){
		$(add).mousedown(function () {
				this.className ='add added';
			}).mouseup(function () {
				this.className = 'add';
			}).click(function (e) {
				e.stopPropagation();
				parent = this.parentNode.parentNode;
				$(parent).css('display','none') ;
				$(add_box).css('display','block');
			});;
	}


	box_shadow('btn','down');
	box_shadow('yes','click');
	box_shadow('reset','click');

}());

	function box_shadow(btnname,cssname) {
		var btn = document.getElementsByClassName(btnname)[0];
			$(btn).mousedown(function () {
				this.className = btnname +' '+cssname;
			}).mouseup(function () {
				this.className = btnname;
			});
	}
