<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlinePayment.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上在线缴费系统</title>

<meta name="keywords" content="FJNU,Payment,Online,System" />
<meta name="description" content="A payment online system for fjnu" />




<script type="text/javascript"src="./content/Scripts/jquery-1.6.2.min.js"></script>

<script type="text/javascript"src="./Content/Scripts/Home/TextScroll.js"></script>







<script language="javascript" type="text/javascript">
    function clearText(field) {
        if (field.defaultValue == field.value) field.value = '';
        else if (field.value == '') field.value = field.defaultValue;
    }

</script>

<link href="Content/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="Content/css/xuanxiangka.css" />


<style type="text/css">
.wwwzzjsnet{border:1px solid #eee;width:368px;font-size:12px;height:24px;overflow:hidden;}
.wwwzzjsnet ul{list-style-type:none;margin:0;padding:0;margin-left:32px;}
.wwwzzjsnet ul li{height:26px;line-height:26px;width:320px;float:left;display:inline;}








/* ---------------------- Redslate nav ---------------------- 
.red #slatenav{position:relative;display:block;height:42px;
font-size:11px;font-weight:bold;background:transparent
 url(/uploadfile/image/four-color-nav/redslate_background.gif) 
 repeat-x top left;font-family:Arial,Verdana,Helvitica,sans-serif;
 text-transform:uppercase;}
.red #slatenav ul{margin:0px;padding:0;list-style-type:none;width:auto;}
.red #slatenav ul li{display:block;float:left;margin:0 1px 0 0;}
.red #slatenav ul li a{display:block;float:left;color:#FECCC3;
text-decoration:none;padding:14px 22px 0 22px;height:28px;}
.red #slatenav ul li a:hover,.red #slatenav ul li a.current{
color:#fff;background:transparent
 url(./images/redslate_backgroundOVER.gif) 
 no-repeat top center;}*/
/* ---------------------- END Redslate nav ---------------------- */










</style>






</head>
<body onload= "this.document.all.txtName.focus();">
    <form id="form1" runat="server">
    
    
<script language="JavaScript"> 
<!--    Begin
    self.moveTo(0, 0)
    self.resizeTo(screen.availWidth, screen.availHeight) 
// End --> 
</script> 


<!--Main Wrapper-->
<div id="main_wrapper">



    <div id="left_sidebar">
    
    
    
    
    	
    
    	<!--Site Tittle ,leftTop logo position-->
		<div id="site_title">
            <h1><img src="./Content/Images/LOGO.gif" alt="logo" /></h1>
        </div> <!-- end of site_title --> 
        
        
        <!--LoginForm-->
        <div class="sidebar_box">
        	
            <div class="sidebar_content">
    			<div class="login_form">
                    <input name="name" id="txtName" runat="server"  type="text"  value="用户名/学生号" size="22" tabindex="1" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"> 
                  <div class="cleaner_h10"></div>
                    
                    <input name="password" id="txtPwd" runat="server"  type="password"  value="这里输入密码" size="22" tabindex="2" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"> 
                    <div class="cleaner_h10"></div>


                </div>

                
                    <asp:label id="yzm" Text="验证码：" runat="server" />
                    <asp:TextBox id="txtYzm" runat="server" Width="48px" />
                     <img id="yanpic" alt="重新获取验证码" runat="server" src="~/Tools/Captcha.ashx?rand=<%= Random.Next(0, 10000)%>" onclick="refreshIMG();" /></td>
                        
                    <script type="text/javascript">
                        function refreshIMG() {
                            var random = Math.random();
                            var imgID = document.getElementById("yanpic");
                            imgID.src = "./Tools/Captcha.ashx?rand=" + random;
                            
                        }
                    </script>


                    <div class="cleaner_h10"></div>


    			用户类型：&nbsp;&nbsp;&nbsp;			 
    			 <input type="radio" name="A1" value="undergraduate" checked>本科生
              <input type="radio" name="A1" value="financialdepartment
" >
              研究生
              <br>
              <div class="cleaner_h10"></div>
               <asp:LinkButton  ID="lnkLogin" CssClass="ml-button-9" Text="登陆" 
                     runat="Server" onclick="lnkLogin_Click" />
                     <script type="text/javascript">
                         function document.onkeydown() {
                             if (event.keyCode == 13) {
                                 document.all("lnkLogin").click();
                             }
                         }
                   </script>



               <div class="cleaner"></div>
              <div class="cleaner"></div>
          
          </div>
        </div><!--end of LoginForm-->
        
        <!--left bottom info-->
        <div class="sidebar_box">
        	<div class="sidebar_content">
            	快捷入口： <asp:LinkButton ID="lnkbtn_Admin" Text="进入后台" PostBackUrl="~/Admin/Login.aspx" runat="Server" />
                <br/><br/><br/><br/>
            </div>
        </div> <!--end of left bottom info-->
  </div>
    
    <!--index_content -->
    <div id="index_content">
        
        
        	<!--menu -->
            <div id="index_menu">
                
               
               
                <div class="menu">
                
                	<ul>
                    	<li><a href="#">系统公告</a></li>
                        <li><a href="#">缴费演示</a></li>
                        <li><a href="Home/QueryStudentId.aspx">学号查询</a></li>
                        <li><a href="#">联系我们</a></li>
                        <li><a href="Home/GuestbookList.aspx">问题解答</a></li>

                    </ul>
                	<!-- <img src="images/Logobar.gif" />
                			<div class="red">
                            <div id="slatenav">
                            <ul>
                                <li><a href="http://www.865171.cn/">Home</a></li>
                                <li><a href="http://www.865171.cn/">About Us</a></li>
                                <li><a href="http://www.865171.cn/" class="current">Services</a></li>
                                <li><a href="http://www.865171.cn/">www.865171.cn</a></li>
                            </ul>
                            </div>
                            </div>
                -->
                
                </div>
                 
                <div class="cleaner_h20"></div>
                
                
                
                
                                
                
                
                
                
                
                
                
                
            </div> <!-- end of menu -->
        
        
        
 
        
        	
        
      <!--  <div id="myscroll" class="cls_container">
             <ul>
                <li>
                <a title="超级漂亮的几款清新、常用的网页CSS布局配色实例" target="_blank" href="#">
                超级漂亮的几款清新、常用的网页CSS布局配色实例</a></li>
                <li>
                <a title="CSS制作斜角上有背景图片的Div层" target="_blank" href="#">
                CSS制作斜角上有背景图片的Div层</a></li>
                <li>
                <a title="Js实现的层展开、层折叠效果，默认时候层是折叠的" target="_blank" href="#">
                Js实现的层展开、层折叠效果，默认时候层是折叠的</a></li>
                <li>
                <a title="DIV始终固定在网页右下角位置的CSS实现方法" target="_blank" href="#">
                DIV始终固定在网页右下角位置的CSS实现方法</a></li>
             </ul>
        </div>
        <div id="showhint"></div>
        
        <script type="text/javascript">
            var myscroll=new Scroll("myscroll",24);
        </script>-->

			<div class="cleaner_h20"></div>





       		 <!--content_box -->
            <div class="content_box">
               <!-- <h2>缴费信息</h2>-->
                
              <div class="content_box_inner">
              
              
              
              <script type=text/javascript>
		<!--
                  function setTab(name, cursel, n) {
                      for (i = 1; i <= n; i++) {
                          var menu = document.getElementById(name + i);
                          var con = document.getElementById("con_" + name + "_" + i);
                          menu.className = i == cursel ? "hover" : "";
                          con.style.display = i == cursel ? "block" : "none";
                      }
                  }
	//-->
	</script>
	<div id="lib_Tab1">
		<div class="lib_Menubox lib_tabborder">
			<ul>
				<li class="tit_bj_left"></li>
   				<li id="one1" onclick="setTab('one',1,4)" class="hover"><span>公告</span></li>
   				<li id="one2" onclick="setTab('one',2,4)" ><span>活动</span></li>
   				<li id="one3" onclick="setTab('one',3,4)"><span>项目</span></li>   
			</ul>
		</div>
		<div class="lib_Contentbox lib_tabborder">  
			<div id="con_one_1" class="text_div">
            
            
           <div class="content_info">
                <ul>
                    <li><a href="#">网上缴费系统使用手册</a></li>
                    <li><a href="#">缴费系统动画演示</a></li>
                    <li><a href="#">工行网银注册动画演示</a></li>
                    <li><a href="#">系统登录说明</a></li>
                    <li><a href="#">学生的初始密码是学生的学号</a></li>
                </ul>
            </div>
            
            
            </div><!--end of con_one_1-->
            
			<div id="con_one_2" class="text_div" style="display:none"><a href="http://www.51xuediannao.com/js" target="_blank">留空</a>
            
            </div><!--end of con_one_2-->
            
			<div id="con_one_3" class="text_div" style="display:none"><a href="http://www.51xuediannao.com/jiqiao" target="_blank">留空</a>
            
            
            </div><!--end of con_one_3-->
		</div>
	</div>

              
              
              
              
              
              
              
              
              
              
              		
              
              
              
               <!--<iframe width="100%" scrolling="yes" height="215" frameborder="0" src="SysInfo.html" name="Bulletin">
                    -->
               <div class="cleaner"></div>
                
                
                
              </div>
                
                
     		</div> <!--end of content_box -->
        	
            
            
            
             <!--content_box last-->
             <div class="content_box last">
             
                 <label>支持的银行：</label>
                 <div class="cleaner"></div>
                 <div id="demo">
<div id="indemo">
    <div id="demo1">
    
    
    <a href="#"><img src="./Content/images/bankicon/bank_0.jpg" border="0" /></a>
    <a href="#"><img src="./Content/images/bankicon/bank_1.jpg" border="0" /></a>
    <a href="#"><img src="./Content/images/bankicon/bank_2.jpg" border="0" /></a>
    
    
    
    </div>
<div id="demo2"></div>
</div>
</div>
<script>
<!--
    var speed = 10;
    var tab = document.getElementById("demo");
    var tab1 = document.getElementById("demo1");
    var tab2 = document.getElementById("demo2");
    tab2.innerHTML = tab1.innerHTML;
    function Marquee() {
        if (tab2.offsetWidth - tab.scrollLeft <= 0)
            tab.scrollLeft -= tab1.offsetWidth
        else {
            tab.scrollLeft++;
        }
    }
    var MyMar = setInterval(Marquee, speed);
    tab.onmouseover = function () { clearInterval(MyMar) };
    tab.onmouseout = function () { MyMar = setInterval(Marquee, speed) };
-->
</script>
                 
                 
                 
                 
                 
                 
                    
                   <div class="cleaner">
                   </div>
             </div><!--content_box last-->
     </div><!--end of index_content -->
        
    <div class="cleaner"></div>   
     
</div>	<!--end of Main Wrapper -->
    
    




<!--footer_wrapper-->
<div id="footer_wrapper">
	<div id="footer">
        Copyright © 2012 <a href="#">ZwEin&Weiwei</a> - 
        Designed by <a href="http://www.fjnu-PaySystem.com" target="_parent">ZwEin&Weiwei</a>
    </div> <!-- end of footer -->
</div><!-- end of footer_wrapper -->













    </form>
</body>
</html>
