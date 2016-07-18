<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestbookBGView.aspx.cs" Inherits="OnlinePayment.Admin.GuestbookBGView" %>

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
            height: 9px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="17" valign="top" background="../Content/images/admin/mail_leftbg.gif"><img src="../Content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../Content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div class="titlebt">回复列表</div></td>
              </tr>
            </table></td>
            <td width="16" valign="top" background="../Content/images/admin/mail_rightbg.gif"><img src="../Content/images/admin/nav-right-bg.gif" width="16" height="29" /></td>
          </tr>
          <tr>
            <td valign="middle" background="../Content/images/admin/mail_leftbg.gif">&nbsp;</td>
            <td valign="top" bgcolor="#F7F8F9"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" colspan="3"><table width="100%" height="89" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">
                      <asp:GridView ID="GV_class" runat="server" Width="100%" 
                          AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                          GridLines="None" AllowPaging="True" PageSize="5" 
                          onpageindexchanging="GV_class_PageIndexChanging"  OnRowCommand="GridView1_RowCommand"
                          onrowdeleting="GV_class_RowDeleting" onrowediting="GV_class_RowEditing" 
                          onrowdatabound="GV_class_RowDataBound">
                          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                          <Columns>
                              <asp:BoundField DataField="EntityType" HeaderText="类型" />
                              <asp:BoundField DataField="CreateDate" HeaderText="留言时间" />
                              <asp:BoundField DataField="Title" HeaderText="标题" />
                              <asp:BoundField DataField="Author" HeaderText="发表人" />
                              <asp:BoundField DataField="EntityStatus" HeaderText="状态" />


                              <asp:TemplateField HeaderText="详细信息">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtn" runat="server" CommandArgument='<%# Eval("EntityId") %>' CommandName="GetInfo" >查看</asp:LinkButton>             
                                </ItemTemplate>
                               </asp:TemplateField>
                              
                              

                              <asp:TemplateField HeaderText="删除" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"  CommandArgument='<%# Eval("EntityId") %>'
                                          CommandName="Delete" Text="删除" OnClientClick="return confirm('确认要删除吗？')"></asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>

                          </Columns>

                          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                          <PagerTemplate>
                            <table align="center" style="font-size: 10pt; width:auto">
                                <tr>
                                    <td>
                                        <asp:Label ID="LabelCurrentPage" runat="server" Font-Size="10pt">当前页：<%# ((GridView)Container.NamingContainer).PageIndex + 1 %></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="LabelPageCount" runat="server" Font-Size="10pt">总页数：<%# ((GridView)Container.NamingContainer).PageCount %></asp:Label>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonFirstPage" runat="server" 
                                            CausesValidation="False" CommandArgument="First" CommandName="Page" 
                                            Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>" 
                                            Font-Size="10pt">首页</asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" 
                                            CausesValidation="False" CommandArgument="Prev" CommandName="Page" 
                                            Enable="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>" 
                                            Font-Size="10pt">上一页</asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonNextPage" runat="server" CausesValidation="False" 
                                            CommandArgument="Next" CommandName="Page" 
                                            Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>" 
                                            Font-Size="10pt">下一页</asp:LinkButton>
                                    </td>
                                    <td style="width: 29px">
                                        <asp:LinkButton ID="LinkButtonLastPage" runat="server" CausesValidation="False" 
                                            CommandArgument="Last" CommandName="Page" 
                                            Enable="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>" 
                                            Font-Size="10pt">尾页</asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:Label ID="td" runat="server" Font-Size="10pt" Height="18px" Text="跳到："></asp:Label>
                                        <asp:DropDownList ID="DlPage" runat="server" AutoPostBack="True" 
                                            EnableViewState="True" Font-Size="10pt" oninit="DlPage_Init" 
                            onselectedindexchanged="DlPage_SelectedIndexChanged">
                                        </asp:DropDownList>
                                       <asp:Label ID="y" runat="server" Font-Size="10pt" Height="18px" Text="页"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                          </PagerTemplate>

                          <PagerStyle BackColor="#e1e5ee" ForeColor="#666666" HorizontalAlign="Center" />
                          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                          <HeaderStyle BackColor="#e1e5ee" Font-Bold="True" ForeColor="#666666" />
                          <EditRowStyle BackColor="#999999" />
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      </asp:GridView>
                  </td>
                </tr>
              </table></td>
            </tr>
          </table></td>
            <td background="../Content/images/admin/mail_rightbg.gif">&nbsp;</td>
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
