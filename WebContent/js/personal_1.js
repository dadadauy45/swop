window.onload=function () {
	Answer();
	Delet_1();
	RightHover();
	// Hover_bgc();
	var content_box = document.getElementsByClassName('content-box');
	var $content = new Array();
	for(var i =0;i < content_box.length; i++){
		$content[i] = $(content_box[i]);
	}
	
	/*Delet('delet-3',$content[0]);
	Delet('delet-4',$content[1]);
	Delet('delet-5',$content[2]);
	Delet('delet-6',$content[3]);
	Delet('delet-7',$content[4]);
	Delet('delet-8',$content[5]);*/
}
function Out() {
	var ans_inp = document.getElementsByClassName('ans-inp');
	var face_icon =document.getElementsByClassName('face-icon');
	var text = document.getElementsByClassName('text');
	var info_show = document.getElementsByClassName('info-show');
	var ul = [];
	for(var k = 0;k<info_show.length;k++){
		 ul[k] = info_show[k].getElementsByTagName('ul')[0];
	}

 	for(var i = 0;i <ans_inp.length;i++){
 		ans_inp[i].index = i;
		ans_inp[i].onclick=function () {
				$(face_icon[this.index]).SinaEmotion($(text[this.index]));
				var newString = $($(text[this.index])).val().replace(/\n/g, '_@').replace(/\r/g, '_#');
				if(newString){
					newString = newString.replace(/_#_@/g, '<br/>');//IE7-8
					newString = newString.replace(/_@/g, '<br/>');//IE9、FF、chrome
			 		newString = newString.replace(/\s/g, '&nbsp;');//空格处理
					$(ul[this.index]).append(reply(AnalyticEmotion(newString)));
					$($(text[this.index])).val('');
					Out();
					Delet_2();
				}else{
					alert('请输入内容！');
				}
				
			}
			var html;
			function reply(content){
				html  = '<li>';
				html += '<div class="head-face">';
				html += '<img src="images/1.jpg" / >';
				html += '</div>';
				html += '<div class="reply-cont">';
				html += '<p class="username">小小红色飞机</p>';
				html += '<p class="comment-body">'+content+'</p>';
				html += '<i class="comment-footer">'+date.toLocaleTimeString()+'</i> <span class="delet-2">删除</span>';
				html += '</div>';
				html += '</li>';
				return html;
			}
	}
}
function Answer() {
	var ans = document.getElementsByClassName('answer');
	var big_content = document.getElementsByClassName('big-content');
	for(var i = 0;i < ans.length; i ++){
		ans[i].index = i;
		ans[i].onclick=function () {
			for(var j = 0;j < big_content.length;j++)
			big_content[this.index].style.display = 'block';
			 Out();
			 Delet_2();
			return this.index;
		}
	}
}
function Delet_1(){
	var delet_1 = document.getElementsByClassName('delet-1');
	var right_comment = document.getElementsByClassName('right-comment');
	var comment_box = $(document.getElementsByClassName('comment-box')[0]);
	if(!right_comment.length){
		var right_comment =  $('<div class="right-comment"></div>').append($('<p>还没有人留言！</p> <a href="#" class="go">去逛逛</a>'));
		comment_box.append(right_comment);
		return ;
	}
	for(var i = 0;i < delet_1.length;i++){
		delet_1[i].index = i;
		delet_1[i].onclick=function () {
			right_comment[this.index].remove();
			Delet_1();
			Answer();
		}
	}
}
function RightHover() {
	var exright = document.getElementsByClassName('exright');
	var exleft = document.getElementsByClassName('exleft')[0];
	var lis = exleft.getElementsByTagName('li');
	var bgc = function () {
		
	}
	for(var i = 0;i < lis.length-3;i++){
		lis[i].index = i;
		lis[i].onclick=function () {
			for(var j = 0;j < exright.length; j++){
				exright[j].className = 'exright';
				// $(lis[j]).attr('class','');
				$(lis[j]).removeClass('bgc');
			}
			exright[this.index].className='exright show_exright';
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
		if(classname=='delet-3'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有换品！快去发布吧！</p> <a href="#" class="go">去发布</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-4'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有租品！快去发布吧！</p> <a href="#" class="go">去发布</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-5'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有卖品！快去发布吧！</p> <a href="#" class="go">去发布</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-6'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有赠品！快去发布吧！</p> <a href="#" class="go">去发布</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-7'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有寄养！快去发布吧！</p> <a href="#" class="go">去发布</a>'));
			content_box.append($right_content);
			return ;
		}else if(classname=='delet-8'){
			var $right_content =  $('<div class="right-content"></div>').append($('<p>还没有收藏</p> <a href="#" class="go">去逛逛</a>'));
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