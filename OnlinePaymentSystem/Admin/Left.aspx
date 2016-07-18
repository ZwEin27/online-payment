<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Left.aspx.cs" Inherits="OnlinePayment.Admin.Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../Content/Scripts/Admin/prototype.lite.js" type="text/javascript"></script>
<script src="../Content/Scripts/Admin/moo.fx.js" type="text/javascript"></script>
<script src="../Content/Scripts/Admin/moo.fx.pack.js" type="text/javascript"></script>

<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(../Content/images/Admin/menu_bgS.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(../Content/images/Admin/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(../Content/images/Admin/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(../Content/images/Admin/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(../Content/images/Admin/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
       
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
      <h1 class="type"><a href="javascript:void(0)">网站常规管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="../Content/images/Admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="Right.aspx" target="main">欢迎界面</a></li>
          <li><a href="../Default.aspx" target="main">登陆前台</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">缴费事务管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="../Content/images/Admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="PostPaymentProject.aspx" target="main">添加学费项目</a></li>
          <li><a href="PostUtilityPyament.aspx" target="main">添加水电费项目</a></li>
          <li><a href="PaymentProjectList.aspx" target="main">项目列表</a></li>
          <li><a href="#" target="main">催缴提醒</a></li>
          <li><a href="#" target="main">定期统计</a></li>
          <li><a href="PaymentCharView.aspx" target="main">缴费报表</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">网站内容管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="../Content/images/Admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="PostAnnouncement.aspx" target="main">发布公告</a></li>
		  <li><a href="AnnoucementList.aspx" target="main">公告列表</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">注册用户管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="../Content/images/Admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="UserManagerView.aspx" target="main">用户管理</a></li>
          <li><a href="GuestbookBGView.aspx" target="main">留言管理</a></li>
          <li><a href="OperatorManagerView.aspx" target="main">操作员管理</a></li>
          <li><a href="AuthorityManagerView.aspx" target="main">权限管理</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">站点信息统计</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="../Content/images/Admin/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="#" target="main">运行统计</a></li>
          <li><a href="#" target="main">登陆统计</a></li>
          <li><a href="#" target="main">内容统计</a></li>
          <li><a href="#" target="main">用户统计</a></li>
        </ul>
      </div>


    </div>
        <h1 class="type"><a href="javascript:void(0)">其它参数管理</a></h1>
      <div class="content">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="../Content/images/Admin/menu_topline.gif" width="182" height="5" /></td>
            </tr>
          </table>
        <ul class="MM">
            <li><a href="#" target="main">管理设置</a></li>
        </ul>
      </div>
      </div>
        <script type="text/javascript">
            var contents = document.getElementsByClassName('content');
            var toggles = document.getElementsByClassName('type');

            var myAccordion = new fx.Accordion(
			toggles, contents, { opacity: true, duration: 400 }
		);
            myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
    </form>
</body>
</html>
