<%@ Page Title="" Language="C#" MasterPageFile="~/Master/UserCenterMaster.master" AutoEventWireup="true" CodeBehind="OpenEmailMentionView.aspx.cs" Inherits="OnlinePayment.OP.OpenEmailMentionView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <style type="text/css">
        .style1
        {
            width: 528px;
        }
    </style>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="box rightnow">
              <h3 class="reallynow">绑定邮箱</h3>
                    <fieldset id="fs_baseInfo" runat="server">
                        <legend>邮箱信息</legend>
                        <div class="cleaner_h10"></div>
                       
                        <table style="width: 691px">
          <tr>
             <td>您好</td>
             <td class="style1"><asp:Label ID="lblStuID" runat="server"></asp:Label></td>
          </tr>
          <tr>
             <td>请输入您常用的邮箱</td>
             <td class="style1">
                 <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMail"
                  Display="Dynamic" ErrorMessage="邮箱不能为空" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
          </tr>
          <tr>
             <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
             <td  align="center" colspan="2">
                 &nbsp;</td>
          </tr>
          <tr>
             <td align="center" colspan="2"><asp:Button ID="btnConfirm" Text="开通" runat="server" 
                     onclick="btnConfirm_Click" /></td>
          </tr>
       </table>






                    </fieldset>


                    <div align="center">
                       &nbsp;</div>
         </div>




</asp:Content>
