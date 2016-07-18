<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OperatorUpdate.aspx.cs" Inherits="OnlinePayment.Admin.OperatorUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/Css/Admin/skin.css" rel="stylesheet" type="text/css" />
       <link href="../Content/Css/Admin/skin.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        body {
	        margin-left: 0px;
	        margin-top: 0px;
	        margin-right: 0px;
	        margin-bottom: 0px;
	        background-color: #EEF2FB;
        }
        fieldset {
	        display:block;
	        padding:5px 10px 5px 10px;
	        line-height:20px;
	        margin-bottom:10px;
	        border:1px solid #d9e6f0;
        }
        legend {
	        font-size:12px;
	        font-weight:bold;
	        margin-bottom:5px;
	        padding:3px;
	        width:254px;
	        border:1px solid #d9e6f0;
	        background:#fff url(../../images/op/form_blue.gif) repeat-x center left;
	        color:#375b91;
        }
        .lblInfo
        {
            padding:5px;
        }
        .pInfo {
            padding:10px;
            Line-height:25px;
            border:1px solid #d9e6f0;
            background:#fff url(../../images/op/form_blue.gif) repeat-x center left;
            color:#375b91;
        }
        .imgButton input
        { margin-left:20px;}
        </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="Table1" width="100%" border="0" cellpadding="0" cellspacing="0" runat="server">
          <tr>
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif"><img src="../content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div style="text-indent: 10px;" class="titlebt">修改操作员</div></td>
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
                  <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;待修改信息</td>
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
              <td  height="30">
                </td>
        
              <td  height="30">
                       <asp:ImageButton AlternateText="更新" ID="btn_update" 
                                             ImageUrl="../Content/Images/Admin/button/ackBtn.png" runat="server" 
                                             OnClick="btn_update_Click" />
                       
                       
                       &nbsp
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
