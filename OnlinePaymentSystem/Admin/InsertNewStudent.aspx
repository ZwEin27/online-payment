<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertNewStudent.aspx.cs" Inherits="OnlinePayment.Admin.InsertNewStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/Css/Admin/skin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
	        margin-left: 0px;
	        margin-top: 0px;
	        margin-right: 0px;
	        margin-bottom: 0px;
	        background-color: #EEF2FB;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table id="Table1" width="100%" border="0" cellpadding="0" cellspacing="0" runat="server">
          <tr>
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif"><img src="../content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div class="titlebt">添加公告</div></td>
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
                  <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;学生基本信息：</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="30" colspan="3">
              <table align="right" width="100%" height="89" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" Width="10%" align="center" bgcolor="#f2f2f2" class="left_txt">学号：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtStuId" runat="server" Width="163px"></asp:TextBox>
                  </td>
                 
                </tr>
                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">姓名：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtName" runat="server" Width="161px"></asp:TextBox>
                  </td>
                </tr>

                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">学院：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:DropDownList ID="ddlAcademy" runat="server">
                      </asp:DropDownList>
                  </td>
                </tr>
                 

                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">主修专业：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:DropDownList ID="ddlFirstMajor" runat="server">
                      </asp:DropDownList>
                  </td>
                </tr>

                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">第二专业：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:DropDownList ID="ddlSecondMajor" runat="server">
                      </asp:DropDownList>
                  </td>
                </tr>

                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">年级：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtGrade" runat="server" Width="161px"></asp:TextBox>
                  </td>
                </tr>

                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">班级：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtClassNum" runat="server" Width="161px"></asp:TextBox>
                  </td>
                </tr>



                <tr>
                  <td colspan="3"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                <tr>
                  <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;学生扩展信息：</td>
                </tr>
              </table>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">初始登录密码：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <table>
                  <tr>
                  
                  <td>
                      <asp:TextBox ID="txtInitPwd" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  </table>
                  </td>
                </tr>
                <tr>
                  <td width="10%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt">电子邮件：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtEmail" runat="server" Width="161px"></asp:TextBox>
                      </td>
                  </td>
                </tr>
              </table></td>
            </tr>


            <tr>
                
              <td width="35%" height="30" align="right">
                      <asp:ImageButton AlternateText="确定" ID="btn_addStudent" 
                                             ImageUrl="../Content/Images/Admin/button/ackBtn.png" runat="server" 
                                             onclick="btn_addStudent_Click" />
                </td>
              <td width="10%" height="30" align="right">&nbsp;</td>
              <td width="55%" height="30">
               <a href="UserManagerView.aspx" target="main" style="margin-left:30px;">
                                <img style="border:0px;" src="../Content/Images/Admin/button/retBtn.png" />
                          </a>
                              </td>
            </tr>
            <tr>
              <td height="10" colspan="3">&nbsp;</td>
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
    </form>
</body>
</html>
