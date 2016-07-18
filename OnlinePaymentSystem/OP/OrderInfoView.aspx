<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="OrderInfoView.aspx.cs" Inherits="OnlinePayment.OP.OrderInfoView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="box rightnow">
              <h3 class="reallynow">个人信息</h3>
                    


                    <asp:Label ID="lblStu" runat="server" Text="您好"></asp:Label>
       <br />
       <asp:Label ID="lblOrderKind" runat="server" Text="选择查看的项目种类"></asp:Label>
       <asp:DropDownList ID="kindList" runat="server" 
            onselectedindexchanged="kindList_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
       <br/>
       订单信息：
       <asp:GridView ID="utilityOrderList" runat="server" AutoGenerateColumns="False" Width="676px"
                    AllowPaging="True" PageSize="6" style="margin-top: 20px " Height="176px"  visible="false">
                            <Columns>
                                <asp:BoundField DataField="orderId" HeaderText="订单号"></asp:BoundField>   
                                <asp:BoundField DataField="totalAmount" HeaderText="订单金额" ></asp:BoundField>
                                <asp:BoundField DataField="orderDate" HeaderText="下单日期"></asp:BoundField>   
                                <asp:BoundField DataField="date" HeaderText="水电费月份"></asp:BoundField>
                            </Columns>
                            <HeaderStyle CssClass="biaogese" />
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />
           </asp:GridView> 
            <asp:GridView ID="netWortPortOrderList" runat="server" AutoGenerateColumns="False" Width="676px"
                    AllowPaging="True" PageSize="6" style="margin-top: 0px" Height="176px"  visible="false">
                            <Columns>
                               <asp:BoundField DataField="orderId" HeaderText="订单号"></asp:BoundField>   
                                <asp:BoundField DataField="totalAmount" HeaderText="订单金额" ></asp:BoundField>
                                <asp:BoundField DataField="orderDate" HeaderText="下单日期"></asp:BoundField>   
                                <asp:BoundField DataField="portId" HeaderText="充值端口号"></asp:BoundField>
                               
                            </Columns>
                            <HeaderStyle CssClass="biaogese" />
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />
           </asp:GridView> 
            <asp:GridView ID="stuCardOrderList" runat="server" AutoGenerateColumns="False" Width="676px"
                    AllowPaging="True" PageSize="6" style="margin-top: 0px" Height="176px"  visible="false">
                            <Columns>
                                <asp:BoundField DataField="orderId" HeaderText="订单号"></asp:BoundField>   
                                <asp:BoundField DataField="totalAmount" HeaderText="订单金额" ></asp:BoundField>
                                <asp:BoundField DataField="orderDate" HeaderText="下单日期"></asp:BoundField>   
                                <asp:BoundField DataField="stuCardId" HeaderText="充值学生卡号"></asp:BoundField>
                            </Columns>
                            <HeaderStyle CssClass="biaogese" />
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />
           </asp:GridView> 
            <asp:GridView ID="paymentProjectOrderList" runat="server" AutoGenerateColumns="False" Width="676px"
                    AllowPaging="True" PageSize="6" style="margin-top: 0px" Height="176px"  visible="false">
                            <Columns>
                                <asp:BoundField DataField="orderId" HeaderText="订单号"></asp:BoundField>   
                                <asp:BoundField DataField="totalAmount" HeaderText="订单金额"></asp:BoundField>   
                                <asp:BoundField DataField="orderDate" HeaderText="下单日期"></asp:BoundField> 
                                <asp:BoundField DataField="projectName" HeaderText="缴费项名称" ></asp:BoundField>                                  
                                <asp:TemplateField HeaderText="明细查看">
                                   <ItemTemplate >
                                        <asp:Button ID="btnDetail" runat="server" CommandName="Detail" Text="明细查看" 
                                            CommandArgument =<%#DataBinder.Eval(Container.DataItem,"stuProjectId")%> 
                                             style="height: 21px"/>
                                  </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle CssClass="biaogese" />
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />
           </asp:GridView> 
           <div id="detailDiv" runat="server" visible="false">
             <br />
             订单明细
              <asp:GridView ID="projectDetailList" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True" PageSize="6" style="margin-top: 0px" Height="176px"  visible="false">
                            <Columns>
                                <asp:BoundField DataField="orderId" HeaderText="订单号"></asp:BoundField>   
                                <asp:BoundField DataField="amount" HeaderText="订单金额"></asp:BoundField>   
                                <asp:BoundField DataField="detailName" HeaderText="详细项名称" ></asp:BoundField>                                  
                            </Columns>
                            <HeaderStyle CssClass="biaogese" />
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
                            <FooterStyle CssClass="shanchu" />
                            <PagerStyle CssClass="shanchu" Font-Bold="True" Font-Size="12px" ForeColor="Green"
                                HorizontalAlign="Right" />
           </asp:GridView> 
           </div>




















<div align="center">
    &nbsp;</div>
</div>


</asp:Content>
