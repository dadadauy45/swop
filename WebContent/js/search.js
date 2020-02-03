$(function () {
			$('.inp').keyup(function () {
				var qy = $('.inp').val();
				// console.log(qy);
				var url = 'https://sp0.baidu.com/5a1Fazu8AA54nxGko9WTAnF6hhy/su?wd='+ qy;
				// console.log(url);
				 window.baidu = {};
    			//script载入完之后会调用这个函数，sug就是suggest的内容
   				 window.baidu.sug = function(sug){
   	    				var ul = $('<ul></ul>');
					console.log(sug);
					if(sug.s!=''){
						$.each(sug.s,function (i,element) {
							var li =$('<li></li>');
							var e = li.html('<a href="#">'+element+'</a>');
							$(ul).append(e);
							});
							$('.hide_box').append(ul).show();
   						}
					}
				querySUG(url);
			});
		});

		function querySUG(url) {
			$('.hide_box').text('');
			$.ajax({
				type:'get',
				url:url,
				dataType : 'jsonp',
				jsonp : 'cd',
				async : true,
			});
		}