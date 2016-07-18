<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestbookReplyBGView.aspx.cs" Inherits="OnlinePayment.Admin.GuestbookReplyBGView" %>

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
        .style1
        {
            width: 73px;
        }
        .style2
        {
            width: 69px;
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">
     <table id="Table1" width="100%" border="0" cellpadding="0" cellspacing="0" runat="server">
          <tr>
            <td width="17" valign="top" background="../Content/images/admin/mail_leftbg.gif"><img src="../Content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../Content/images/admin/content-bg.gif">
            <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div class="titlebt">回复留言</div></td>
              </tr>
            </table></td>
            <td width="16" valign="top" background="../Content/images/admin/mail_rightbg.gif"><img src="../Content/images/admin/nav-right-bg.gif" width="16" height="29" /></td>
          </tr>
          <tr>
            <td valign="middle" background="../Content/images/admin/mail_leftbg.gif">&nbsp;</td>
            <td valign="top" bgcolor="#F7F8F9">



            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="3">
                  <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                        <tr>
                          <td height="30" align="center" class="style1">标题</td>
                          <td height="30" class="left_txt">
                          <%if (gb != null) { %>
                          <%=gb.Title %>
                         <%}else{ %>
                            未指定留言
                         <%}%>
                      
                          </td>
                        </tr>
                  </table>
                </td>
            </tr>
                 <tr>
                  <td height="30" colspan="3">
                  <table width="100%" height="89" border="0" cellpadding="0" cellspacing="0">
                
                    <tr>
                      <td height="30" align="center" bgcolor="#f2f2f2" class="style2">作者
                      </td>
                      <td height="30" bgcolor="#f2f2f2" class="left_txt">
                           <%if (gb != null) { %>
                        <%=gb.Author %>
                        <%}else{ %>
                        未指定
                        <%}%>
                          </td>
                    </tr>
                 <tr>
                  <td height="30" align="center" class="style2">内容</td>
                  <td height="30" class="left_txt">
                      <p>
                                            <%if (gb != null) { %>
                                              <%=gb.Body%>
                                             <%}else{ %>
                                               未指定
                                             <%}%>
                      
                      
                      </p>
                   </td>
                </tr>


                <tr>
                      <td height="30" align="center" bgcolor="#f2f2f2" class="style2">回复
                      </td>
                      <td height="30" bgcolor="#f2f2f2" class="left_txt">
                           <asp:TextBox id="txtrpy" runat="server" Height="84px" TextMode="MultiLine" 
                               Width="445px" />
                       </td>
                    </tr>

                  </table></td>
            </tr>





            <tr>
              <td width="35%" height="30" align="right">
                  <asp:Button ID="btn_reply" runat="server" Text="回复" 
                      onclick="btn_reply_Click" />
                </td>
              <td width="10%" height="30" align="right">&nbsp;</td>
              <td width="55%" height="30">
                  <asp:Button ID="btn_back" runat="server" Text="返回" onclick="btn_back_Click" />
                  
              </td>
            </tr>
            <tr>
              <td height="30" colspan="3">&nbsp;</td>
            </tr>
          </table></td>
            <td background="images/mail_rightbg.gif">&nbsp;</td>
          </tr>
          <tr>
            <td valign="bottom" background="../Content/images/admin/mail_leftbg.gif"><img src="../Content/images/admin/buttom_left2.gif" width="17" height="17" /></td>
            <td background="../Content/images/admin/buttom_bgs.gif"><img src="../Content/images/admin/buttom_bgs.gif" width="17" height="17"></td>
            <td valign="bottom" background="../Content/images/admin/mail_rightbg.gif"><img src="../Content/images/admin/buttom_right2.gif" width="16" height="17" /></td>
          </tr>
        </table> 
    </form>
</body>
</html>
