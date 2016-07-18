<%@ Page Language="C#"  EnableViewState="true" AutoEventWireup="true" CodeBehind="PaymentCharView.aspx.cs" Inherits="OnlinePayment.Admin.PaymentCharView" %>
<%@ Register assembly="Chartlet" namespace="FanG" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/Css/Admin/skin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body {
	        margin:0px;
	        background-color: #EEF2FB;
        }
        #UpdatePanel1
        {
           border: 1px solid #e2e7ed;
        }
        .signData
        {
            color:red;
            font-weight:bold;
        }
        .operateBtn
        {
            margin:0px 15px 10px 15px; 
        }
        .tmp
        {
             width:72px;
             height:90px; 
        }
       /* #searchTuition,#searchUtility,#searchNetworkBill,#searchStudentCard select
        {
            visibility:hidden;
        }*/
    </style>
    <script type="text/javascript" src="../Content/Scripts/jquery-1.6.2.min.js"></script>
    <script type="text/javascript">

        $(function () {

            /*$("#ddl_type").change(function () {
                var v = $(this).val();
                hideAll();
                if (v == "0") {
                } else if(v == "1") {
                    $("#searchTuition").show();
                } else if (v == "2") {
                    $("#searchTuition").show();
                } else if (v == "3") {
                    $("#searchUtility").show();
                } else if (v == "4") {
                    $("#searchNetworkBill").show();
                } else if (v == "5") {
                    $("#searchStudentCard").show();
                } else 
                {
                }
            });

            function hideAll() {
                $('#searchTuition').hide();
                $('#searchUtility').hide();
                $('#searchNetworkBill').hide();
                $('#searchStudentCard').hide();
            }*/

            /*
            $("#ddl_type").click(function () {
            $('[name=checkbox]:checkbox').attr("checked", this.checked);
            $('[name=txtCurAmount]:text').attr("disabled", !this.checked);
            });
            
            $('[name=checkbox]:checkbox').click(function () {
            var $tmp = $('[name=checkbox]:checkbox');
            $('#CheckedAll').attr('checked', $tmp.length == $tmp.filter(':checked').length);   //如果所有的CheckBox都Checked
            if (this.checked) {
            $(this).parent().parent().siblings().last().children().attr("disabled", false);
            //alert("Checked");
            } else {
            $(this).parent().parent().siblings().last().children().attr("disabled", true);
            //alert("Unchecked");
            }

            });
            
            //输出值
            $("#send").click(function(){
            var str="你选中的是：\r\n";
            $('[name=items]:checkbox:checked').each(function(){
            str+=$(this).val()+"\r\n";
            })
            alert(str);
            });*/
        });
    </script>





<!-- 表格样式 -->
                 




