window.onload = function() {
	comment();
	btn();
	slideshow();
	first_floor();
}

function slideshow() {
	var slideshow = document.getElementsByClassName('slideshow')[0];
	var ul = document.getElementsByClassName('slideshow_ul')[0];
	var ol = document.getElementsByClassName('slideshow_ol')[0];
	var prev = document.getElementsByClassName('prev')[0];
	var last = document.getElementsByClassName('last')[0];
	var ol_list = ol.children;
	var ul_lis = ul.children;
	var w = slideshow.offsetWidth;
	var num = 1;
	var timer = null;

	slideshow.onmouseover = function() {
		prev.style.display = "block";
		last.style.display = "block";
		clearInterval(timer);

	}
	slideshow.onmouseout = function() {
		prev.style.display = "none";
		last.style.display = "none";
		timer = setInterval(function() {
			num++;
			Start();
			SetTransform(-num * w);
			for (var i = 0; i < ol_list.length; i++) {
				ol_list[i].className = '';
			}
			if (num == 7 || num == 1) {
				ol_list[0].className = 'now';
			} else if (num == 0 || num == 6) {
				ol_list[5].className = 'now';
			} else {
				ol_list[num - 1].className = 'now';
			}
		}, 3000);

	}

	Start = function() {
		ul.style.transition = "all .3s ease 0s";
		ul.style.webkitTransition = "all .3s ease 0s";
	}
	Stop = function() {
		ul.style.transition = 'none';
		ul.style.webkitTransition = 'none';
	}
	SetTransform = function(x) {
		ul.style.transform = "translateX(" + x + "px)";
		ul.style.webkitTransform = "translateX(" + x + "px)";
	}
	prev.addEventListener('click', function(e) {
		clearInterval(timer);
		num++;
		if (num >= 7) {
			num = 1;
		} else if (num <= 0) {
			num = 6;
		}
		Stop();
		SetTransform(-num * w);
		for (var i = 0; i < ol_list.length; i++) {
			ol_list[i].className = '';
		}
		if (num == 7 || num == 1) {
			ol_list[0].className = 'now';
		} else if (num == 0 || num == 6) {
			ol_list[5].className = 'now';
		} else {
			ol_list[num - 1].className = 'now';
		}
	});
	last.addEventListener('click', function(e) {
		clearInterval(timer);
		num--;
		if (num >= 7) {
			num = 1;
		} else if (num <= 0) {
			num = 6;
		}
		Stop();
		SetTransform(-num * w);
		for (var i = 0; i < ol_list.length; i++) {
			ol_list[i].className = '';
		}
		if (num == 7 || num == 1) {
			ol_list[0].className = 'now';
		} else if (num == 0 || num == 6) {
			ol_list[5].className = 'now';
		} else {
			ol_list[num - 1].className = 'now';
		}
	});
	ul.addEventListener('transitionEnd', function() {
		if (num >= 7) {
			num = 1;
		} else if (num <= 0) {
			num = 6;
		}
		Stop();
		SetTransform(-num * w);
	}, false);
	ul.addEventListener('webkitTransitionEnd', function() {
		if (num >= 7) {
			num = 1;
		} else if (num <= 0) {
			num = 6;
		}
		Stop();
		SetTransform(-num * w);
	}, false);

	timer = setInterval(function() {
		num++;
		Start();
		SetTransform(-num * w);
		for (var i = 0; i < ol_list.length; i++) {
			ol_list[i].className = '';
		}
		if (num == 7 || num == 1) {
			ol_list[0].className = 'now';
		} else if (num == 0 || num == 6) {
			ol_list[5].className = 'now';
		} else {
			ol_list[num - 1].className = 'now';
		}

	}, 3000);
}


