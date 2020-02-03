window.onload=function () {
	$('.face-icon').SinaEmotion($('.text'));
	Img();
	Face();
	createCode();
	Check_all();
}
function Face(){
	$('.submit-btn').on('click',function(){
		out();
	var ul = document.getElementsByClassName('info-ul')[0];
	var h = ul.offsetHeight;
	if(h>338){
		$(ul).css('height','338px');
		$(ul).css('overflow-y','auto');
	}
	ul.scrollTop = ul.scrollHeight;
	});
}
function Img() {
	Img_out();
}

function Img_out() {
	$('.img-icon').on('click',function () {
		$('.image-one').click();
	})
	var ul = document.getElementsByClassName('info-ul')[0];

	$('.image-one').change(function(){
      var file = $('.image-one').get(0).files[0];
      var reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload=function(e){
   		var imgshow_src = e.target.result;
        var imgshow = ('<img class="imgshow" src="'+imgshow_src+'" alt="" />');
        $('.info-show ul').append(reply(imgshow));
       var li = document.getElementsByTagName('li');
       var li_h = null;

        for(var i =0;i<li.length;i++){
        li_h +=li[i].offsetHeight;
        }
        console.log(li_h);
		var h = ul.offsetHeight;
		console.log(document.getElementsByClassName('imgshow')[0].offsetHeight);
		console.log(h);
		if(li_h>338){
		$(ul).css('height','338px');
		$(ul).css('overflow-y','auto');
			ul.scrollTop = ul.scrollHeight;
		}
      }
    
    }); 
}
function out() {
		var inputText = $('.text').val();
		console.log(inputText);
 	     if(inputText){
 	         var newString = $(".text").val().replace(/\n/g, '_@').replace(/\r/g, '_#');
 	         newString = newString.replace(/_#_@/g, '<br/>');//IE7-8
 	         newString = newString.replace(/_@/g, '<br/>');//IE9、FF、chrome
 	         newString = newString.replace(/\s/g, '&nbsp;');//空格处理
 	         $('.info-show ul').append(reply(AnalyticEmotion(newString)));
 	         $('.text').val('');
 	     }else{
 	         alert('请输入内容！')
 	     }
}
	
var html;
var date = new Date();
function reply(content){
		html  = '<li>';
		html += '<div class="head-face">';
		html += '<img src="images/1.jpg" / >';
		html += '</div>';
		html += '<div class="reply-cont">';
		html += '<p class="username"><span class="time">'+date.toLocaleTimeString()+'</span></p>';
		html += '<p class="comment-body">'+content+'</p>';
		html += '<p class="comment-footer"></p>';
		html += '</div>';
		html += '</li>';
		return html;
}

function Check_all() {
	var btn = document.querySelector('.btn');
	btn.addEventListener('click',function (e) {
		e.preventDefault();
		if(check_name('.username_inp_1','username_span_1')){
			if(HuanKe_add('.xx')){
				if(Myself_phone('.phone_inp')){
					if(isIdCard('.ID_inp','.ID_num_span')){
						if(check_name('.username_inp_2','username_span_2')){
							if(validate()){
						  			location.replace(location);
                          			window.location.href="";
                          		}else{
								sex_inp.addEventListener('input',function () {
                            		Sex(sex_inp.value);
                           			},false);
							}
                      	}else{
                      		document.querySelector('.checked').addEventListener('input',function () {
								check_name('.username_inp_2','username_span_2')
							});
                      	}
                    }else{
					document.querySelector('.ID_inp').addEventListener('input',function () {
						isIdCard('.ID_inp','.ID_num_span')
						});
					}
                }else{
					document.querySelector('.phone_inp').addEventListener('input',function () {
						Myself_phone('.phone_inp')
					});
				}
            }else{
				document.querySelector('.xx').addEventListener('input',function () {
					HuanKe_add('.xx');
				});
			}
        }else{
			document.querySelector('.username_inp_1').addEventListener('input',function () {
				check_name('.username_inp_1','username_span_1');
			});
		}
		
	})
}

function Myself_phone(classname) {
	console.log(classname);
	var $inp = $(document.querySelector(classname));
	var $phone_span = $(document.querySelector('.phone_span'));
	console.log($inp);
	var value = $inp.val();
	var phone_num =/1\d{10}/;
    if(value){
        if(!phone_num.test(value)){
        	$phone_span.text('请正确填写！');
        	$phone_span.attr('class','phone_span null');
        	return false;
      	}else{
      		$phone_span.text('');
        	$phone_span.attr('class','phone_span');
        	return true;
      	}
    }else{
    	$phone_span.text('不能为空！');
        $phone_span.attr('class','phone_span null');
    	return false;
    }
}

function HuanKe_add(classname) {
	console.log(classname);
	var $inp = $(document.querySelector(classname));
	var $add_span = $(document.querySelector('.xx_span'));
	console.log($inp);
	var value = $inp.val();
    if(!value){
        $add_span.text('请填写联系地址！');
        $add_span.attr('class','xx_span null');
        return false;
    }else{
    	$add_span.text('');
    	$add_span.attr('class','xx_span');
    	return true;
    }
}

function check_name(classname,spaname) {
	var $username_inp = $(document.querySelector(classname));
	var $value = $username_inp.val();
	var $username_span = $(document.getElementsByClassName(spaname));
    if($value.length<=0){
        $username_span.text('姓名不能为空');
        $username_span.attr('class', spaname+' null');
        return false;  
      }else{
       	$username_span.text('');
        $username_span.attr('class',spaname);
          return true;
      }
}

var code ; 
function createCode(){  
     code = "";     
     var codeLength = 4;    
     var checkCode = document.getElementsByClassName("code_yanzheng")[0];     
     var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R',    
     'S','T','U','V','W','X','Y','Z');   
     for(var i = 0; i < codeLength; i++) {   
        var index = Math.floor(Math.random()*36);  
        code += random[index];   
    }    
    checkCode.value = code;
}  
function validate(){    
    var inputCode = document.getElementsByClassName("code")[0].value.toUpperCase();
    var span_tixing = document.getElementsByClassName('tixing')[0];     
    if(inputCode.length <= 0) { 
         span_tixing.innerHTML="不能为空！";
         span_tixing.className = 'tixing null';
         return false;
    }else if(inputCode != code ) {   
         span_tixing.innerHTML="输入错误！";   
          span_tixing.className = 'tixing null';
        createCode();
        document.getElementsByClassName("code")[0].value = "";
        return false;
    }else {  
        span_tixing.innerHTML="";  
        span_tixing.className="span_tixing null";
        return true;
    }
}  

function isIdCard(classname,spaname){
	var $ID_inp = $(document.querySelector(classname));
	var $value = $ID_inp.val();
	var $ID_num_span = $(document.querySelector(spaname));
	var patrn = /^\s*\d{15}\s*$/;
	var patrn1 = /^\s*\d{16}[\dxX]{2}\s*$/;
	if($value){
		if(!patrn.exec($value) && !patrn1.exec($value)){
			$ID_num_span.text('身份证号有误');
        	$ID_num_span.attr('class','ID_num_span null');
			return false;
		}else{
			$ID_num_span.text('');
        	$ID_num_span.attr('class','ID_num_span');
		return true;
		}
	}else{
		$ID_num_span.text('身份证号为空');
        $ID_num_span.attr('class','ID_num_span null');
		return false;
	}
	
}
