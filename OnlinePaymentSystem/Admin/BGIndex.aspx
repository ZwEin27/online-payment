<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BGIndex.aspx.cs" Inherits="OnlinePayment.Admin.BGIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>大学生网上缴费系统后台</title>
</head>

 <frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
        <frame src="Top.aspx" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
        <frameset/>
      <frameset cols="200,*"  rows="560,*" id="frame">
        <frame src="Left.aspx" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
        <frame src="Right.aspx" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
      <frame src="UntitledFrame-7"><frame src="UntitledFrame-8"></frameset>
<noframes>
<body>
    <form id="form1" runat="server">
    </form>
</body>
</noframes>
</html>