function comment() {
	var sort = document.getElementsByClassName('sort')[0];
	var ps = sort.getElementsByTagName('p');
	var className = new Array();
	for (var i = 0; i < ps.length; i++) {
		className[i] = ps[i].className;
	}
	for (var i = 0; i < ps.length; i++) {
		ps[i].onmouseover = function() {
			for (var j = 0; j < ps.length; j++) {
				ps[j].className = className[j];
			}
			this.className += ' comment';
		}
		ps[i].onmouseout = function () {
			for (var j = 0; j < ps.length; j++) {
				ps[j].className = className[j];
			}
		}
	}
}


function btn() {
	var btn = document.getElementsByClassName('btn')[0];
	btn.onmouseover = function() {
		this.style.backgroundColor = '#47d62d';
	}
	btn.onmouseout = function() {
		this.style.backgroundColor = '#00b900';
	}
}

function first_floor() {
	// var first_floor_top = document.getElementsByClassName('first-floor-top');
	// // var ul = document.getElementsByClassName('first-floor-top-ul')[0];
	// // var ul_lis = ul.children;
	// // var ul_li_spans = ul.getElementsByTagName('span');

	// var uls = document.getElementsByClassName('first-floor-top-ul');
	// var index =0;
	// var uls_lis_spans = new Array;
	// for(var i = 0 , index =0;i < uls.length; i++,index++){
	// 	for(var j=1;j<13;j+=2){
	// 		uls_lis_spans[index] = uls[i].getElementsByTagName('span');
	// 	}
	// }

	// var first_floor_bottom_all = document.getElementsByClassName('first-floor-bottom-all');
	// var divs =new Array;
	// for(var i = 0,index = 0;i < first_floor_bottom_all.length; i++,index++){
	// 	for(var j=1;j<10;j+=2){
	// 		divs[index]= first_floor_bottom_all[i].children;
	// 	}
	// }
	// console.log(uls_lis_spans.length);
	// console.log(uls_lis_spans[0].length);
	// console.log(uls_lis_spans[0][0]);
	// console.log(divs.length);
	// console.log(divs[0].length);
	// console.log(divs[0][0]);

	// for(var i=0;i<uls_lis_spans.length;i++){
	// 	  for(var j=0;j<uls_lis_spans[i].length;j++){
	// 		uls_lis_spans[i][j].onmouseover=function (e) {
	// 			for(var n=0;n<divs.length;n++){
	// 				for(var m =0;m<divs[n].length;m++){
	// 					this.index = m;
	// 					if(n==0){
	// 						divs[0][m].className="first-floor-bottom hide"; 
	// 						uls_lis_spans[0][m].className = "none";
	// 					}else if(n==1){
	// 						divs[1][m].className="first-floor-bottom hide"; 
	// 						uls_lis_spans[1][m].className = "none";
	// 					}
	// 				}
	// 				divs[n][this.index].className="first-floor-bottom show";				}

	// 			this.className="block";
	// 		}
	// 	}
	// }

	var first_floor_top_ul = document.getElementsByClassName('first-floor-top-ul')[0];
	var first_floor_top_ul_spans = first_floor_top_ul.getElementsByTagName('span');
	var first_floor_bottom = document.getElementsByClassName('first-floor-bottom');

	var first_floor_bottom_lis = new Array;
	for (var i = 0; i < first_floor_bottom.length; i++) {
		first_floor_bottom_lis[i] = first_floor_bottom[i].getElementsByTagName('li');
	}


	console.log(first_floor_bottom_lis.length);
	for (var i = 0; i < first_floor_top_ul_spans.length; i++) {
		first_floor_top_ul_spans[i].index = i;
		first_floor_top_ul_spans[i].onmouseover = function() {
			for (var j = 0; j < first_floor_bottom.length; j++) {
				first_floor_bottom[j].className = 'first-floor-bottom hide';
				first_floor_top_ul_spans[j].className = 'none';
			}

			first_floor_bottom[this.index].className = 'first-floor-bottom show';
			this.className = 'block';
		}

	}
	// for(var i=0;i<first_floor_bottom.length;i++){
	// 	for(var j = 0;j<first_floor_bottom_lis.length;j++){
	// 		first_floor_bottom_lis[i][j].onmouseover=function () {

	// 		}
	// 	}
	// }

}