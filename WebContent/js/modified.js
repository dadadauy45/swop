window.onload = function() {
	var head = document.querySelector('.head');
	var image_one = document.querySelector('.image-one');
	head.addEventListener('click', function() {
		image_one.click();
	});

	Showimage();
	Modified_1();
	Modified_2();
	RightHover();
	document.querySelector('.btn3').addEventListener('click', function(e) {
		Submit(e);
	})

}

function Submit(e) {
	var imgshow = document.getElementsByClassName('imgshow')[0];

	if (imgshow) {
		alert('修改成功！');
	} else {
		e.preventDefault();
		alert('请上传图片！');

	}
}

function Showimage() {
	$('.image-one').change(
			function() {
				$('.head').css('left', '120px');
				$('.btn3').css('left', '250px');
				var file = $('.image-one').get(0).files[0];
				var reader = new FileReader();
				reader.readAsDataURL(file);
				reader.onload = function(e) {
					var imgshow_src = e.target.result;
					var $imgshow = $('<img class="imgshow" src="' + imgshow_src
							+ '" alt="" />');
					$('.big_img').css('display', 'block');
					$('.big_img').html($imgshow);
				}
			});
}

function RightHover() {
	var exright = document.getElementsByClassName('exright');
	var exleft = document.getElementsByClassName('exleft')[0];
	var lis = exleft.getElementsByTagName('li');
	var bgc = function() {

	}
	for (var i = 1; i < lis.length; i++) {
		lis[i].index = i;
		lis[i].onclick = function() {
			for (var j = 0; j < exright.length; j++) {
				exright[j].className = 'exright';
				// $(lis[j]).attr('class','');
				$(lis[j + 1]).removeClass('bgc');
			}
			exright[this.index - 1].className = 'exright show_exright';
			$(this).addClass('bgc');
		}

	}
}
function Modified_1() {
	var btn = document.querySelector('.btn1');
	btn.addEventListener('click', function(e) {
		e.preventDefault();
		if (check_name('.username_inp', '.user_span')) {
			if (checkRate_mail('.mail_inp', '.mail_span')) {
//				if (Radio('radio', '.sex', 'radio_span')) {
					if (check_NULL('.QQ_inp', '.phone_inp', '.phone_span',
							'.qq_span')) {
						if (Myself_add('.xx')) {
							location.replace(location);
							window.location.href = "";
						} else {
							document.querySelector('.xx').addEventListener(
									'input', function() {
										Myself_add('.xx');
									});
						}
					} else {
						document.querySelector('.QQ_inp').addEventListener(
								'input',
								function() {
									check_NULL('.QQ_inp', '.phone_inp',
											'.phone_span', '.qq_span');
								});
						document.querySelector('.phone_inp').addEventListener(
								'input',
								function() {
									check_NULL('.QQ_inp', '.phone_inp',
											'.phone_span', '.qq_span');
								});
					}
//				} else {
//					document.querySelector('.radio').addEventListener('change',
//							function() {
//								Radio('radio', '.sex', 'radio_span');
//							});
//				}
			} else {
				document.querySelector('.mail_inp').addEventListener('input',
						function() {
							checkRate_mail('.mail_inp', '.mail_span');
						});
			}
		} else {
			document.querySelector('.username_inp').addEventListener('input',
					function() {
						check_name('.username_inp', '.user_span');
					});
		}
	})
}

function Modified_2() {
	var btn = document.querySelector('.btn2');
	btn.addEventListener('click', function(e) {
		e.preventDefault();
		if (Null('.password_inp', '.password_span')) {
			if (against('.password_inp', '.against_inp', '.against_span')) {
				location.replace(location);
				window.location.href = "";
			} else {
				document.querySelector('.against_inp').addEventListener(
						'input',
						function() {
							against('.password_inp', '.against_inp',
									'.against_span');
						});
			}
		} else {
			document.querySelector('.password_inp').addEventListener('input',
					function() {
						Null('.password_inp', '.password_span')
					});
		}

	})

}

function Radio(radioname, sex, spaname) {
	var radio = document.getElementsByClassName(radioname);
	var $sex = $(document.querySelector(sex));
	var $span = $(document.getElementsByClassName(spaname)[0]);
	var flag = false;
	for (var i = 0; i < radio.length; i++) {
		if (radio[i].checked == true) {
			flag = true;
		}
	}
	if (!flag) {
		$span.text('不能不选');
		$span.attr('class', spaname + ' null');
		return false;
	} else {
		$span.text('');
		$span.attr('class', spaname);
		return true;
	}
}

