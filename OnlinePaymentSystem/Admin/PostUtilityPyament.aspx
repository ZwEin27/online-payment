<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostUtilityPyament.aspx.cs" Inherits="NetWorkPayment.BcakWard.PostUtilityPyament" %>

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
       //选中所有行        
       function SelectAll(chkAll) {
           var gridview = document.getElementById("GridView1");
           if (gridview) {    //获取到GridView1中的所有input标签               
               var inputs = gridview.getElementsByTagName("input");
               for (var i = 0; i < inputs.length; i++) {
                   if (inputs[i].type == "checkbox") {  //设置所有checkbox的选中状态与chkAll一致                    
                       inputs[i].checked = chkAll.checked;
                   }
               }
           }
       }
       //给选中行换背景色       
       function checkRow(chkRow) {
           var row = chkRow.parentNode.parentNode;
           if (row) {
               if (chkRow.checked)
                   row.style.backgroundColor = "#7799CC";
               else
                   row.style.backgroundColor = "#FFFFFF";
           }
       }     
  </script>
</head>
<body>
    <form id="form1" runat="server">
     <table id="Table1" width="100%" border="0" cellpadding="0" cellspacing="0" runat="server">
          <tr>
            <td width="17" valign="top" background="../content/images/admin/mail_leftbg.gif"><img src="../content/images/admin/left-top-right.gif" width="17" height="29" /></td>
            <td valign="top" background="../content/images/admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
              <tr>
                <td height="31"><div class="titlebt">发布水电费</div></td>
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
                    <td align="center" class="left_txt">日期:</td>
                    <td class="left_txt"><asp:Label ID="lblDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                   <td align="center" class="left_txt">选择宿舍所在位置</td>
                   <td  class="left_txt" >
                     <asp:DropDownList ID="dormitoryLocationList" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dormitoryLocationList_SelectedIndexChanged">
                      </asp:DropDownList>
                  </td>
                </tr>
                <tr>
                  <td align="center" class="left_txt">选择宿舍楼</td>
                  <td class="left_txt">
                   <asp:DropDownList ID="dormitoryBuildNumList" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="dormitoryBuildNumList_SelectedIndexChanged">
                   </asp:DropDownList>
                 </td>
               </tr>
                
                <tr>
                  <td height="30" align="center" bgcolor="#f2f2f2" class="left_txt"></td>
                  <td height="30" bgcolor="#f2f2f2" class="left_txt">
                  <%@Import Namespace="System.Data"%>
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Visible="true">            
         <Columns>                
         <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" >                    
           <ItemStyle CssClass="hide" BorderColor="#507CD1" />                    
           <HeaderStyle CssClass="hide" />                
         </asp:BoundField> 
         <asp:TemplateField >                                       
             <ItemTemplate>                        
                <input id="chkRow" type="checkbox" onclick="checkRow(this);" runat="server" />                    
             </ItemTemplate>                   
             <ItemStyle Width="30px" HorizontalAlign="Center" BorderColor="#507CD1" BorderWidth="1px" />                
         </asp:TemplateField>                    
         <asp:TemplateField HeaderText="序号">                   
            <ItemTemplate>                       
             <%# Container.DataItemIndex + 1%>                    
             </ItemTemplate>                    
             <ItemStyle BorderColor="#507CD1" HorizontalAlign="Center" BorderWidth="1px" /> 
         </asp:TemplateField> 
         <asp:TemplateField HeaderText="宿舍号">                                       
             <ItemTemplate>                        
                <asp:DropDownList ID="dorNumList" runat="server" Width="80px" AutoPostBack="true"  DataSource='<%#(DataTable)ViewState["tbl"]%>'
                  DataTextFiled="dorNum" DataValueField="dorId" >
                </asp:DropDownList>                 
             </ItemTemplate>                   
             <ItemStyle Width="100px" HorizontalAlign="Center" BorderColor="#507CD1" BorderWidth="1px" />                
         </asp:TemplateField>                          
         <asp:TemplateField HeaderText="本月水表抄见">                    
              <ItemTemplate>                        
               <asp:TextBox ID="txtWaterUseNum" runat="server" Text='<%# Bind("waterUseNum") %>' BorderStyle="None">
               </asp:TextBox>                    
              </ItemTemplate>                    
              <ItemStyle Width="100px" BorderColor="#507CD1" BorderWidth="1px" />               
         </asp:TemplateField>                
         <asp:TemplateField HeaderText="本月电表抄见">                    
            <ItemTemplate>                        
              <asp:TextBox ID="txtElecUseNum" runat="server" Text='<%# Bind("elecUseNum") %>' BorderStyle="None"></asp:TextBox>                    
           </ItemTemplate>                    
           <ItemStyle Width="100px" BorderColor="#507CD1" BorderWidth="1px" />                
         </asp:TemplateField>                      
         </Columns>              
       </asp:GridView>
          </td>
            <td background="../content/images/admin/mail_rightbg.gif">&nbsp;</td>
          </tr>
          <tr>
             <td center" class="left_txt">
             <input id="chkAll" type="checkbox" onclick="SelectAll(this)" />全选
            <asp:LinkButton ID="lbtnAddRow" runat="server"  OnClick="lbtnAddRow_Click">添加行  </asp:LinkButton>      
            <asp:LinkButton ID="btnDeleteRow" runat="server" OnClick="btnDeleteRow_Click" OnClientClick="return confirm('确定要删除选中行吗？');">删除选中行</asp:LinkButton>
            </td>
            <td>
           
            </td>
          </tr>
          <tr>
          </tr>
        </table> 
        </td>
            </tr>
            <tr>
              <td width="35%" height="30" align="right">


                      <asp:ImageButton AlternateText="添加缴费项目" ID="btnSubmit"  align="right"
                                             ImageUrl="../Content/Images/Admin/button/ackBtn.png" runat="server" 
                                             onclick="btnSubmit_Click" />
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
   
    </div>
    </form>
</body>
</html>
