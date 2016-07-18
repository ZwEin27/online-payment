<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="PostAnnouncement.aspx.cs" Inherits="OnlinePayment.Admin.PostAnnouncement" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>文章添加页面</title>
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
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif">
                <img src="../content/images/admin/left-top-right.gif" width="17" height="29" />
            </td>

                <td valign="top" background="../content/images/admin/content-bg.gif">
                        <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
                            <tr>
                                <td height="31"><div class="titlebt">添加公告</div></td>
                            </tr>
                         </table>
                </td>

            <td width="16" valign="top" background="../content/images/admin/mail_rightbg.gif">
                <img src="../content/images/admin/nav-right-bg.gif" width="16" height="29" />
            </td>
          </tr>



<tr>
    <td valign="middle" background="../content/images/admin/mail_leftbg.gif">&nbsp;</td>

    <td valign="top" bgcolor="#F7F8F9"><!--中间的内容页-->


        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3">
                        <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                            <tr>
                              <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;文章信息列表：</td>
                            </tr>
                        </table>
                    </td>
                </tr>


          <tr>

            <td height="30" colspan="3">
                        <table width="100%" height="89" border="0" cellpadding="0" cellspacing="0">

                            <tr>
                              <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">公告标题：</td>
                              <td height="30" bgcolor="#f2f2f2" class="left_txt">
                                  <asp:TextBox ID="txtTitle" runat="server" Width="480px"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RfvUserPwd" runat="server" ControlToValidate="txtTitle"
                                   Display="Dynamic" ErrorMessage="公告标题不能为空" Font-Size="9pt" ForeColor="Red"></asp:RequiredFieldValidator>
                              </td>  
                            </tr>
                             <tr>
                                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">作者：</td>
                                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                                      <asp:TextBox ID="txtAuthor" runat="server" Width="156px"></asp:TextBox>
                                  </td>
                              </tr>
                              <tr>
                                    <td height="30" align="center" class="left_txt">关键词：</td>
                                    <td height="30" class="left_txt">
                                        <asp:TextBox ID="txtSubject" runat="server" Width="480px" Height="80px" 
                                            TextMode="MultiLine"></asp:TextBox>
                                    </td>
                              </tr>

                                <tr>
                                      <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">所属类别：</td>
                                      <td height="30" bgcolor="#f2f2f2" class="left_txt">
                                          <table>
                                              <tr>
                                                  <td>
                                                       <asp:DropDownList ID="dlsmallclass" runat="server">
                                                      </asp:DropDownList>
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                </tr>
                                <tr>
                                    <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">文章内容：</td>
                                    <td height="30" bgcolor="#f2f2f2" class="left_txt">
                                        <FTB:FreeTextBox ID="article_context" runat="server" 
                                            ButtonPath="../tools/freetextbox/images/ftb/office2003/" Width="600" Height="200">
                                        </FTB:FreeTextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="article_context"
                                        Display="Dynamic" ErrorMessage="公告内容不能为空" Font-Size="9pt" ForeColor="Red">
                                        </asp:RequiredFieldValidator></td>
                                    </td>
                                </tr>
                              </table>
                         </td>
                  </tr>
                <tr>
                    <td width="35%" height="30" align="right">
                        <asp:Button ID="btn_addarticle" runat="server" Text="添加文章" 
                            onclick="btn_addarticle_Click" />
                    </td>
                    <td width="10%" height="30" align="right">&nbsp;</td>
                    <td width="55%" height="30">
                        <asp:Button ID="btn_back" runat="server" Text="返回列表" onclick="btn_back_Click" />
                    </td>
                </tr>
            <tr>
                <td height="30" colspan="3">&nbsp;</td>
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
