
window.onload=function () {
    createCode();
    btn('btn1');
    btn('btn2');
    var username_inp =document.getElementsByClassName('username_inp')[0];
    var password_inp = document.getElementsByClassName('password_inp')[0];
    var against_inp = document.getElementsByClassName('against_inp')[0];
    var mail_inp = document.getElementsByClassName('mail_inp')[0];
    var sex_inp = document.getElementsByClassName('sex_inp')[0];
    var qq_inp = document.getElementsByClassName('QQ_inp')[0];
    var phone_inp = document.getElementsByClassName('phone_inp')[0];
    var inputCode = document.getElementsByClassName("code")[0];
    document.querySelector('.btn1').addEventListener('click',function (e){
         e.preventDefault();
         // Null(password_inp.value);
         if(check_name(username_inp.value)){
            if(Null(password_inp.value)){
                if(against(password_inp.value,against_inp)){
                    if( Mail_Null(mail_inp.value)){
                        if(Sex(sex_inp.value)){
                            if(check_NULL(qq_inp.value,phone_inp.value)){   
                                if(validate()){
                                  location.replace(location);
                                  window.location.href="file:///D:/Daer/e路纵横/竞赛/swop/logon.html";
                                }
                            }else{
                              qq_inp.addEventListener('input',function () {
                              check_NULL(qq_inp.value,phone_inp.value);
                              },false);
                            }
                        }else{
                           sex_inp.addEventListener('input',function () {
                            Sex(sex_inp.value);
                           },false);
                        }
                    }else{
                      mail_inp.addEventListener('input',function () {
                      Mail_Null(mail_inp.value);
                      },false);
                    }
                }else{
                   against_inp.addEventListener('input',function () {
                      against(password_inp.value,against_inp);
                    },false);
                }
            }else{
               password_inp.addEventListener('input',function () {
                 Null(password_inp.value);
                },false);
            }
         }else{
          username_inp.addEventListener('input',function () {
              check_name(username_inp.value);
            },false);
         }
         
     },false);

    document.querySelector('.btn2').addEventListener('click',function () {
           location.replace(location);
       },false); 
}
var code ; //在全局定义验证码    
function createCode(){  
     code = "";     
     var codeLength = 4;//验证码的长度    
     var checkCode = document.getElementsByClassName("code_yanzheng")[0];     
     var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R',    
     'S','T','U','V','W','X','Y','Z');//随机数    
     for(var i = 0; i < codeLength; i++) {//循环操作    
        var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35）    
        code += random[index];//根据索引取得随机数加到code上    
    }    
    checkCode.value = code;//把code值赋给验证码    
}  
//校验验证码    
function validate(){    
    var inputCode = document.getElementsByClassName("code")[0].value.toUpperCase();
    var span_tixing = document.getElementsByClassName('tixing')[0]; //取得输入的验证码并转化为大写          
    if(inputCode.length <= 0) { //若输入的验证码长度为0    
         span_tixing.innerHTML="验证码不能为空！";
         return false;
    }else if(inputCode != code ) { //若输入的验证码与产生的验证码不一致时    
         span_tixing.innerHTML="验证码输入错误！"; //则弹出验证码输入错误    
        createCode();//刷新验证码    
        document.getElementsByClassName("code")[0].value = "";//清空文本框    
        return false;
    }else { //输入正确时    
        span_tixing.innerHTML="成功!";  
        span_tixing.className="span_tixing succeed";
        console.log('succeed!');
        return true;
    }
}  

function check_name(value) {
    var username_inp =document.getElementsByClassName('username_inp')[0];
    var username_span = document.getElementsByClassName('username_span')[0];
    if(value.length<2){
        username_span.innerHTML='用户名不能小于两个字符';
        username_span.className = 'username_span red';
        return false;  
      }else if(value.length>10){
          username_span.innerHTML='用户名不能大于十个字符';
          username_span.className = 'username_span red';
          // username_inp.value="";  
          return false;  
      }else{
        username_span.innerHTML='成功！';
        username_span.className = 'username_span succeed';
          return true;
      }
      
   

}
function stopPropagation(event){  
    var event=event || window.event;  
    if(event.stopPropagation){  
        event.stopPropagation();  
    }else if(event.cancelBubble){  
        event.cancelBubble=true;  
    }else{  
        return false;  
    }  
}  
    
