   (function($) {
        	$.fn.jqueryzoom = function(options) {
				var settings = {
					xzoom: 200,
					yzoom: 200,
					offset: 10,
					position: "right",
					lens: 1,
					preload: 1
				};
				if (options) {
					$.extend(settings, options);
				}
				var noalt = '';
				$(this).hover(function() {
					var imageLeft = $(this).offset().left;
					var imageTop = $(this).offset().top;
					var imageWidth = $(this).children('img').get(0).offsetWidth;
					var imageHeight = $(this).children('img').get(0).offsetHeight;
					// noalt = $(this).children("img").attr("alt");
					var bigimage = $(this).children("img").attr("src");
					console.log(bigimage);
					$(this).children("img").attr("alt", '');
					if ($("div.bigger").get().length == 0) {
						$(this).after("<div class='bigger'><img class='bigimg' src='"+bigimage+"'/></div>");
						$(this).append("<div class='mask'>&nbsp;</div>");
					}
					if (settings.position == "right") {
						if (imageLeft + imageWidth + settings.offset + settings.xzoom > screen.width) {
							leftpos = imageLeft - settings.offset - settings.xzoom;
						} else {
							leftpos = imageLeft + imageWidth + settings.offset;
						}
					} else {
						leftpos = imageLeft - settings.xzoom - settings.offset;
						if (leftpos < 0) {
							leftpos = imageLeft + imageWidth + settings.offset;
						}
					}
					$("div.bigger").show();
					if (!settings.lens) {
						$(this).css('cursor', 'crosshair');
					}
					$(document.body).mousemove(function(e) {
						mouse = new MouseEvent(e);
						var bigwidth = $(".bigimg").get(0).offsetWidth;
						var bigheight = $(".bigimg").get(0).offsetHeight;
						var scaley = 'x';
						var scalex = 'y';
						if (isNaN(scalex) | isNaN(scaley)) {
							var scalex = (bigwidth / imageWidth);
							var scaley = (bigheight / imageHeight);
							$("div.mask").width((settings.xzoom) / (scalex * 1));
							$("div.mask").height((settings.yzoom) / (scaley * 1));
							if (settings.lens) {
								$("div.mask").css('visibility', 'visible');
							}
						}
						xpos = mouse.x - $("div.mask").width() / 2 - imageLeft;
						ypos = mouse.y - $("div.mask").height() / 2 - imageTop;
						if (settings.lens) {
							xpos = (mouse.x - $("div.mask").width() / 2 < imageLeft) ? 0 : (mouse.x + $("		div.mask").width() / 2 > imageWidth + imageLeft) ? (imageWidth - $("div.mask"		).width() - 2) : xpos;
							ypos = (mouse.y - $("div.mask").height() / 2 < imageTop) ? 0 : (mouse.y + $("		div.mask").height() / 2 > imageHeight + imageTop) ? (imageHeight - $("		div.mask").height() - 2) : ypos;
						}
						if (settings.lens) {
							$("div.mask").css({
								top: ypos,
								left: xpos
							});
						}
						scrolly = ypos;
						$("div.bigger").get(0).scrollTop = scrolly * scaley;
						scrollx = xpos;
						$("div.bigger").get(0).scrollLeft = (scrollx) * scalex;
					});
				},
				 function() {
					$(this).children("img").attr("alt", noalt);
					$(document.body).unbind("mousemove");
					if (settings.lens) {
						$("div.mask").remove();
					}
					$("div.bigger").remove();
				});
			}
		})(jQuery);


       function MouseEvent(e) {
			this.x = e.pageX;
			this.y = e.pageY;
		}

		function change_img(small,src) {
			var big_img_box = document.getElementsByClassName('big_img_box')[0];

			var img = big_img_box.children[0];

			console.log(small.length);

			for(var i = 0;i < small.length;i ++ ){
				small[i].index = i;
				small[i].onmouseover=function () {

					img.setAttribute('src',src[this.index]);
				}
			}

		}

        $(function() {
        	
        	var small_img_box = document.getElementsByClassName('small_img_box');


        	var src = new Array();

        	for(var i = 0;i < small_img_box.length;i ++ ){
				src[i] = small_img_box[i].children[0].getAttribute('src');
			}

			change_img(small_img_box,src);

			$(".big_img_box").jqueryzoom({
				xzoom: 400,
				yzoom: 290,
				offset: 10,
				position: "right",
				preload: 1,
				lens: 1
			});
	
			$('.face-icon').SinaEmotion($('.text'));
			Face();

		});
        var collect = document.getElementsByClassName('collect')[0];
        var collect_num = document.getElementsByClassName('collect_num')[0];
        collect.onclick=function(){
        	console.log($(collect_num).text());
        	if($(collect_num).text()=='0'){
        		$(collect_num).text('1');
        	}else{
        		$(collect_num).text('0');
        	}
        }
        
	function Face(){
		var comment_box_num = document.getElementsByClassName('comment_box_num')[0];
		var zan = document.getElementsByClassName('zan');
		var comment_num = document.getElementsByClassName('comment_num')[0];
		var info_show = document.getElementsByClassName('info-show')[0];
		var lis = info_show.getElementsByTagName('li');
		$('.submit-btn').on('click',function(){	
			out();
			$(comment_box_num).text(lis.length);
			$(comment_num).text(lis.length);
			for(var i = 0;i<zan.length;i++){
				zan[i].onclick=function(){
					$(this).text('已赞');
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
	var date = new Date();
	var html;
	function reply(content){
		html  = '<li>';
		html += '<div class="head-face">';
		html += '<img src="images/1.jpg" / >';
		html += '</div>';
		html += '<div class="reply-cont">';
		html += '<p class="username">小小红色飞机</p>';
		html += '<p class="comment-body">'+content+'</p>';
		html += '<p class="comment-footer"><span class="time">'+date.toLocaleTimeString()+'</span> <span class="answer">回复</span><span style="margin:5px;" class="zan">点赞</span></p>';
		html += '</div>';
		html += '</li>';
		return html;
	}
