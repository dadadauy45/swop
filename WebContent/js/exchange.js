$(function () {
	var image_two = document.querySelector('.image-two');
	var image_one = document.querySelector('.image-one');
	image_two.addEventListener('click',function () {
		image_one.click();
	});
	Submit('.pre-inp');
	Submit_hover('pre-inp');
	Submit_hover('image-two');
	Showimage();
});

function Submit_hover(classname) {
	
	var inp = document.getElementsByClassName(classname)[0];
	inp.onmouseover=function () {
		this.className='color '+classname;
	}
	inp.onmouseout=function () {
		this.className=classname;
	}
}

function Submit(inp){	
	var pre_inp = document.querySelector(inp);
	pre_inp.addEventListener('click',function (e) {
		e.preventDefault();
		if(Selected('.main_sort','.select_box_one','main_span')){
			if(Selected('.secondary_sort','.select_box_two','secondary_span')){
				if(Title('.titlename','.titlename_inp','titlename_span')){
					if(Radio('radio','.city','radio_span')){
						if(Checked('.checked','.agree','checked_span')){
							if(Myself_add('.xx')){
								if( Myself_phone('.phone_num')){
						  			location.replace(location);
                          			window.location.href="";
                          		}else{
                          			document.querySelector('.phone_num').addEventListener('input',function () {
										Myself_phone('.phone_num');
									});
                          		}
							}else{
								document.querySelector('.xx').addEventListener('input',function () {
										Myself_phone('.xx');
									});
							}
                      	}else{
                      		document.querySelector('.checked').addEventListener('click',function () {
								Checked('.checked','.agree','checked_span');
							});
                      	}
                    }else{
					document.querySelector('.radio').addEventListener('change',function () {
						Radio('radio','.city','radio_span');
						});
					}
                }else{
					document.querySelector('.titlename_inp').addEventListener('input',function () {
						Title('.titlename','.titlename_inp','titlename_span');
					});
				}
            }else{
				document.querySelector('.secondary_sort').addEventListener('change',function () {
					Selected('.secondary_sort','.select_box_two','secondary_span');
				});
			}
        }else{
			document.querySelector('.main_sort').addEventListener('change',function () {
				Selected('.main_sort','.select_box_one','main_span');
			});
		}
		
	})
}

function Selected(selname,boxname,spaname) {
	var $sel = $(document.querySelector(selname));
	var $box = $(document.querySelector(boxname));
	var $span = $(document.getElementsByClassName(spaname)[0]);
	var opt = $sel.children;
	if($sel.val() == '0' ){
		$span.text('不能不选');
		$span.attr('class','null '+spaname);
		return false;
	}else{
		$span.text('');
		$span.attr('class',spaname);
		return true;
	}
}

function Title(boxname,inpname,spaname) {
	var $box = $(document.querySelector(boxname));
	var $inp = $(document.querySelector(inpname));
	var $span = $(document.getElementsByClassName(spaname)[0]);
	console.log($inp.val());
	if(!$inp.val()){
		$span.text('必填不能为空');
		$span.attr('class','null '+spaname);
		return false;
	}else{
		$span.text('可以增加一些关键字帮助搜索');
		$span.attr('class',spaname);
		return true;
	}
}

function Radio(radioname,city,spaname) {
	var radio = document.getElementsByClassName(radioname);
	var $city = $(document.querySelector(city));
	var $span = $(document.getElementsByClassName(spaname)[0]);
	var flag = false;
	for(var i = 0;i<radio.length;i++){
		if(radio[i].checked == true){
			flag=true;
		}
	}
	if(!flag){
		 $span.text('不能不选');
		 $span.attr('class',spaname+' null');
		 return false;
	}else{
		 $span.text('');
		 $span.attr('class',spaname);
		return true;
	}
}

function Checked(inpname,box,spaname) {
	var $inpname = $(document.querySelector(inpname));
	var $box = $(document.querySelector(box));
	var $span = $(document.getElementsByClassName(spaname)[0]);
	
	var flag = false;
	if($inpname.is(":checked")){
		flag = true;
	}
	if(!flag){
		 $span.text('不能不选');
		 $span.attr('class',spaname+' null');
		 return false;
	}else{
		 $span.text('');
		 $span.attr('class',spaname);
		return true;
	}
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
        	$phone_span.text('请正确填写联系方式！');
        	$phone_span.attr('class','phone_span null');
        	return false;
      	}else{
      		$phone_span.text('');
        	$phone_span.attr('class','phone_span');
        	return true;
      	}
    }else{
    	$phone_span.text('请填写联系方式！');
        $phone_span.attr('class','phone_span null');
    	return false;
    }
}
function Myself_add(classname) {
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


function Showimage(){
    $('.image-one').change(function(){
    	var spans = Spans();
    	Delet();
    	if(spans.length>4){
      		alert('最多上传五张图片！');
      		return ;
      }
      var file = $('.image-one').get(0).files[0];
      var reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload=function(e){
   		var imgshow_src = e.target.result;
        var $imgshow = $('<div class="small_box clearfix"><img class="imgshow" src="'+imgshow_src+'" alt="" /><span class="delet_span">x</span></div>')
        $('.imgshow_box').css('display','block');
        $('.imgshow_box').append($imgshow);
        var spans = Spans();
        Delet();
      }
    });
}

function Spans() {
	var spans =document.getElementsByClassName('delet_span');
	return spans;
}

function Delet() {
	var spans = Spans();
	var small_box = document.getElementsByClassName('small_box');
	for(var i = 0;i < spans.length; i++){
		console.log(123);
		spans[i].index = i;
		spans[i].onclick=function () {
			small_box[this.index].remove();
			Delet();
		}
	}
	if(!spans.length){
		$('.imgshow_box').css('display','none');
	}
}

