<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SmallViewToPayOrder.aspx.cs" Inherits="OnlinePayment.OP.SmallViewToPayOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Tools/AsyncBox/skins/Ext/asyncbox.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Content/Scripts/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="../Tools/AsyncBox/AsyncBox.v1.4.5.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#btn_Paid').click(function () {
                $.returnValue = "已付款";
            });
        });

        function setVal() {
            $.returnValue = document.getElementById("text_1").value;
            document.getElementById("tips").innerHTML = "设置成功！点击确定看看吧"
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        恭喜你，订单已经生成！ <br />
        订单编号：
        <asp:label id="lbl_OrderId" Text="" runat="server" />
         <%--<input id="text_1" type="text" value="">
        <input type="button" onclick="setVal()" value="设置返回值" /> --%>
        <br /><br />
        请选择： <br /><br />
        <asp:Button id="btn_PayOrder" Text="去银行付款" runat="server" /> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button id="btn_Paid" Text="已完成付款" runat="server" />
   </form>
</body>
</html>