function check_name(inpname, user_span) {
	var $inp = $(document.querySelector(inpname));
	var $user_span = $(document.querySelector(user_span));
	var value = $inp.val();
	if (value.length < 2) {
		$user_span.text('用户名不能小于两个字符');
		$user_span.attr('class', 'user_span null');
		return false;
	} else if (value.length > 10) {
		$user_span.text('用户名不能大于字符');
		$user_span.attr('class', 'user_span null');
		return false;
	} else {
		$user_span.text('');
		$user_span.attr('class', 'user_span');
		return true;
	}
}

function checkRate_mail(inpname, span) {
	var $inp = $(document.querySelector(inpname));
	var value = $inp.val();
	var span = $(document.querySelector(span));
	var re = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/; // 判断字符串是否为数字和字母组合
																				// //判断正整数
																				// /^[1-9]+[0-9]*]*$/
	if (!value) {
		span.text('邮箱不能为空！');
		span.attr('class', 'mail_span null');
		return false;
	} else if (!re.test(value)) {
		span.text('请正确填写邮箱！');
		span.attr('class', 'mail_span null');
		return false;
	} else {
		span.text('');
		span.attr('class', 'mail_span null');
		return true;
	}
}

function check_NULL(QQname, phonename, phone_span, qq_span) {
	var $QQ_inp = $(document.querySelector(QQname));
	var qq_val = $QQ_inp.val();
	var $phone_inp = $(document.querySelector(phonename));
	var phone_val = $phone_inp.val();
	var $phone_span = $(document.querySelector(phone_span));
	var $qq_span = $(document.querySelector(qq_span))
	if (!qq_val && !phone_val) {
		console.log(12);
		$phone_span.text('请选择填写一种联系方式！');
		$phone_span.attr('class', 'phone_span null');
	} else {
		var flag = check_phone(phone_val, $phone_span)
				|| check_qq(qq_val, $qq_span);
		;
		if (flag) {
			$phone_span.text('');
			$phone_span.attr('class', 'phone_span ');
			return true;
		} else {
			return false;
		}
	}
}

function check_qq(number1, qq_span) {
	var qq_num = /^[1-9][0-9]{4,10}$/gim;
	if (number1) {
		if (!qq_num.test(number1)) {
			qq_span.text("请填写规范的QQ号！");
			qq_span.attr('class', 'qq_span null');
			return false;
		} else {
			qq_span.text("");
			qq_span.className = 'qq_span';
			return true;
		}
	}
}

function check_phone(number2, phone_span) {
	var phone_num = /1\d{10}/;
	if (number2) {
		if (!phone_num.test(number2)) {
			phone_span.text("请填写规范的手机号！");
			phone_span.attr('class', 'phone_span null');
			return false;
		} else {
			phone_span.text("");
			phone_span.className = 'phone_span';
			return true;
		}
	}
}

function Myself_add(classname) {
	console.log(classname);
	var $inp = $(document.querySelector(classname));
	var $add_span = $(document.querySelector('.xx_span'));
	console.log($inp);
	var value = $inp.val();
	if (!value) {
		$add_span.text('请填写联系地址！');
		$add_span.attr('class', 'xx_span null');
		return false;
	} else {
		$add_span.text('');
		$add_span.attr('class', 'xx_span');
		return true;
	}
}
var pass_value = '123';
function Null(inpname, spaname) {
	var $password_span = $(document.querySelector(spaname));
	var $inp = $(document.querySelector(inpname));
	var value = $inp.val();
	if (value == '') {
		$password_span.text('请填写初始密码！');
		$password_span.attr('class', 'password_span null');
		console.log(123);
		return false;
	} else if (value != pass_value) {
		$password_span.text('初始密码有误！');
		$password_span.attr('class', 'password_span null');
		return false;
	} else {
		$password_span.text('');
		$password_span.attr('class', 'password_span');
		return true;
	}
}
function against(inpname1, inpname2, spaname) {
	var $against_span = $(document.querySelector(spaname));
	var $inp1 = $(document.querySelector(inpname1));
	var value1 = $inp1.val();
	var $inp2 = $(document.querySelector(inpname2));
	var value2 = $inp2.val();
	if (value2 == '') {
		$against_span.text('确认密码不能为空！');
		$against_span.attr('class', 'against_span null');
		return false;
	} else if (value2 != value1) {
		$against_span.text('密码不一致！');
		$against_span.attr('class', 'against_span null');
		return false;
	} else {
		$against_span.text('');
		$against_span.attr('class', 'against_span');
		return true;
	}
}