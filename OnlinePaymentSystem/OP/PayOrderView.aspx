<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="PayOrderView.aspx.cs" Inherits="OnlinePayment.OP.PayOrderView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    *{
	    margin:0;
	    padding:0;
    }
    input{
        width:20px;
        padding:0px;
        margin:0px;
        border:0px solid #e8e7e1;
        background:inherit;
    }
    table{
	    border-collapse: collapse;
	    table-layout:automatic;
	    width:99%;
	    margin:0px;
        padding:0px;
    }
    td,th,thead,tbody
    {
    } 
    .inputdiy input
     {   margin:0px;
        padding:0px;
    
        width:19px;
        padding:0px;
        margin:0px;
        border:0px solid #e8e7e1;
        background:inherit;
    }
    
    </style>
    
    <script type="text/javascript">
        $(function () {
            $('#btn_alert').click(function () {
                asyncbox.alert('欢迎使用 jQuery.AsyncBox 弹窗插件！<br />版本：v1.4<br />日期：2011-5-15<br />下载：<a href="http://www.16sucai.com/" target="_blank">http://www.16sucai.com</a>', 'asyncbox', function () {
                    asyncbox.tips('Pass', 'success')
                });
            });
            $('#btn_html').click(function () {
                asyncbox.open({
                    url: 'tt.html',
                    width: 400,
                    height: 300

                });
            });
        });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<div class="box rightnow">
    <h3 class="reallynow">确认缴费订单</h3>
    
        <p class="youhave">
            恭喜你，已经生成缴费订单 <br />
            您的订单编号为： <asp:label id="lbl_OrderId" runat="server" />  <br />
            请尽快到银行支付订单： <asp:Button id="btn_Pay" Text="去支付" runat="server" 
                onclick="btn_Pay_Click" />
               <input id="btn_alert" type="button" value="alert" />
            <input id="btn_html" type="button" value="html" />
        </p>



    <br />
</div>









</asp:Content>
