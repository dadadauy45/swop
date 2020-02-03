window.onload=function(){
	RightHover();
	var content_box = document.getElementsByClassName('content-box');
	var $content = new Array();
	for(var i =0;i < content_box.length; i++){
		$content[i] = $(content_box[i]);
	}
	
	Delet('delet-1',$content[0]);
	Delet('delet-2',$content[1]);
}
function RightHover() {
	var exright = document.getElementsByClassName('exright');
	var exleft = document.getElementsByClassName('exleft')[0];
	var lis = exleft.getElementsByTagName('li');
	for(var i =1;i < lis.length;i++){
		lis[i].index = i;
		lis[i].onclick=function () {
			for(var j =0;j < exright.length; j++){
				exright[j].className = 'exright';
				$(lis[j+1]).removeClass('bgc');
			}
			exright[this.index-1].className='exright show_exright';
			$(this).addClass('bgc');
		}
	
	}
}
function Delet(classname,content_box,p,a) {
	var delet = document.getElementsByClassName(classname);
	
	var right_content = new Array();
	for(var i = 0; i < delet.length; i++){
		right_content[i] = delet[i].parentNode.parentNode;
	}
	console.log(right_content.length);
	if(!right_content.length){
		if(classname=='delet-1'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有物品！快逛逛吧！</p> <a href="#" class="go">去逛逛</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-2'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有物品！快逛逛吧！</p> <a href="#" class="go">去逛逛</a>'));
			content_box.append($right_content);
			return ;
		}
	}
	for(var i = 0;i < delet.length;i++){
		delet[i].index = i;
		delet[i].onclick=function () {
			right_content[this.index].remove();
			Delet(classname,content_box);
		}
	}
}