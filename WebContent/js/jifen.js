window.onload=function () {
	Scroll();
	RightHover();
}
function Scroll() {
	// DOM:
	// window.onscroll=function () {
	// 	console.info(window.scrollY);
	// }

	// jquery :
	$(window).scroll(function () {
		var $exleft = $(document.querySelector('.exleft'));
		var scrollTop = $(window).scrollTop();
		if(scrollTop>365){
			$exleft.css('position','fixed');
			$exleft.css('left','170px');
		}else if(scrollTop<365){
			$exleft.css('position','absolute');
			$exleft.css('left','0');
		}
	});
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