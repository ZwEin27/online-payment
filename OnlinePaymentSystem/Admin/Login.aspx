<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlinePayment.Admin.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>福建师范大学-大学生网上缴费系统-管理员后台登录页</title>

    <link href="../Content/Css/AdminLogin/login.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        #down
        {
            height: 68px;
            margin-top: 17px;
        }
    </style>

</head>
<body onload= "this.document.all.txtname.focus();"> 
    




    <form id="form1" runat="server">
   <div id="login">
	
	     <div id="top">
		      <div id="top_left"><img src="../Content/Images/AdminLogin/login_03.gif" /></div>
			  <div id="top_center"></div>
		 </div>
		 
		 <div id="center">
		      <div id="center_left"></div>
			  <div id="center_middle">
			       <div id="user">用 户
			         <input id="txtname" type="text" name="textfield" runat="server"/>
			       </div>
				   <div id="password">密   码
				     <input id="txtpwd" type="password" name="textfield2" runat="server"/>
				   </div>
                   <div class="yzm">验证码 <asp:TextBox id="txtYzm" runat="server" Width="48px" />
			        <img id="yanpic" alt="重新获取验证码" runat="server" src="~/Tools/Captcha.ashx?rand=<%= Random.Next(0, 10000)%>" onclick="refreshIMG();" />
                        
                    <script type="text/javascript">
                        function refreshIMG() {
                            var random = Math.random();
                            var imgID = document.getElementById("yanpic");
                            imgID.src = "../Tools/Captcha.ashx?rand=" + random;

                        }
                    </script>
                    			 
    			  
			       </div>

                   <br />
                   <div class="yzm">
                   用户类型：<input type="radio" name="A1" style="width:15px; height:15px;" value="admin" checked>管理员
                 <input type="radio" name="A1" style="width:15px; height:15px;" value="finance" >财务部

                   </div>
                   

                    



				   <div id="btn">
                        <asp:LinkButton ID="lnkLogin" Text="登录" runat="Server" onclick="lnkLogin_Click " />
                   <script type="text/javascript">
                       function document.onkeydown() {
                           if (event.keyCode == 13) {
                               document.all("lnkLogin").click();
                           }
                       }
                   </script>

                       <a href="#">清空</a>
                   
                   </div>
			  
			  </div>
			  <div id="center_right"></div>		 
		 </div>
		 <div id="down">
		      <div id="down_left">
			      <div id="inf">
                       <span class="inf_text">版本信息</span>
					   <span class="copyright">网上缴费系统 2012 v1.0</span>
			      </div>
			  </div>
			  <div id="down_center"></div>		 
		 </div>

	</div>
    </form>
</body>
</html>
