window.onload=function () {
	RightHover();
	// Hover_bgc();
	var content_box = document.getElementsByClassName('content-box');
	var $content = new Array();
	for(var i =0;i < content_box.length; i++){
		$content[i] = $(content_box[i]);
	}
	
	Delet('delet-1',$content[0]);
	Delet('delet-2',$content[1]);
	Delet('delet-3',$content[2]);
	Delet('delet-4',$content[3]);
	Delet('delet-5',$content[4]);
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
function Delet_2() {
	var info_ul = document.getElementsByClassName('info-ul');
	var lis = new Array();
	var delet_2 = new Array();
	for(var k = 0; k < info_ul.length; k++){
		lis[k] = new Array();
		lis[k]=info_ul[k].children;
		for(var i = 0;i<lis[k].length;i++){
			delet_2[i] = lis[k][i];
		}
	}
	for(var j = 0;j < delet_2.length;j++){
		delet_2[j].onclick=function () {
			this.remove();
		}
	}
}
function Delet(classname,content_box,p,a) {
	var delet = document.getElementsByClassName(classname);
	var right_content = new Array();
	var intro = [{p:"没有换品！",a:"去发布"}]
	for(var i = 0; i < delet.length; i++){
		right_content[i] = delet[i].parentNode.parentNode;
	}

	if(!right_content.length){
		if(classname=='delet-1'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有换品！快去发布吧！</p> <a href="#" class="go">去发布</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-2'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有租品！快去发布吧！</p> <a href="#" class="go">去发布</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-3'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有买入！快去逛逛吧！</p> <a href="#" class="go">去逛逛</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-4'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有赠品！快去逛逛吧！</p> <a href="#" class="go">去逛逛</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-5'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有领养！快去领养吧！</p> <a href="#" class="go">去领养</a>'));
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