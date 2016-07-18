<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostPaymentProject.aspx.cs" Inherits="NetWorkPayment.BcakWard.PoatPaymentProject" %>

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
        </style>
    <script type="text/javascript">
        function addamount(txt) {
            if (txt.value != null) {
                sum = (parseInt)(document.getElementById("txtSum").value);
                sum = (parseInt)(txt.value) + sum;
                document.getElementById("txtSum").value=sum;
            }
        }
        function loadCalendar(field) {
            var rtn = window.showModalDialog("/Tools/calendar.htm", "", "dialogWidth:280px;dialogHeight:250px;status:no;help:no;scrolling:no;scrollbars:no;menubar:no;");
            if (rtn != null)
                field.value = rtn;
            return;
        }

    </script>
   
   
   
</head>
<body>
    <form id="form1" runat="server" >
    <table id="Table1" width="100%" border="0" cellpadding="0" cellspacing="0" runat="server">
          <tr>
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif"><img src="../content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div class="titlebt">发布缴费</div></td>
              </tr>
            </table></td>
            <td width="16" valign="top" background="../content/images/admin/mail_rightbg.gif"><img src="../content/images/admin/nav-right-bg.gif" width="16" height="29" /></td>
          </tr>
          <tr>
            <td valign="middle" background="../content/images/admin/mail_leftbg.gif">&nbsp;</td>
            <td valign="top" bgcolor="#F7F8F9"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="3"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
                <tr>
                  <td class="left_bt2">&nbsp;&nbsp;&nbsp;&nbsp;缴费信息列表：</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="30" colspan="3"><table width="100%" height="89" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">缴费项目名称：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <asp:TextBox ID="txtProjectName" runat="server" Width="404px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RfvUserPwd" runat="server" ControlToValidate="txtProjectName"
                       Display="Dynamic" ErrorMessage="公告标题不能为空" Font-Size="9pt" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                 
                </tr>
                 <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">缴费类型：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                  <asp:DropDownList ID="projectType" runat="server" Height="18px" Width="145px" >
                  </asp:DropDownList>
                  </td>
                </tr>
                <tr>
                  <td height="30" align="center" class="left_txt">缴费对象所在学院：</td>
                  <td height="30" class="left_txt">
                  <asp:DropDownList ID="objectAcadamy" runat="server" Height="18px" Width="145px" 
                      onselectedindexchanged="objectAcadamy_SelectedIndexChanged">
                  </asp:DropDownList>
                                          </td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">缴费对象专业：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <table>
                      <tr>
                  
                      <td>
                      <asp:DropDownList ID="objectMajor" runat="server" Height="20px" Width="143px">
                      </asp:DropDownList>
                       </td>
                    </tr>

                  </table>
                  </td>
                </tr>


                <tr>
                  <td height="30" align="center" class="left_txt">缴费对象年级：</td>
                  <td height="30" class="left_txt">
                  <asp:DropDownList ID="objectYear" runat="server" Height="20px" Width="143px">
                  </asp:DropDownList>
                                          </td>
                </tr>

                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">缴费时间：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                      <table>
                      <tr>
                  
                      <td>
                          <asp:TextBox ID="txtBeginTime" runat="server" ></asp:TextBox>
                          &nbsp;<img src="../Content/Images/Admin/calendar.png" height="20" 
                              onclick="loadCalendar(form1.txtBeginTime)" style="width: 20px">&nbsp;&nbsp;至&nbsp;&nbsp;<asp:TextBox 
                              ID="txtEndTime" runat="server" Height="19px" Width="148px" ></asp:TextBox>&nbsp;<img src="../Content/Images/Admin/calendar.png" width="20" height="20" onClick="loadCalendar(form1.txtEndTime)"></td>
                    </tr>

                  </table>
                  </td>
                </tr>
                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt">缴费项目明细：</td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
       <asp:GridView ID="paymentList" runat="server" AutoGenerateColumns="false" 
             OnRowCommand="paymentList_OnRowCommand">
             <Columns>
                 <asp:TemplateField HeaderText="ID" Visible="false">
                     <ItemTemplate >
                         <asp:Label runat="server" ID="lblID"  Text='<% #DataBinder.Eval(Container.DataItem,"ID") %>'></asp:Label>
                     </ItemTemplate>
                  </asp:TemplateField>
                <asp:TemplateField HeaderText="缴费项目名称">
                    <ItemTemplate>
                           <asp:TextBox runat="server" ID="txtProName" Text='<% #DataBinder.Eval(Container.DataItem,"txtProName") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="收费标准">
                    <ItemTemplate>
                           <asp:TextBox runat="server" ID="txtAmount" Text='<% #DataBinder.Eval(Container.DataItem,"txtAmount") %>' onBlur="addamount(this)"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="能否分开缴费">
                     <ItemTemplate>
                           <asp:CheckBox runat="server" ID="ckSerprate" Checked='<%# Eval("ckSerprate") == DBNull.Value?false:Convert.ToBoolean(Eval("ckSerprate"))%> ' ></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField >
                <asp:TemplateField>
                     <ItemTemplate>
                       <asp:Button runat="server" ID="btnDelete" Text="删除" CommandArgument='<% #DataBinder.Eval(Container.DataItem,"ID") %>'  CommandName="DeleteData" />
                     </ItemTemplate>
                </asp:TemplateField>
             </Columns>
       </asp:GridView>
       <asp:Button  ID="btnInsert" runat="server" Text="增加行" onclick="btnInsert_Click"/>
                      <br />
      该缴费项总金额<input type="text" value="0" ID="txtSum" runat="server" ReadOnly="True"/><asp:Button  ID="btnSubmit" runat="server" Text="提交" onclick="btnSubmit_Click" />
                      <br />
                      </td>
                  </td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td width="35%" height="30" align="right">


                      <asp:ImageButton AlternateText="添加缴费项目" ID="btn_addPaymentProject"  align="right"
                                             ImageUrl="../Content/Images/Admin/button/ackBtn.png" runat="server" 
                                             onclick="btn_addPaymentProject_Click" />
                </td>
              <td width="10%" height="30" align="right">&nbsp;</td>
                          <td width="55%" height="30">
                              <a href="UserManagerView.aspx" target="main" style="margin-left:30px;">
                                <img style="border:0px;" src="../Content/Images/Admin/button/retBtn.png" />
                          </a>
                                          </td>

            </tr>
            <tr>
              <td height="30" colspan="3">&nbsp;</td>
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
