<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OperatorManagerView.aspx.cs" Inherits="OnlinePayment.Admin.OperatorManagerView" %>

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
                                <td height="31"><div style="text-indent: 10px;" class="titlebt">操作员管理</div></td>
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
                            &nbsp;&nbsp;1.添加操作员:您可以为指定的部门添加操作员，并能够给该操作员赋予一个角色的所有权限 <br />
                            &nbsp;&nbsp;2.操作员列表:您可以查看系统所有的操作员，并能过进行修改和删除操作<br />
                                &nbsp;&nbsp;3.修改操作员:您能够通过已知的操作员名称，对操作员的所属角色和所属部门进行修改<br />
                                            
                            </p>



                            
                            <fieldset style="display:inline; margin:0px 0px 0px 20px">
                                <legend>您好，您可以：</legend>
                                <p class="lblInfo">
                                    <div class="imgButton">
                                         <asp:ImageButton AlternateText="添加操作员" ID="imgBtn_addOperator" 
                                             ImageUrl="../Content/Images/Admin/btnImg_addOperator.png" runat="server" 
                                             onclick="imgBtn_addOperator_Click"  />
                                     <asp:ImageButton AlternateText="操作员列表" ID="imgBtn_showOperatorList" 
                                             ImageUrl="../Content/Images/Admin/btnImg_OperatorList.png" runat="server" onclick="imgBtn_showStudentList_Click" />
                                      <asp:ImageButton AlternateText="修改操作员" ID="imgBtn_modifyOpeartor" 
                                             ImageUrl="../Content/Images/Admin/btnImg_modifyOperator.png" 
                                             runat="server" onclick="imgBtn_modifyOpeartor_Click" />
                                 </p>
                            </fieldset>
                            <br />










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
