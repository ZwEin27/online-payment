<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOperator.aspx.cs" Inherits="OnlinePayment.Admin.AddOperatorOrAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/Css/Admin/skin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="Table1" width="100%" border="0" cellpadding="0" cellspacing="0" runat="server">
          <tr>
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif"><img src="../content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div style="text-indent: 10px;" class="titlebt">添加操作员</div></td>
              </tr>
            </table></td>
            <td width="16" valign="top" background="../content/images/admin/mail_rightbg.gif"><img src="../content/images/admin/nav-right-bg.gif" width="16" height="29" /></td>
          </tr>
          <tr>
            <td valign="middle" background="../content/images/admin/mail_leftbg.gif">&nbsp;</td>
            <td valign="top" bgcolor="#F7F8F9"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="3"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                <tr>
                  <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;操作员基本信息</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="30" colspan="3">
              <table align="right" width="100%" height="89" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" Width="10%" align="center" bgcolor="#f2f2f2" class="left_txt">操作员姓名：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtOperName" runat="server" Width="163px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtOperName"
                        ErrorMessage="名称不能为空"></asp:RequiredFieldValidator></td>
                  </td>
                 
                </tr>
                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">登录口令</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtLoginId" runat="server" Width="161px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginId"
                        ErrorMessage="登录口令不能为空"></asp:RequiredFieldValidator>
                  </td>
                </tr>

                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">登录密码：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtPassword" runat="server" Width="161px" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                  </td>
                </tr>
                 

                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">确认密码：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                       <asp:TextBox ID="txtPasswordConfirm" runat="server" Width="161px" 
                           TextMode="Password"></asp:TextBox>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                        ControlToValidate="txtPasswordConfirm" ErrorMessage="密码不一致" Width="70px"/>
                  </td>
                </tr>

                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">所属部门：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:DropDownList ID="depList" runat="server">
                      </asp:DropDownList>
                  </td>
                </tr>

                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">角色名称：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                     <asp:DropDownList ID="roleList" runat="server">
                      </asp:DropDownList>
                  </td>
                </tr>
                
              
              </table></td>
            </tr>
            <tr>
              <td width="35%" height="30" align="right">

                       <asp:ImageButton AlternateText="确定" ID="btn_OperatorStudent" 
                                             ImageUrl="../Content/Images/Admin/button/ackBtn.png" runat="server" 
                                             OnClick="btn_OperatorStudent_Click" />
                </td>
              <td width="10%" height="30" align="right">&nbsp;</td>
              <td width="55%" height="30">
                  <a href="OperatorManagerView.aspx" target="main" style="margin-left:30px;">
                                <img style="border:0px;" src="../Content/Images/Admin/button/retBtn.png" />
                          </a>
              <td height="30" colspan="3">&nbsp;</td>
            </tr>
          </table></td>
            <td background="../content/images/admin/mail_rightbg.gif">&nbsp;</td>
          </tr>
          <tr>
            <td valign="bottom" background="../content/images/admin/mail_leftbg.gif"><img src="../content/images/admin/buttom_left2.gif" width="17" height="17" /></td>
            <td background="../content/images/admin/buttom_bgs.gif"><img src="../content/images/admin/buttom_bgs.gif" width="17" height="17"></td>
            <td valign="bottom" background="../content/images/admin/mail_rightbg.gif"><img src="../content/images/admin/buttom_right2.gif" width="16" height="17" /></td>
          </tr>
          </table>
    </div>
    </form>
</body>
</html>
