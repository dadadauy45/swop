window.onload=function () {
	btn();
}
function btn() {
  var btn = document.getElementsByTagName('button')[0];
  console.log(btn);
    btn.onmouseover=function () {
      this.className = 'btn-active';
    }    
     btn.onmouseout=function () {
      this.className = '';
    }     
}   