</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="17" valign="top" background="../Content/images/admin/mail_leftbg.gif"><img src="../Content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../Content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div class="titlebt">缴费报表</div></td>
              </tr>
            </table></td>
            <td width="16" valign="top" background="../Content/images/admin/mail_rightbg.gif"><img src="../Content/images/admin/nav-right-bg.gif" width="16" height="29" /></td>
          </tr>
          <tr>
            <td valign="middle" background="../Content/images/admin/mail_leftbg.gif">&nbsp;</td>
            <td valign="top" bgcolor="#F7F8F9"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" colspan="3"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30"  bgcolor="#F7F8F9" class="left_txt">
                      
                        <div class="cleaner_h10"></div>
                      
                        <fieldset style="width:702px; float:left; display:inline">
                            <legend>综合查询</legend>


                            
                                <asp:DropDownList id="ddl_type" AutoPostBack="true" onselectedindexchanged="ddl_type_SelectedIndexChanged" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                    <asp:ListItem Text="请选择缴费类型" Value="0" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="学费" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="双专业费" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="水电费" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="校园网费" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="学生卡充值" Value="5"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button id="btn_Search" Height="33px" Text="查找" runat="server" 
                                    Width="145px" onclick="btn_Search_Click" />
                            <p class="lblInfo">
                                ※提示：选择任意的条件均能得到查询结果 <br />
                                 &nbsp;&nbsp;目前系统共录入的学院有：软件学院，经济学院，文学院和外国语学院
                            </p>

                           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>     
                                <div id="searchTuition" runat="server">
                                    <asp:DropDownList id="ddl_academy" AutoPostBack="true" runat="server" 
                                        Height="22px" Width="178px" CssClass="ddl" 
                                        onselectedindexchanged="ddl_academy_SelectedIndexChanged">
                                        <asp:ListItem Text="请选择学院" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList> 
                                    <asp:DropDownList id="ddl_major" AutoPostBack="true" runat="server" 
                                        Height="22px" Width="178px" CssClass="ddl" 
                                        onselectedindexchanged="ddl_major_SelectedIndexChanged">
                                        <asp:ListItem Text="请选择专业" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList> 
                                    <asp:DropDownList id="ddl_grade" AutoPostBack="true" runat="server" 
                                        Height="22px" Width="178px" CssClass="ddl" 
                                        onselectedindexchanged="ddl_grade_SelectedIndexChanged">
                                        <asp:ListItem Text="请选择年级" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList id="ddl_class" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择班级" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList id="ddl_year" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择缴费年份" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div id="searchUtility" runat="server">
                                    
                                    <asp:DropDownList id="ddl_uitilityYear" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择缴费年份" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList> 
                                    <asp:DropDownList id="ddl_uitilityMonth" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择缴费月份" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList id="ddl_apartment" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择公寓楼" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList> 
                                    <asp:TextBox id="txt_dorNum" Text="请选择宿舍号" AutoPostBack="true" runat="server" Height="20px" Width="178px" CssClass="ddl"></asp:TextBox> 
                                </div>
                                
                                <div id="searchNetworkBill" runat="server">
                                    <asp:DropDownList id="ddl_NB_Year" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择缴费年份" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList> 
                                    <asp:DropDownList id="ddl_NB_Month" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择缴费月份" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList id="ddl_NB_Apartment" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择公寓楼" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList> 
                                    <asp:TextBox id="txt_NB_DorNum" Text="请输入宿舍号" AutoPostBack="true" runat="server" Height="20px" Width="178px" CssClass="ddl"></asp:TextBox>
                                    <asp:DropDownList id="ddl_NB_PortNum" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl">
                                        <asp:ListItem Text="请选择端口号" Value="0" Selected="True"></asp:ListItem>
                                    </asp:DropDownList> 

                                </div>

                                <div id="searchStudentCard" runat="server">
                                    <asp:DropDownList id="DropDownList3" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl"></asp:DropDownList> 
                                    <asp:DropDownList id="DropDownList4" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl"></asp:DropDownList>
                                    <asp:DropDownList id="DropDownList5" AutoPostBack="true" runat="server" Height="22px" Width="178px" CssClass="ddl"></asp:DropDownList>
                                </div>
                                 </ContentTemplate>
                    </asp:UpdatePanel>
                                 
                            
                        </fieldset>



                        <fieldset style="display:inline; margin:0px 0px 0px 20px">
                            <legend>操作查询结果</legend>
                            <p class="lblInfo">
                                <asp:ImageButton ID="imgbtn_generateReport" CssClass="operateBtn" OnClick="imgbtn_generateReport_Click" ImageUrl="../Content/Images/Admin/report_btn.png" runat="server" />
                                <asp:ImageButton ID="imgbtn_generateChart" CssClass="operateBtn" OnClick="imgbtn_generateChart_Click" ImageUrl="../Content/Images/Admin/chart_btn.png" runat="server" />
                            </p>
                        </fieldset>




                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                        <br />
                        <div class="cleaner_h10"></div>

                        <fieldset>
                            <legend>查询结果</legend>

 
      <%if (ViewState["ResultType"].ToString().Equals("Report"))
      {%>

     
                        
                            <%switch (ViewState["SearchResultSwitch"].ToString())
                              {
                                case "学费":%>
                                <p class="lblInfo"><!-- 搜索结果信息面板-->
                                 已找到符合条件的项目: &nbsp;<span class="signData"><%=GV_SelectedResult.Rows.Count%></span>&nbsp;条, &nbsp;&nbsp;&nbsp;
                                 其中，已缴费学生&nbsp;<span class="signData"><asp:label id="lbl_tuition_paidNum" runat="server" /></span> &nbsp;名，未缴清学生&nbsp;<span class="signData"><asp:label id="lbl_tuition_unPaidNum" runat="server" /></span> &nbsp;名。
                                 <br />
                                 总计须缴总金额：&nbsp;￥<span class="signData"><asp:label id="lbl_tuition_totalNeedPayAmount" runat="server" /></span>&nbsp;，已缴总金额&nbsp;￥<span class="signData"><asp:label id="lbl_tuition_totalHasPaidAmount" runat="server" /></span>&nbsp
                                
                                </p>
                                <p class="lblInfo"><!--操作搜索结果面板-->
                                    <asp:Button id="btn_ShowDetail" Text="显示详细" runat="server" 
                                        onclick="btn_ShowDetail_Click" />
                                </p>
                                     <% break;
                                case "学费详细":%>
                                    学费详细


                                     <% break;
                                case "双专业费":%>
                                    双专业费


                                     <% break;
                                case "重修费":%>
                                重修费

                                     <% break;
                                case "水电费":%>
                                水电费

                                     <% break;
                                case "校园网费":%>
                                校园网费

                                     <% break;
                                case "学生卡费":%>
                                学生卡费

                                     <% break; //默认为空，即没有进行任何搜索
                                  default:%>
                                     ※暂时没有任何搜索结果
                                     <% break;

                              } %>
                               
                            




                            


                           
                           
                            <asp:GridView ID="GV_SelectedResult" runat="server" AutoGenerateColumns="False" Width="100%"
                                    AllowPaging="True" PageSize="20" AllowSorting="true"
                                    style="margin-top: 0px" onsorting="GV_SearchedTuition_Sorting" 
                                onpageindexchanging="GV_SelectedResult_PageIndexChanging"  >
                            <HeaderStyle CssClass="h3bar box" />
                            <RowStyle HorizontalAlign="Center" /> 
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />

                            <PagerTemplate>
                当前第:
                <asp:Label ID="LabelCurrentPage" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"></asp:Label>
                页/共:
                <asp:Label ID="LabelPageCount" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageCount %>"></asp:Label>
                页
                <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                    Visible='<%#((GridView)Container.NamingContainer).PageIndex != 0 %>'>首页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                    CommandName="Page" Visible='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>'>上一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                    Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>下一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                    Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>尾页</asp:LinkButton>
                转到第
                <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' />页
                <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                    CommandName="Page" Text="GO" />
            </PagerTemplate>

                           </asp:GridView>
                           <br />
                           <br />


<% } else if (ViewState["ResultType"].ToString().Equals("Chart"))      //显示图表
{%>
                            
                                        <asp:DropDownList ID="AT" runat="server" AutoPostBack="True" 
                                            onselectedindexchanged="AT_SelectedIndexChanged">
                                        </asp:DropDownList>

                                        <br />
                                        <cc1:Chartlet ID="Chartlet1" runat="server" />
                                    







<%}%>







                        </fieldset>
                        </ContentTemplate>
                                </asp:UpdatePanel>

    
                      
                      
                      
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
