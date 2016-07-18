<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="PaymentProjectDetail.aspx.cs" Inherits="OnlinePayment.OP.PaymentProjectDetail" %>
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

.ProjectBox .Content
{
   padding:10px;
   font-size:medium;
}

.ProjectBox label {
	clear:left;
	display:block;
	float:left;
	width:120px;
	text-align:right;
	padding-right:10px;
	margin-bottom:5px;
    height: 20px;
    font-size:medium;
}

.ProjectBox .textField{
	padding-right:10px;
	margin-bottom:5px;
    height: 20px;
    font-size:medium;
}

.ProjectDetailBox 
{
     padding:10px;
    
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


             <div class="ProjectBox">
                            <h3 class="h3bar">缴费项目明细</h3>
                            <div class="Content">
                                <div class="textField">
                                     <label for="name">缴费项目名称 : </label> 
                                    <%# Eval("projectName")%>
                                    <br />
                                </div>

                                
                                <div class="textField">
                                    <label for="name">年份 : </label> 
                                    <%# Eval("orderDate")%>
                                    <br />
                                 </div>


                                 <div class="textField">
                                    <label for="name">起始日期 : </label> 
                                    <%# Eval("totalAmount")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>


                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>

                                <div class="textField">
                                    <label for="name">终止日期 : </label> 
                                    <%# Eval("orderStatus")%>
                                    <br />
                                </div>


                                <div class="textField">
                                    <label for="name">订单详情 : </label>
                                    <asp:Button id="btnDetail" CommandName="CheckDetail" CommandArgument='<%# Eval("orderId")%>' Text="查看详细" runat="server" />
                                </div>
                            </div>











        </ContentTemplate>
    </asp:UpdatePanel>     
</asp:Content>
