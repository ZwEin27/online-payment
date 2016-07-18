<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthorityManagerView.aspx.cs" Inherits="OnlinePayment.Admin.AuthorityManagerView" %>

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
 <table id="Table1" width="100%" border="0" cellpadding="0" cellspacing="0" runat="server">
          <tr>
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif">
                <img src="../content/images/admin/left-top-right.gif" width="17" height="29" />
            </td>

                <td valign="top" background="../content/images/admin/content-bg.gif">
                        <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
                            <tr>
                                <td height="31"><div class="titlebt">权限管理</div></td>
                            </tr>
                         </table>
                </td>

            <td width="16" valign="top" background="../content/images/admin/mail_rightbg.gif">
                <img src="../content/images/admin/nav-right-bg.gif" width="16" height="29" />
            </td>
          </tr>



<tr>
    <td valign="middle" background="../content/images/admin/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td style=" padding:20px">
                            <p class="pInfo">
                            当前系统共拥有权限X种权限，您可以选择先创建一个角色，将角色分配给角色，然后在再授予多个用户 <br />

                            ※操作说明： <br />
                            &nbsp;&nbsp;1.添加角色:您可以创建一个拥有多种权限的角色，并可以在将来将该角色赋予多个用户 <br />
                            &nbsp;&nbsp;2.修改角色:您可以指定定一个角色，并为其重新分配权限<br />
                            &nbsp;&nbsp;3.角色列表:您可以查看系统中所有的角色，并且能够进行修改和删除操作 <br />
                                            
                            </p>


                            <fieldset style="display:inline; margin:0px 0px 0px 20px">
                            <legend>您好，您可以：</legend>
                                <p class="lblInfo">
                                    <div class="imgButton">

                                         <asp:ImageButton AlternateText="添加角色" ID="imgBtn_addRole" 
                                             ImageUrl="../Content/Images/Admin/btnImg_addRole.png" runat="server" 
                                             onclick="imgBtn_addRole_Click"  />
                                             <asp:ImageButton AlternateText="修改角色权限" ID="imgBtn_modifyRoleAuth" 
                                             ImageUrl="../Content/Images/Admin/btnImg_modifyRole.png" runat="server" 
                                             onclick="imgBtn_modifyRoleAuth_Click"  />
                                             <asp:ImageButton AlternateText="角色列表" ID="imgBtn_RoleList" 
                                             ImageUrl="../Content/Images/Admin/btnImg_RoleList.png" runat="server" 
                                             onclick="imgBtn_RoleList_Click"  />
                                         </p>
                            </fieldset>
                            <br />

                            <fieldset style="display:inline; width:98%; margin:20px 20px 10px 0px;">
                            <legend>用户信息</legend>
                                <p class="lblInfo">
                                    当前系统共有学生：名


                                </p>
                            </fieldset>










                    </td>
                </tr>
        </table>  
    </td>
    <td background="../content/images/admin/mail_rightbg.gif">&nbsp;</td>
</tr>

        <tr>
            <td valign="bottom" background="../content/images/admin/mail_leftbg.gif">
                    <img src="../content/images/admin/buttom_left2.gif" width="17" height="17" />
            </td>
            <td background="../content/images/admin/buttom_bgs.gif">
                    <img src="../content/images/admin/buttom_bgs.gif" width="17" height="17">
            </td>
            <td valign="bottom" background="../content/images/admin/mail_rightbg.gif">
                <img src="../content/images/admin/buttom_right2.gif" width="16" height="17" />
            </td>
        </tr>

</table> 
    </form>
</body>
</html>
