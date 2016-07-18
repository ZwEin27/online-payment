<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="PaymentPlatform.aspx.cs" Inherits="OnlinePayment.OP.PaymentPlatform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript"src="../Content/Scripts/OP/AlertWindow.js"></script>

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
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                <div class="box rightnow">
                	<h3 class="reallynow">缴费平台</h3>
                      <fieldset id="stuinfo">
                        <legend>学生信息</legend>
                        <label for="name">姓名 : </label> 
                        <input readonly="true" name="name" id="txtname" type="text" tabindex="1" runat="server" />
                        <br />
                        <label for="code">学号 : </label>
                        <input readonly="true" name="code" id="txtStuId" type="text" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="class">班级 : </label>
                        <input readonly="true" name="class" id="txtclass" type="text" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="academy">学院 : </label>
                        <input readonly="true" name="academy" id="txtacademy" type="password" 
                        tabindex="2" runat="server"  />
                        <br />
                        &nbsp;<br />
                      </fieldset>
                      <fieldset id="paymentinfo">
                        <legend>缴费事项</legend>

                        <asp:DataList ID="paymentProjectList" runat="server" 
                        OnItemCommand="PaymentProjectList_ItemCommand">


                        <HeaderTemplate>
                            <table width="100%">
                            <thead>
							    <tr style="height:21px;width=100%">
                            	    <th width="10%"><a href="#">项目号</a></th>
                            	    <th width="30%"><a href="#">缴费项目名称</a></th>
                                    <th width="15%"><a href="#">缴费标准</a></th>
                                    <th width="15%"><a href="#">已缴金额</a></th>
                                    <th width="15%"><a href="#">缴费状态</a></th>
                                    <th width="15%"><a href="#">查看明细</a></th>
                                </tr>
                            </thead>
                            <tbody class="a-center">
                        </HeaderTemplate>

                        <ItemTemplate>
							     <tr>
                                    <td>
                                       <%# Eval("projectId") %>
                                    </td>
                                    <td>
                                       <%# Eval("projectName") %>
                                    </td>
                                     <td>
                                        <%# Eval("totalAmount")%>
                                    </td>
                                   <td>
                                        <%# Eval("totalPaidAmount")%>
                                    </td>
                                    <td>
                                        <%# Eval("projectStatus")%>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnDetail" runat="server" CommandName="Detail" Text="明细查看" 
                                            CommandArgument =<%# Eval("projectId") %>/>
                                   </td>

                                </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                          </table>
                        </FooterTemplate>


                      </asp:DataList>






                       <br />


                     
                      <asp:GridView ID="paymentItemList" runat="server" AutoGenerateColumns="False" Width="100%"
                                    AllowPaging="True" PageSize="6" 
                                    style="margin-top: 0px"  >
                            <Columns>
                                <asp:BoundField DataField="projectId" HeaderText="缴费项目号">
                                </asp:BoundField>   
                                <asp:BoundField DataField="detailName" HeaderText="缴费项名称" ></asp:BoundField>
                                <asp:BoundField DataField="detailStatus" HeaderText="状态"></asp:BoundField>   
                                <asp:BoundField DataField="amountShPay" HeaderText="缴费标准"></asp:BoundField>   
                                <asp:BoundField DataField="amountFcPay" HeaderText="已缴费"></asp:BoundField>
                                <asp:BoundField DataField="seperate" HeaderText="能否分开付款" />
                            </Columns>
                            <HeaderStyle CssClass="h3bar box" />
                            <RowStyle HorizontalAlign="Center" /> 
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />
                        </asp:GridView>









                        </fieldset>
                      <fieldset id="opt">
                        <legend>统计信息</legend>
                          <br />
                          

                          <asp:Label Text="本次缴费金额总计" ID="lblAmount" runat="server"></asp:Label> 
    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Pay"  Text="去支付" runat="server" onclick="Pay_Click"/>                   
                          
                          </fieldset>
                      <div align="center">

                      <input type="button" value="点这里" onclick="alertWin('标题','这里是内容',300,200);" />
                      <input id="button1" type="submit" value="Send" /> 
                      <input id="button2" type="reset" />
                      </div>

                </div>
                 </ContentTemplate>
             </asp:UpdatePanel>

              <div>
         
    </div>
</asp:Content>
