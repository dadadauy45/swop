window.onload=function () {
	box_shadow('btn','down')
}

function box_shadow(btnname,cssname) {
		var btn = document.getElementsByClassName(btnname)[0];
			$(btn).mousedown(function () {
				$(this).attr('class',btnname +' '+cssname);
			}).mouseup(function () {
				$(this).attr('class',btnname);
			}).click(function (e) {
				// e.preventDefault();
			});
	}