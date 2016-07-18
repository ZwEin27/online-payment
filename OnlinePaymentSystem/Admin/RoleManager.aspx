<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleManager.aspx.cs" Inherits="OnlinePayment.Admin.RoleManager" %>

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
        td{vertical-align:middle;}
        .lblInfo
        {
            padding:10px;
            Line-height:31px;
            Vertical-align:middle;
            margin:auto;
            
        }
        .imgButton input
        { margin-left:20px;}
        p {
             vertical-align:middle;
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
                <td height="31"><div class="titlebt">角色列表</div></td>
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
              <td height="31" colspan="3">
              
              <p class="lblInfo">
                    
                  <asp:ImageButton ID="imgButton_addRole" AlternateText="添加角色" ImageUrl="../Content/Images/Admin/button/icoBtn_AddRole.png" runat="server" />

                      
              </p>
                  
              
               </td>
            </tr>
             <tr>
              <td height="31" colspan="3">
                <div class="cleaner_h20">
                </div>
               </td>
            </tr>

            <tr>
              <td  colspan="3">
                



    <div style="overflow:scroll; width:89%">
     <table border="0" cellpadding="0" cellspacing="0" style="border-right: #669900 1px solid;
            border-top: #669900 1px solid; border-left: #669900 1px solid; width: 696px;
            border-bottom: #669900 1px solid; background-color: #ffffff">
            <tr>
                <td>
                  </td>
            </tr>
            <tr>
                <td>
                       <asp:GridView ID="roleAuthoritySet" runat="server" AutoGenerateColumns="False" 
                           CellPadding="4" ForeColor="#333333" GridLines="None"
                        Width="1255px" OnRowDeleting="gvAdmSet_RowDeleting">
                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="roleId" />
                            <asp:BoundField DataField="roleName" HeaderText="角色名称" />
                            <asp:CheckBoxField DataField="systemSet" HeaderText="系统设置" ReadOnly="True" />
                            <asp:CheckBoxField DataField="announceManage" HeaderText="公告管理" />
                            <asp:CheckBoxField DataField="replayPro" HeaderText="服务中心管理" />
                            <asp:CheckBoxField DataField="proManage" HeaderText="学费缴费管理" />
                            <asp:CheckBoxField DataField="proPost" HeaderText="学费项目发布" />
                            <asp:CheckBoxField DataField="utilityManage" HeaderText="水电费缴费管理" />
                            <asp:CheckBoxField DataField="utilityPost" HeaderText="水电费项目发布" />
                            <asp:CheckBoxField DataField="stuCardManage" HeaderText="一卡通充值管理" />
                            <asp:CheckBoxField DataField="networkManage" HeaderText="校园网充值管理" />
                            <asp:TemplateField HeaderText="权限设置">
                                <ItemTemplate>
                               <a href="#" onclick="window.open('RoleAuthoritySet.aspx?roleName=<%#Eval("roleName")%>','main');" >
                                   权限设置</a>                                
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True" HeaderText="删除"  />
                        </Columns>
                        <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#e1e5ee" Font-Bold="True" ForeColor="#666666" />
                        <AlternatingRowStyle BackColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>


















               
              </td>
            </tr>

            <tr style="line-height:50px; vertical-align:middle;">
                
              
              <td width="90px" height="50px" align="right">&nbsp;</td>
              <td width="55px" height="50px">
                        <a href="AuthorityManagerView.aspx" target="main" style="margin-left:30px;">
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
