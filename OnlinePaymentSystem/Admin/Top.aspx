﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="OnlinePayment.Admin.Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script language=JavaScript>
    function logout() {
        if (confirm("您确定要退出控制面板吗？"))
            top.location = "/Admin/Login.aspx";
        return false;
    }
</script>
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
<meta http-equiv="refresh" content="60">
<script language=JavaScript1.2>
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<base target="main">
<link href="../Content/Css/Admin/skin.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0">
    <form id="form1" runat="server">
   
            <table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><img src="../Content/images/Admin/logo.gif" width="262" height="64"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt">
        
        
        <b><%--<%=session("admin_name")%>--%></b>
         <%if (Session["Admin"] != null){ %>
           管理员： <%=admin.LoginId %>
         <%}else if (Session["Finance"] != null){%>
           财务部门：
         <%} else{%>
            未登陆
         <%}%>
         您好,感谢登陆使用！
         </td>
        <td width="22%"><a href="#" target="_self" onClick="logout();"><img src="../Content/images/Admin/out.gif" alt="安全退出" width="46" height="20" border="0"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>











    </form>
</body>
</html>