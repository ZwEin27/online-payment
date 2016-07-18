<%@ Page Title="" EnableViewState="true" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="PaymentHistoryView.aspx.cs" Inherits="OnlinePayment.OP.PaymentHistoryView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
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

.OrderBox   
{
    /*height:250px; */
    border:1px solid #e8e7e1;
}

.OrderBox .Content
{
   padding:10px;
   font-size:medium;
}

.OrderBox label {
	clear:left;
	display:block;
	float:left;
	width:120px;
	text-align:right;
	padding-right:10px;
	margin-bottom:5px;
    height: 30px;
    font-size:medium;
}

.OrderBox .textField{
	padding-right:10px;
	margin-bottom:5px;
    height: 30px;
    font-size:medium;
}

.DetailBox 
{
     padding:10px;
    
}



</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    

        <div class="box rightnow">
              <h3 class="reallynow">缴费历史</h3>
                    <div class="cleaner_h10"></div>
                        &nbsp;&nbsp;&nbsp;请选择缴费类型：
                        <asp:DropDownList AutoPostBack="true" ID="ddlPaymentType" runat="server" 
                  onselectedindexchanged="ddlPaymentType_SelectedIndexChanged">
                            <asp:ListItem Selected="True">请选择</asp:ListItem>
                            <asp:ListItem Text="学费" Value="1"></asp:ListItem>
                            <asp:ListItem Text="双专业费" Value="2"></asp:ListItem>
                            <asp:ListItem>水电费</asp:ListItem>
                            <asp:ListItem>校园网费</asp:ListItem>
                            <asp:ListItem>学生卡充值</asp:ListItem>
                            <asp:ListItem>显示全部</asp:ListItem>
                        </asp:DropDownList>
                        
                        


                   <div class="cleaner_h20"></div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>


                      <fieldset id="fs_tuition" runat="server">
                        <legend>学费信息</legend>
                        <div class="cleaner_h10"></div>

                        <asp:DataList ID="DL_Tuition" OnItemCommand="DL_Tuition_ItemCommand"  
                              runat="server" >
                        <HeaderTemplate>
                            
                        </HeaderTemplate>
                        <ItemTemplate>
                        <div class="OrderBox">
                            <h4 class="h4bar">订单编号：<%# Eval("orderId")%></h4>
                            <div class="Content">
                                <div class="textField">
                                     <label for="name">缴费项目名称 : </label> 
                                    <%# Eval("projectName")%>
                                    <br />
                                </div>

                                
                                <div class="textField">
                                    <label for="name">缴费日期 : </label> 
                                    <%# Eval("orderDate")%>
                                    <br />
                                 </div>


                                 <div class="textField">
                                    <label for="name">订单金额 : </label> 
                                    <%# Eval("totalAmount")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">缴费状态 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>


                                <div class="textField">
                                    <label for="name">订单详情 : </label>
                                    <asp:Button id="btnDetail" CommandName="CheckDetail" CommandArgument='<%# Eval("orderId")%>' Text="查看详细" runat="server" />
                                </div>
                            </div>

                            <div class="DetailBox">
                                <asp:GridView ID="GV_TuitionDetail" Width="100%"
                             AutoGenerateColumns="false" AllowPaging="True" PageSize="6" 
                                            style="margin-top: 0px" runat="server">
                                    <Columns>
                                        <asp:BoundField DataField="detailName" HeaderText="详细项名称"></asp:BoundField>
                                        <asp:BoundField DataField="amountShPay" HeaderText="已缴金额"></asp:BoundField>   
                                        <asp:BoundField DataField="amountFcPay" HeaderText="应缴金额"></asp:BoundField>   
                                        <asp:BoundField DataField="detailStatus" HeaderText="状态"></asp:BoundField>
                                        <asp:BoundField DataField="amount" HeaderText="本单缴费金额"></asp:BoundField>
                                    </Columns>
                                    <HeaderStyle CssClass="h3bar box" />
                                    <RowStyle HorizontalAlign="Center" /> 
                                    <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                                    <FooterStyle CssClass="shanchu" />
                                    <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                        HorizontalAlign="Right" />
                              </asp:GridView>
                            </div>
                            



                            

						</div>
                        <div class="cleaner_h10"></div>
                        </ItemTemplate>
                        <FooterTemplate>
                            
                        </FooterTemplate>
                      </asp:DataList>

                      <div align="center">
                        <asp:Button id="btnPrintOrderReports" Text="打印学费报表"  runat="server" 
                              onclick="btnPrintOrderReports_Click" />
                        </div>
                                



                      </fieldset>

                      <fieldset id="fs_doublemajor" runat="server">
                        <legend>双专业费</legend>
                      </fieldset>

                      <fieldset id="fs_utilities" runat="server">
                        <legend>水电费</legend>
                      </fieldset>

                      <fieldset id="fs_campusnetwork" runat="server">
                        <legend>校园网费</legend>
                        


                      </fieldset>

                      <fieldset id="fs_studentcard" runat="server">
                        <legend>学生卡充值</legend>
                        <asp:GridView ID="GV_StuCardBill" runat="server" AutoGenerateColumns="False" Width="100%"
                                    AllowPaging="True" PageSize="6" 
                                    style="margin-top: 0px"  >
                            <Columns>
                                <asp:BoundField DataField="orderId" HeaderText="订单编号"></asp:BoundField>   
                                <asp:BoundField DataField="orderStatus" HeaderText="订单状态" ></asp:BoundField>
                                <asp:BoundField DataField="totalAmount" HeaderText="充值金额"></asp:BoundField>   
                                <asp:BoundField DataField="orderDate" HeaderText="订单日期"></asp:BoundField> 
                            </Columns>
                            <HeaderStyle CssClass="h3bar box" />
                            <RowStyle HorizontalAlign="Center" /> 
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />
                        </asp:GridView>
                      </fieldset>
                      
                     
                     

                   </ContentTemplate>
             </asp:UpdatePanel>


            

                      
                </div>
</asp:Content>
