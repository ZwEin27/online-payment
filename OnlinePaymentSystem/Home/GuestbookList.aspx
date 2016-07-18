<%@ Page Title="" Language="C#" MasterPageFile="~/Master/HomeMaster.Master" AutoEventWireup="true" CodeBehind="GuestbookList.aspx.cs" Inherits="OnlinePayment.Home.GuestbookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
   *{
	    margin:0;
	    padding:0;
    }
    table{
	    border-collapse: collapse;
	    table-layout:automatic;
	    width:99%;
	    margin:0px;
        padding:0px;
    }
    td,th,thead,tbody
    {
        margin:0px;
        padding:0px;
    } 
    td, th{
	border:1px solid #e8e7e1;
    } 
    thead{
	    background:#f7f6f0;
	   
    }
    tbody{
       
    }
    .inputdiy input
    {   margin:0px;
        padding:2px;
        margin:0px;
        border:2px solid #DDDDDD;
        text-align:left;
        vertical-align:middle;
        line-height:25px;
        height:25px;
        background-color:White;
        background-image:none;
        
    }
    .iniInput{
         margin:0px;
        padding:0px;
        width:104px;
        padding:0px;
        margin:0px;
        border:1px #fff;
        background:inherit;
        height: 23px;
    }
    
    </style>
</style>






</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="homeinfo">
              <div class="rightnow">
                    <h3 class="reallynow">
                     <span>留言本</span>
                        <a href="#" class="add">添加新留言</a>
                        <br />
                    </h3>

                  <asp:DataList ID="gbrpt" runat="server">
                     <HeaderTemplate>
                         <table style="text-align:center;" border="0" cellpadding="0" cellspacing="0" class="AdminTable">
                            <thead style="height:31px">
                               <tr style="height:31px">
                            	<th width="10%"><a href="#">类型</a></th>
                            	<th width="15%"><a href="#">发表时间</a></th>
                                <th width="30%"><a href="#">标题</a></th>
                                <th width="15%"><a href="#">发表人</a></th>
                                <th width="15%"><a href="#">最后回复日期</a></th>
                                <th width="15%"><a href="#">回复/浏览</a></th>
                               </tr>
                            </thead>
                          <tbody>
                    </HeaderTemplate>

                    <ItemTemplate>
							<tr style="height:28px">
                                <td>
                                   <%# Eval("EntityType") %>
                                </td>
                                <td>
                                   <%# Eval("CreateDate") %>
                                </td>
                                <td>
                                   <a href="GuestbookDetail.aspx?EntityId=<%# Eval("EntityId") %>"> <%# Eval("Title") %></a>
                                </td>
                                <td>
                                   <%# Eval("Author") %>
                                </td>
                                <td>
                                   <%# Eval("lastReplyDate") %>
                                </td>
                                <td>
                                   <%# Eval("TotalPosts") %>/
                                   <%# Eval("TotalViews") %>
                                </td>
                            </tr>   


                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody> </table>
                    </FooterTemplate>

                  </asp:DataList>

                  <%--  <div class="paging">
                             共<asp:Label ID="lblMesTotal" runat="server" Style="position: relative" Text="Label"></asp:Label>条信息&nbsp;
                    第<asp:Label ID="lblPageCur" runat="server" Style="position: relative" Text="Label"></asp:Label>页&nbsp;
                    共<asp:Label ID="lblPageTotal" runat="server" Style="position: relative" Text="Label"></asp:Label>页&nbsp;
                    <asp:Button ID="Button3" runat="server" Style="position: relative" Text="首页" OnClick="Button3_Click" />
                    <asp:Button ID="Button1" runat="server" Style="position: relative" Text="上一页" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Style="position: relative" Text="下一页" OnClick="Button2_Click" />
                    <asp:Button ID="Button4" runat="server" Style="position: relative" Text="尾页" OnClick="Button4_Click" />
                    &nbsp; 转到<asp:DropDownList ID="DropDownList1" runat="server" Style="position: relative">
                    </asp:DropDownList>&nbsp;
                    <asp:Button ID="Button5" runat="server" Style="position: relative" Text="GO" OnClick="Button5_Click" />
                  </div>--%>


                   <p class="youhave a-center">
                        <asp:Button id="btn_AckPay" Text="返回首页" runat="server" PostBackUrl="~/Default.aspx"  />
                
                    </p>


                   
                </div>


                <div class="rightnow">
                    <h3 class="reallynow">
                     <span>发表新留言</span>
                         <asp:LinkButton CssClass="add" ID="lnkPublish" Text="发表" runat="Server" 
                            onclick="lnkPublish_Click" />
                        <br />
                    </h3>

                    <table border="0" cellpadding="0" cellspacing="0" style="width: 98%; position: relative;
                        height: 94%; border-right: activeborder 1px solid; border-top: activeborder 1px solid; left: 0px; border-left: activeborder 1px solid; border-bottom: activeborder 1px solid; top: 0px;">
                       <tr>
                            <td style="width: 111px; text-align: right; height: 29px;">
                                &nbsp;标题名：</td>
                            <td style="text-align: left; height: 29px;">
                                <asp:TextBox ID="txtTitle" runat="server" 
                                    Style="position: relative; top: 0px; left: 0px; width: 553px;"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 111px; text-align: right; height: 29px;">
                                &nbsp;用户名：</td>
                            <td style="text-align: left; height: 29px;">
                                <asp:TextBox ID="txtUserName" runat="server" 
                                    Style="position: relative; top: 0px; left: 0px; width: 163px;"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style=" text-align: right" valign="top">
                                留言内容：</td>
                            <td style="text-align: left">
                              <asp:TextBox ID="txtContent" runat="server" Height="140px" Style="position: relative; top: 0px; left: 0px;"
                                    TextMode="MultiLine" Width=100%></asp:TextBox>
                            </td>
                        </tr>
                    </table>



                </div>

              
  	</div><!--end of homeinfo-->




</asp:Content>
