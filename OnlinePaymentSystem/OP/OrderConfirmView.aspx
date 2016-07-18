<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="OrderConfirmView.aspx.cs" Inherits="OnlinePayment.OP.OrderConfirmView" %>
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
    
<script type="text/javascript">
        function showBox(orderId) {
            $(function () {
                asyncbox.open({
                    url: 'SmallViewToPayOrder.aspx',
                    title: "订单生成",
                    data: {
                        id: orderId
                    },
                    width: 400,
                    height: 300,
                    btnsbar: $.btn.OKCANCEL,
                    callback: function (action, opener, returnValue) {
                        if (action == 'ok') {
                            if (returnValue == null) {
                                alert("测试阶段，默认标记为已付款");
                            } else {
                                alert(returnValue);
                            }
                        }

                    }
                   




                });
            });
        }
       /* function ShowPayInfo() {
            asyncbox.open({
                url: 'SmallViewToPayOrder.aspx',
                width: 400,
                height: 300
            });
        
});}*/

</script>
<style type="text/css">
.on{margin:5px;border:4px solid #F60;filter:alpha(Opacity=100)}
.off{margin:5px;border:1px solid #CCC;filter:alpha(Opacity=40)}
</style>
<script type="text/javascript">
    function aa(a, b, c) {
        document.getElementById("ContentPlaceHolder1_ContentPlaceHolder2_txt_chosedBank").value = a;

        document.getElementById("bankIcon").getElementsByTagName("img")[a - 1].className = "on";
        document.getElementById("bankIcon").getElementsByTagName("img")[b - 1].className = "off";
        document.getElementById("bankIcon").getElementsByTagName("img")[c - 1].className = "off";
    }
    function Check(x) {
        for (i = 1; i <= 1; i++) document.all.img.value = x
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
      

<div class="box rightnow">
    <h3 class="reallynow">确认缴费订单</h3>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>   
    



    <p class="youhave">
        本次缴费的订单总金额为
        ：￥ <asp:label id="lbl_totalAmount" runat="server" />
    </p>
    <% if (orders != null){%>
    
    <asp:GridView ID="GV_OrderConfirm" runat="server" AutoGenerateColumns="False" Width="100%"
                                    AllowPaging="True" PageSize="20" AllowSorting="true"
                                    style="margin-top: 0px" 
                                  >
                            <HeaderStyle VerticalAlign="Middle" HorizontalAlign="Center" Height="30px" CssClass="h3bar box" />
                            <RowStyle Height="25px"  VerticalAlign="Middle" HorizontalAlign="Center" /> 
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
           
    
   <% }
       else if (order != null)
       {%>
             <p class="youhave">
                您次缴费的项目是： <asp:label id="lbl_PaymentProjectName" runat="server" />
              </p>
                <%if (order.PaymentType.Equals("一卡通")){ %>
                
                   <p class="youhave">
                        
                        您缴费的学生卡号为： <asp:label id="lbl_StuCardId" runat="server" /> <br />
                       
                   </p>

                <%}else if (order.PaymentType.Equals("水电费")){%>
                
             

               <%}else if (order.PaymentType.Equals("月网费")){%>
                
             

               <% }else if (order.PaymentType.Equals("年网费")){%>
                
               

               <%}else if (order.PaymentType.Equals("半年网费")){%>
                
              
                

               <% }%>
              
   <%}else{%>
     
     ※没有任何订单信息

 <%} %>













    <br />

    
           </ContentTemplate>
                    </asp:UpdatePanel>
        <br />
       <p class="youhave">
            请选择缴费银行：
            <div id="bankIcon" class="inputdiy" style=" padding:10px 30px 20px 30px;">
                <a style=" margin-right:30px;" href="#"><img border="0" src="../Content/Images/bankicon/bank_5.jpg" alt="中国银行"  name="1" onclick=aa(1,2,3,4);Check(this.name,"") class="off"></a> 
                <a style=" margin-right:30px;" href="#"><img border="0" src="../Content/Images/bankicon/bank_6.jpg" alt="中国工商银行"  name="2" onclick=aa(2,1,3,4);Check(this.name,"") class="off"></a> 
                <a style=" margin-right:30px;" href="#"><img border="0" src="../Content/Images/bankicon/bank_7.jpg" alt="中国建设银行"  name="3" onclick=aa(3,1,2,4);Check(this.name,"") class="off"></a>  
                <<br />
            </div>
            <div class="inputdiy">
                <input type="hidden"  style=" margin-left:40px; width:219px; height:25px;" 
                    name="img" id="txt_chosedBank" value="" runat="Server"  />

            </div>
            
            
       </p>

       <p class="youhave a-center">
            <asp:Button id="btn_AckPay" Text="生成订单" runat="server" 
                onclick="btn_AckPay_Click" />

       </p>



</div>






</asp:Content>
