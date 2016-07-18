<%@ Page Title="" Language="C#" MasterPageFile="~/Master/UserCenterMaster.master" AutoEventWireup="true" CodeBehind="ChangePwdView.aspx.cs" Inherits="OnlinePayment.OP.ChangePwdView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="box rightnow">
      <h3 class="reallynow">修改密码</h3>
        <div class="youhave">
            <asp:Label ID="lblStuId" runat="server"></asp:Label>

            <div class="TableNonBorder">
       <table id="tab">
         <tr>
            <td align=right>原始密码</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td class="style1" colspan="3"><asp:RequiredFieldValidator ID="RfvUserPwd" runat="server" ControlToValidate="TxtPassword"
                 Display="Dynamic" ErrorMessage="密码不能为空" Font-Size="9pt" ForeColor="Red"></asp:RequiredFieldValidator></td>
         </tr>
         <tr>
            <td align=right>新密码</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="txtNewPassword" runat="server" onFocus="tPass();" 
                    onchange="passHint()" TextMode="Password"></asp:TextBox></td>
            <td class="style1">
                <asp:Label ID="labEbb" runat="server" Text="弱" Width="30px" Font-Size="12px" 
                     ForeColor="#F2EFE7"></asp:Label>
            </td>
            <td class="style1">    
                  <asp:Label ID="labComm" runat="server" Text="中" Width="30px" Font-Size="12px" 
                     ForeColor="#F2EFE7" ></asp:Label>
            </td>
            <td class="style1">
                  <asp:Label ID="labStrong" runat="server" Text="强" Width="30px" 
                     Font-Size="12px" ForeColor="#F2EFE7"></asp:Label>
            </td>
         </tr>
         <tr>
            <td align=right>重新输入新密码</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="txtConfirPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td class="style1" colspan="3"> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtConfirPassword"
                  Display="Dynamic" ErrorMessage="确认密码不能为空" Font-Size="9pt" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="cvPwd" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirPassword"
                   Display="Dynamic" ErrorMessage="两次输入的密码不一致" Font-Size="9pt" ForeColor="Red"></asp:CompareValidator>
             </td>
         </tr>
       </table>
       </div>

       <div align="center">
       
        <asp:Button ID="btnModifyPass" runat="server" text="修改" 
                    onclick="btnModifyPass_Click"/>
                <asp:Button ID="btnConcel" runat="server" text="取消" onclick="btnConcel_Click"/>
            </div>

    </div>

        </div>
            
                    

    </div>


</asp:Content>
