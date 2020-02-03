window.onload=function () {
	a_click();
	btn();
	 waterFull('juti_goods','box');
	 pic();
	 
}
 window.onresize=function () {
	 	waterFull('juti_goods','box');

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
function a_click(){
	var function_div = document.getElementById('function');
	var function_a = function_div.getElementsByTagName('a');
	var goods_div = document.getElementById('goods');
	var goods_a = goods_div.getElementsByTagName('a');
	var degree_div = document.getElementById('degree');
	var degree_a = degree_div.getElementsByTagName('a');
	var box_add_right = document.getElementsByClassName('box-add-right')[0];
	var box_add_a = box_add_right.getElementsByTagName('a');
	// console.log(a.length);
	for(var i=0;i<function_a.length;i++){
		function_a[i].onclick=function () {
			for(var j = 0;j<function_a.length;j++){
				function_a[j].className = '';
			}
			this.className='active';
		}
	}
	for(var i=0;i<goods_a.length;i++){
		goods_a[i].onclick=function () {
			for(var j = 0;j<goods_a.length;j++){
				goods_a[j].className = '';
			}
			this.className='active';
		}
	}

	for(var i=0;i<degree_a.length;i++){
		degree_a[i].onclick=function () {
			for(var j = 0;j<degree_a.length;j++){
				degree_a[j].className = '';
			}
			this.className='active';
		}
	}

	for(var i=0;i<box_add_a.length;i++){
		box_add_a[i].onclick=function () {
			for(var j = 0;j<box_add_a.length;j++){
				box_add_a[j].className = '';
			}
			this.className='active';
		}
	}

}

function waterFull(parent,children){
 var oParent = document.getElementById(parent);
 //var oBoxs = parent.querySelectorAll(".box");
console.log(oParent);
  var oBoxs = getByClass(oParent,children);
  // console.log(oBoxs);

 // 计算整个页面显示的列数

 var oBoxW = oBoxs[0].offsetWidth;
 console.log(oBoxW);

 var cols = Math.floor(window.innerWidth/oBoxW);
console.log(document.documentElement.clientWidth);
 // console.log(document.documentElement.clientWidth);
 //设置main的宽度，并且居中

oParent.style.cssText = 'width:'+oBoxW * cols +'px; margin: 0 auto';
 //找出高度最小的图片，将下一个图片放在下面

 //定义一个数组，存放每一列的高度，初始化存的是第一行的所有列的高度

 var arrH = [];

 for(var i = 0; i< oBoxs.length ; i++){
  if(i < cols){
   arrH.push(oBoxs[i].offsetHeight);
  }
  else{
   var minH = Math.min.apply(null,arrH);

   var minIndex = getMinhIndex(arrH,minH);

   oBoxs[i].style.position = 'absolute';
   oBoxs[i].style.top= minH + 'px';
   oBoxs[i].style.left = minIndex * oBoxW + 'px'; 
  // oBoxs[i].style.left = arrH[minIndex].;

   arrH[minIndex] += oBoxs[i].offsetHeight; 
  }
 }


}
function getByClass(parent,className){

 var boxArr = new Array();//用来获取所有class为box的元素

 oElement = parent.getElementsByTagName('*');

 for (var i = 0; i <oElement.length; i++) {

  if(oElement[i].className == className){

   boxArr.push(oElement[i]);

  }
 };
 return boxArr;
}


//获取当前最小值得下标
function getMinhIndex(array,min){

 for(var i in array){

  if(array[i] == min)

   return i;
 }
}

function pic() {
	var pic = document.getElementsByClassName('pic');
	console.log(pic.length);

	for(var i = 0;i < pic.length;i++){
		pic[i].onmouseover=function () {
			for(var j = 0;j < pic.length; j++){
				pic[j].className = 'pic';
			}
			this.className +=' pic-active';
		}
	}

}
