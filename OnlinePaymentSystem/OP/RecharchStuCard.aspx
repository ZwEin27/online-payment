<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Master/UserCenterMaster.master" CodeBehind="RecharchStuCard.aspx.cs" Inherits="OnlinePayment.OP.RecharchStuCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="box rightnow">
      <h3 class="reallynow">缴水电费</h3>
      <div class="youhave">
        <table cellspacing=10px>
           <tr>
              <td>您好，你的学生卡号为：</td>
              <td><asp:Label ID="lblStuIdCardNum" runat="server"></asp:Label></td>
              <td>卡上余额为:</td>
               <td><asp:Label ID="lblRestAmount" runat="server"></asp:Label></td>
           </tr>
           <tr>
               <td>输入充值面额</td>
               <td><asp:TextBox ID="txtRecharchAmount" runat="server"></asp:TextBox></td>
           </tr>
           <tr>
               <td></td>
               <td><asp:Button Text="充值" id="btnRecharch" runat="server" 
                       onclick="btnRecharch_Click" /></td>
           </tr>
       </table>
    </div>
</div>
</asp:Content>
