<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleAuthoritySet.aspx.cs" Inherits="OnlinePayment.Admin.OperatorAuthoritySet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>权限设置</title>
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
        .imgButton input
        { margin-left:20px;}
        </style>
    <style type="text/css">
        .style3
        {
            width: 378px;
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
                <td height="31"><div class="titlebt">修改角色</div></td>
              </tr>
            </table></td>
            <td width="16" valign="top" background="../content/images/admin/mail_rightbg.gif"><img src="../content/images/admin/nav-right-bg.gif" width="16" height="29" /></td>
          </tr>
          <tr>
            <td valign="middle" background="../content/images/admin/mail_leftbg.gif">&nbsp;</td>
            <td valign="top" bgcolor="#F7F8F9"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="3">
              
               <div class="cleaner_h20"></div>
              </td>
            </tr>
            <tr>
              <td height="50" colspan="3">
              
              
              
              
              
              
              <div style=" margin-left:160px;">
    <table align="left"  border="1px"
            cellpadding="0" cellspacing="0" height="176" width="292" bgcolor="White">
            <tr>
                <td>
                
                    <table align="center" border="0" cellpadding="5" cellspacing="5" height="125" 
                        style="width: 536px">
                        <tr>
                            <td width="91">
                                <div align="center">
                                    角色名称：</div>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtRoleName" runat="server" ReadOnly="True" Width="122px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td rowspan="3">
                                <div align="center" style="width: 82px">
                                    操作权限：</div>
                            </td>
                            <td class="style3" >
                               <asp:CheckBox ID="ceckboxSystemSet" runat="server" Text="系统设置" /></td>
                            <td class="style3">
                                <asp:CheckBox ID="ceckboxAnnounManage" runat="server" Text="公告管理" /></td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:CheckBox ID="ceckboxServiceManage" runat="server" Text="服务中心管理" /></td>
                            <td class="style3">
                                <asp:CheckBox ID="ceckboxStuCardManage" runat="server" Text="一卡通项目管理" /></td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:CheckBox ID="ceckboxProManage" runat="server" Text="学费项目管理" /></td>
                            <td class="style3">
                                <asp:CheckBox ID="ceckbocProPost" runat="server" Text="学费项目发布" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="style3">
                                <asp:CheckBox ID="ceckboxUtilityManage" runat="server" Text="水电费项目管理" />
                             </td>
                             <td class="style3">
                                 <asp:CheckBox ID="ceckboxUtilityPost" runat="server" Text="水电费项目发布" />
                             </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="style3">
                                <asp:CheckBox ID="ceckBoxNetworkManage" runat="server" Text="校园网项目管理" />
                             </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center" bgcolor="White">
                                <asp:Button ID="btnSave" runat="server" Text="保　存" OnClick="btnSave_Click" />
                                <input id="btnClose" onclick="window.close()" type="button" value="关　闭" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
              
              
              
              
              
              
              
              
              
              
              
              
              
              </td>
            </tr>


            <tr>
                
              <td width="35%" height="50" align="right">

                      <asp:ImageButton AlternateText="确定" ID="btn_addStudent" 
                                             ImageUrl="../Content/Images/Admin/button/ackBtn.png" runat="server" 
                                           OnClick="btnSave_Click"   />
                </td>
              <td width="10%" height="30" align="right">&nbsp;</td>
              <td width="55%" height="30">

                          <a href="AuthorityManagerView.aspx" target="main">
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
