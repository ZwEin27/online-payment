<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="RechargeNetworkView.aspx.cs" Inherits="OnlinePayment.OP.RechargeNetworkView" %>
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
        margin:0px;
        padding:0px;
    } 
     
    .inputdiy input
    {
        width:19px;
        padding:0px;
        margin:0px;
        border:0px solid #e8e7e1;
        background:inherit;
    }
    table{
	background:none;
}
td, th{
	border:1px solid #e8e7e1;
} 
thead{
	background:#f7f6f0;
}
    .leftoffset
    {
        padding-left:50px;
    }
    .rightoffset
    {
        text-align:right;
        padding-right:100px;
    }
    
    .box input 
    {
    
	    border:1px solid #e8e7e1;
	    background:#fff url(../../images/op/form_red.gif) repeat-x top left;
    }
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

            <div class="box rightnow">
                	<h3 class="reallynow">缴水电费</h3>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <p class="youhave">
                            您好,<br /><br />
                            您的校园网端口号为：<asp:Label ID="lblNetworkPort" runat="server"></asp:Label>
                  端口状态为<asp:Label ID="lblPortState" runat="server"></asp:Label>

                 <asp:Label ID="lblAvailableEndTime" Text="可用至" Visible="false" runat="server"></asp:Label>
                 <br /><br />
                 如果您的端口号为“尚未开通”,请点击
               <asp:LinkButton ID="lblOpenService" runat="server" Text="开通校园网"></asp:LinkButton>
                 </p>
                    
                <div class="cleaner_h20"></div>

                
                
                
                <table>
                    <thead>
                        <tr style="height:21px;width=100%">
                            <th><a>项目</a></th>
                            <th><a>选择</a></th>
                        </tr>
                    </thead>
                    <tbody style="height:100px; text-align:left; vertical-align:center;">
                       <tr>
                           <td class="inputdiy leftoffset"><asp:RadioButton ID="rbMonth" GroupName="mode" Text="" runat="server" />按月份数开通，每月35.00元</td>
                           <td class="rightoffset">请输入你要充值的月份数:&nbsp;&nbsp;<asp:TextBox ID="txtMonth" runat="server"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td class="inputdiy leftoffset"><asp:RadioButton ID="rbHalfYear" GroupName="mode" Text="" runat="server" />开通半年，180.00元</td>
                           <td class="rightoffset">请输入你要充值的半年份数:&nbsp;&nbsp;<asp:TextBox ID="txtHalfYear" runat="server"></asp:TextBox></td>
                       </tr>
                        <tr>
                           <td class="inputdiy leftoffset"><asp:RadioButton ID="rbYear" GroupName="mode" Text="" runat="server" />包年350.00元</td>
                           <td class="rightoffset">请输入你要充值的年份数:&nbsp;&nbsp;<asp:TextBox ID="txtYear" runat="server"></asp:TextBox></td>
                       </tr>
                      </tbody>
                   </table>
                   








                         
                <div class="cleaner_h20"></div>


                <p class="youhave a-center">
                   <asp:Button Text="充值" runat="server" ID="btnRecharge" 
                      onclick="btnRecharge_Click" />
                </p>




                
                 </ContentTemplate>
             </asp:UpdatePanel>
             </div>






</asp:Content>
