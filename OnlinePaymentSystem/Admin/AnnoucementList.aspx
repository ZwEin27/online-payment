<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnnoucementList.aspx.cs" Inherits="OnlinePayment.Admin.AnnoucementList" %>

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
        .style2
        {
        }
        .style3
        {
            height: 2px;
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <table>
           <tr>
             <td style="width: 163px; height: 2px"> <span style="font-size: 13pt">查询条件</span></td>
             <td style="width: 163px; height: 2px" align="center">
                         <asp:DropDownList ID="ddlSearch" runat="server" Width="140px" Font-Size="9pt" 
                             Height="20px">
                          <asp:ListItem Selected="True">作者</asp:ListItem>
                          <asp:ListItem>标题</asp:ListItem>
                          <asp:ListItem>阅读次数</asp:ListItem>
                         </asp:DropDownList>
             </td>
             <td  style=" height: 2px;width: 163px"align="center" ><span style="font-size: 13pt">关键字</span></td>
             <td style="width: 163px; height: 2px"><asp:TextBox ID="txtKey" runat="server" 
                     Width="149px" Font-Size="9pt" Height="22px"></asp:TextBox></td>
             <td style="width: 163px; height: 2px" align="center"><asp:Button ID="btnSearch" 
                     runat="server" Text="查找" OnClick="btnSearch_Click" Font-Size="9pt" 
                     Height="26px" Width="49px" /></td>
             <td style="width: 163px; height: 2px" ><asp:LinkButton ID="LinkButton1" runat="server" Font-Size="13pt" OnClick="LinkButton1_Click">添加公告</asp:LinkButton></td>
            </tr> 
          </table>
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif"><img src="../content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div class="titlebt">文章列表</div></td>
              </tr>
            </table></td>
            <td width="16" valign="top" background="../content/images/admin/mail_rightbg.gif"><img src="../content/images/admin/nav-right-bg.gif" width="16" height="29" /></td>
          </tr>
          <tr>
            <td valign="middle" background="../content/images/admin/mail_leftbg.gif">&nbsp;</td>
            <td valign="top" bgcolor="#F7F8F9"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" colspan="3"><table width="100%" height="89" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">
                      <asp:GridView ID="GV_article" runat="server" Width="100%" 
                          AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                          GridLines="None" AllowPaging="True" 
                          onpageindexchanging="GV_article_PageIndexChanging" 
                          onrowdeleting="GV_article_RowDeleting" 
                          onrowediting="GV_article_RowEditing" 
                          onrowdatabound="GV_article_RowDataBound">
                          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                          <Columns>
                              <asp:BoundField DataField="id" HeaderText="编号" />

                              <asp:HyperLinkField DataNavigateUrlFields="id"   Target="_blank"
                                  DataNavigateUrlFormatString="../Home/AnnouncementView.aspx?id={0}"  
                                  DataTextField="title" ItemStyle-Width="60%" HeaderText="文章标题" />
                              <asp:BoundField DataField="author" HeaderText="作者" />
                              <asp:BoundField DataField="readTime" HeaderText="阅读次数" />
                              <asp:BoundField DataField="date" HeaderText="添加时间" />
                              <asp:CommandField HeaderText="修改" ShowEditButton="True" />
                              <asp:TemplateField HeaderText="删除" ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
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
            <td background="images/mail_rightbg.gif">&nbsp;</td>
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
