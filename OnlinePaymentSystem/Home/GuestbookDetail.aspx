<%@ Page Title="" Language="C#" MasterPageFile="~/Master/HomeMaster.Master" AutoEventWireup="true" CodeBehind="GuestbookDetail.aspx.cs" Inherits="OnlinePayment.Home.GuestbookDetail" %>


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
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="homeinfo">
              <div class="rightnow">
                    <h3 class="reallynow">
                     <span>标题：
                     <%if (gb != null) { %>
                      <%=gb.Title %>
                     <%}else{ %>
                        未指定留言
                     <%}%>
                     </span>
                        <a href="#" class="add">留空</a>
                        <br />
                    </h3>


                    <table border="0" cellpadding="0" cellspacing="0" 
                        style="border-top: #e8e8e8 1px solid;
                                left: 1px; width: 100%; position: relative; top: 0px; height: 31px">
                                <tr>
                                        <td align="left" colspan="2" style="border-right: #e8e8e8 1px solid; background-image: url(../Content/images/home/guestbook/showbj.gif);
                                        width: 100%; height: 27px">
                                            <a>发表人：<%if (gb != null) { %>
                                              <%=gb.Author %>
                                             <%}else{ %>
                                               未指定
                                             <%}%></a>
                                        </td>
                                         <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 21px; height: 27px; border-left: #e8e8e8 1px solid;" align="center">
                                        
                                        <img alt="a" src="../Content/images/home/guestbook/001.gif" style="position: relative" />
                                        
                                        </td>
                                    <%--<td align="right" colspan="2" style="border-right: #e8e8e8 1px solid; background-image: url(../Content/images/home/guestbook/showbj.gif);
                                        width: 978px; height: 27px">
                                        <div style="left: 2px; width: 350px; position: relative; top: 0px; height: 26px;
                                            text-align: left">
                                           <a href="mailto:<%#DataBinder.Eval(Container.DataItem,"email") %>" ><img alt="a" src="../Content/images/home/guestbook/mail.gif" style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; left: 0px; top: 3px;" /></a>&nbsp;Email
                                           &nbsp;&nbsp;<a href="<%#DataBinder.Eval(Container.DataItem,"qq") %>" ><img alt="a" src="../Content/images/home/guestbook/qq.gif"
                                                style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; top: 3px;" /></a>&nbsp;QQ&nbsp;&nbsp;<a href="<%#DataBinder.Eval(Container.DataItem,"url") %>" ><img alt="a" src="../Content/images/home/guestbook/home.gif" style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; top: 3px;" /></a>&nbsp;主页&nbsp;&nbsp;<img alt="a"
                                                    src="../Content/images/home/guestbook/posttime.gif" style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; left: 0px; top: 3px;" />&nbsp;发布时间：<%#DataBinder.Eval(Container.DataItem, "postTime", "{0:D}")%></div>
                                    </td>--%>
                                </tr>
                            </table>
                            <table border="0" cellpadding="0" cellspacing="0" style="left: 1px; width: 100%;
                                position: relative; top: 0px; border-right: #e8e8e8 1px solid; border-left: #e8e8e8 1px solid; height: 100%;">
                                <tr>
                                    <td style="width: 125px; border-right: #e8e8e8 1px solid;" align="center">
                                        <div style="width: 100px; position: relative; height: 100px">
                                            <%--<img alt="a"  style="position: relative" src='images/face/<%#DataBinder.Eval(Container.DataItem,"imageUrl")%>' />--%>
                                            
                                         </div>
                                        <%--<asp:Label ID="lblUserPic" runat="server" Style="position: relative" Text=<%#DataBinder.Eval(Container.DataItem,"userName") %>></asp:Label>
                                        --%>
                                        </td>
                                    <td style="width: 431px; border-bottom: #e8e8e8 1px solid; height: 121px">
                                        <div style="left: 2px; width: 100%; position: relative; top: 0px;
                                            text-align: left; height: 82px;">
                                            
                                            <%if (gb != null) { %>
                                              <%=gb.Body%>
                                             <%}else{ %>
                                               未指定
                                             <%}%>

                                             <%if (gb.AdminReply != null) { %>
                                                 <br/>- - - - - - - - - - - - - - - - - - - - - <br/>
                                                 管理员回复：<%# Eval("AdminReply") %>
                                             <%}%>
                                                  
                                            
                                            </div>
                                         <%--<div style="left: 2px; width: 852px; position: relative; height: 25px;
                                            text-align: right">
                                            <img src="../Content/images/home/guestbook/reply.gif" style="position: relative; top: 2px;" />
                                            <a href="add.aspx" target="_blank">发表留言</a>
                                            <img src="../Content/images/home/guestbook/004.gif" style="position: relative; top: 2px;" />
                                            <asp:LinkButton ID="lbtnReply" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>'
                                                OnCommand="lbtnReply_Command" Style="position: relative; top: 0px">回复</asp:LinkButton>
                                            <img
                                            alt="a"  src="../Content/images/home/guestbook/delete.gif" style="border-top-style: none; border-right-style: none;
                                                    border-left-style: none; position: relative; border-bottom-style: none; top: 5px;" />
                                            <asp:LinkButton ID="lbtnDelete" runat="server"
                                                OnCommand="lbtnDelete_Command" Style="position: relative"  CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>'>删除</asp:LinkButton>&nbsp;
                                             </div>--%>
                                    </td>
                                </tr>
                               
                            </table>
                            <table border="0" cellspacing="0" style="border-top: #e8e8e8 1px solid; left: 1px;
                                width: 100%; position: relative; top: 0px; height: 13px">
                                <tr>
                                    <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 114px; border-left: #e8e8e8 1px solid;">
                                        <img alt="a" src="../Content/images/home/guestbook/003.gif" style="position: relative" /></td>
                                    <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 100%">
                                    </td>
                                    <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 133px; border-right: #e8e8e8 1px solid;" align="right">
                                        <img alt="a" src="../Content/images/home/guestbook/001.gif" style="position: relative" /></td>
                                </tr>
                            </table>
                            <br />   










                    <asp:DataList ID="gbdl" runat="server" 
                        Style="position: relative; top: -1px; left: 0px; width: 100%;">
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="0" 
                        style="border-top: #e8e8e8 1px solid;
                                left: 1px; width: 100%; position: relative; top: 0px; height: 31px">
                                <tr>
                                        <td align="left" colspan="2" style="border-right: #e8e8e8 1px solid; background-image: url(../Content/images/home/guestbook/showbj.gif);
                                        width: 100%; height: 27px">
                                            <a>Re：第<%=dtNum++%>楼</a>
                                        </td>
                                         <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 21px; height: 27px; border-left: #e8e8e8 1px solid;" align="center">
                                        
                                        <img alt="a" src="../Content/images/home/guestbook/001.gif" style="position: relative" />
                                        
                                        </td>
                                    <%--<td align="right" colspan="2" style="border-right: #e8e8e8 1px solid; background-image: url(../Content/images/home/guestbook/showbj.gif);
                                        width: 978px; height: 27px">
                                        <div style="left: 2px; width: 350px; position: relative; top: 0px; height: 26px;
                                            text-align: left">
                                           <a href="mailto:<%#DataBinder.Eval(Container.DataItem,"email") %>" ><img alt="a" src="../Content/images/home/guestbook/mail.gif" style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; left: 0px; top: 3px;" /></a>&nbsp;Email
                                           &nbsp;&nbsp;<a href="<%#DataBinder.Eval(Container.DataItem,"qq") %>" ><img alt="a" src="../Content/images/home/guestbook/qq.gif"
                                                style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; top: 3px;" /></a>&nbsp;QQ&nbsp;&nbsp;<a href="<%#DataBinder.Eval(Container.DataItem,"url") %>" ><img alt="a" src="../Content/images/home/guestbook/home.gif" style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; top: 3px;" /></a>&nbsp;主页&nbsp;&nbsp;<img alt="a"
                                                    src="../Content/images/home/guestbook/posttime.gif" style="position: relative; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none; left: 0px; top: 3px;" />&nbsp;发布时间：<%#DataBinder.Eval(Container.DataItem, "postTime", "{0:D}")%></div>
                                    </td>--%>
                                </tr>
                            </table>
                            <table border="0" cellpadding="0" cellspacing="0" style="left: 1px; width: 100%;
                                position: relative; top: 0px; border-right: #e8e8e8 1px solid; border-left: #e8e8e8 1px solid; height: 100%;">
                                <tr>
                                    <td style="width: 125px; border-right: #e8e8e8 1px solid;" align="center">
                                        <div style="width: 100px; position: relative; height: 100px">
                                            <%--<img alt="a"  style="position: relative" src='images/face/<%#DataBinder.Eval(Container.DataItem,"imageUrl")%>' />--%>
                                            
                                         </div>
                                        <%--<asp:Label ID="lblUserPic" runat="server" Style="position: relative" Text=<%#DataBinder.Eval(Container.DataItem,"userName") %>></asp:Label>
                                        --%>
                                        </td>
                                    <td style="width: 431px; border-bottom: #e8e8e8 1px solid; height: 121px">
                                        <div style="left: 2px; width: 100%; position: relative; top: 0px;
                                            text-align: left; height: 82px;">
                                                 <%# Eval("Body")%>
                                            
                                            <%--管理员回复：<%#DataBinder.Eval(Container.DataItem, "reply")%></div>--%>
                                         <%--<div style="left: 2px; width: 852px; position: relative; height: 25px;
                                            text-align: right">
                                            <img src="../Content/images/home/guestbook/reply.gif" style="position: relative; top: 2px;" />
                                            <a href="add.aspx" target="_blank">发表留言</a>
                                            <img src="../Content/images/home/guestbook/004.gif" style="position: relative; top: 2px;" />
                                            <asp:LinkButton ID="lbtnReply" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>'
                                                OnCommand="lbtnReply_Command" Style="position: relative; top: 0px">回复</asp:LinkButton>
                                            <img
                                            alt="a"  src="../Content/images/home/guestbook/delete.gif" style="border-top-style: none; border-right-style: none;
                                                    border-left-style: none; position: relative; border-bottom-style: none; top: 5px;" />
                                            <asp:LinkButton ID="lbtnDelete" runat="server"
                                                OnCommand="lbtnDelete_Command" Style="position: relative"  CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>'>删除</asp:LinkButton>&nbsp;
                                             </div>--%>
                                    </td>
                                </tr>
                               
                            </table>
                            <table border="0" cellspacing="0" style="border-top: #e8e8e8 1px solid; left: 1px;
                                width: 100%; position: relative; top: 0px; height: 13px">
                                <tr>
                                    <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 114px; border-left: #e8e8e8 1px solid;">
                                        <img alt="a" src="../Content/images/home/guestbook/003.gif" style="position: relative" /></td>
                                    <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 100%">
                                    </td>
                                    <td style="background-image: url(../Content/images/home/guestbook/showbj.gif); width: 133px; border-right: #e8e8e8 1px solid;" align="right">
                                        <img alt="a" src="../Content/images/home/guestbook/001.gif" style="position: relative" /></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <br />                            
                        </SeparatorTemplate>
                    </asp:DataList>

              </div>






              <div class="rightnow">
                    <h3 class="reallynow">
                     <span>回复</span>
                         <asp:LinkButton CssClass="add" ID="lnkPublish" Text="回复" runat="Server" 
                            onclick="lnkPublish_Click" />
                        <br />
                    </h3>

                    <table border="0" cellpadding="0" cellspacing="0" style="width: 98%; position: relative;
                        height: 94%; border-right: activeborder 1px solid; border-top: activeborder 1px solid; left: 0px; border-left: activeborder 1px solid; border-bottom: activeborder 1px solid; top: 0px;">
                       
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

                      <p class="youhave a-center">
                        <asp:Button id="btn_AckPay" Text="返回" runat="server"  
                              Height="36px" Width="116px" onclick="btn_AckPay_Click"  />
                
                    </p>


                </div>







  	</div><!--end of homeinfo-->






</asp:Content>