function Null(number) {
    var password_span = document.getElementsByClassName('password_span')[0];
    if(number==''){
        password_span.innerHTML='密码为空！';
        password_span.className='password_span red';
        return false;
    }else{
        var flag=checkRate(number);
        if(flag){
          console.log(flag);
          return true;
        }else{
          return false;
        }

     }
}
function checkRate(nubmer){  
    var password_span = document.getElementsByClassName('password_span')[0];
    var re =  /^[0-9a-zA-Z]*$/;  //判断字符串是否为数字和字母组合     //判断正整数 /^[1-9]+[0-9]*]*$/    
    if (!re.test(nubmer)){  
        password_span.className='password_span red';
        return false;
    }else{  
        password_span.innerHTML='成功！';
        password_span.className='password_span succeed';
        return true;
    }  
}

function against(number1,number2){
    var against_span = document.getElementsByClassName('against_span')[0];
    if(number2.value==number1){
        against_span.innerHTML="成功！";
        against_span.className="against_span succeed";
        return true;
    }else if(number2.value==''||number2.value!=number1){
        against_span.innerHTML="请确认与上面输入的密码一致！";
        against_span.className="against_span red";
        return false;
    }
}
function Mail_Null(number) {
    var mail_span = document.getElementsByClassName('mail_span')[0];

    if(number==''){
        mail_span.innerHTML='密码为空！';
        mail_span.className='mail_span red';
        return false;
    }else{
        var flag=checkRate_mail(number);
        if(flag){
          return true;
        }else{
          return false;
        }
     }
}
function checkRate_mail(nubmer){  
    var mail_span = document.getElementsByClassName('mail_span')[0];
    var re =  /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;  //判断字符串是否为数字和字母组合     //判断正整数 /^[1-9]+[0-9]*]*$/    
    if (!re.test(nubmer)){
        mail_span.innerHTML="请填写规范的邮箱！";
        mail_span.className='mail_span red';
        return false;
    }else{  
        mail_span.innerHTML='成功！';
        mail_span.className='mail_span succeed';
        return true;
    }  
}
function Sex(nubmer) {
    var sex_span = document.getElementsByClassName('sex_span')[0];
    if(nubmer=='男'||nubmer=='女'){
        sex_span.innerHTML="成功！";
        sex_span.className = 'sex_span succeed';
        return true;
    }else{
        sex_span.innerHTML="只能填写男或女！";
        sex_span.className = 'sex_span red';
        return false;
    }
}

function check_NULL(number1,number2){
     var phone_span = document.getElementsByClassName('phone_span')[0];
   
        if(!number1&&!number2){
        phone_span.innerHTML='请选择填写一种联系方式！';
        phone_span.className='phone_span red';
    }else {
        var flag=check_phone(number2)||check_qq(number1);;
        phone_span.innerHTML='';
        if(flag){
          return true;
        }else{
          return false;
        }

    }
}
function check_qq(number1) {
    var qq_num = /^[1-9][0-9]{4,10}$/gim;
    var qq_span = document.getElementsByClassName('qq_span')[0];
    if(number1){
        if(!qq_num.test(number1)){
        qq_span.innerHTML="请填写规范的QQ号！";
        qq_span.className='qq_span red';
        return false;
      }else{
        // qq_span.innerHTML="成功！";
        // qq_span.className = 'qq_span succeed';
        return true;
      }
    }
    
}
function check_phone(number2) {
  var phone_span = document.getElementsByClassName('phone_span')[0];
    var phone_num =/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$/;
    if(number2){
         if(!phone_num.test(number2)){
        phone_span.innerHTML="请填写规范的电话号码！";
        phone_span.className='mail_span red';
        return false;
      }else{
        phone_span.innerHTML="成功！";
        phone_span.className = 'phone_span green';
        return true;
      }
    }
}
function btn(name) {
  var btn = document.getElementsByClassName(name)[0];
    btn.onmouseover=function () {
      this.className = name+' btn-active';
    }    
     btn.onmouseout=function () {
      this.className = name;
    }     
}   

