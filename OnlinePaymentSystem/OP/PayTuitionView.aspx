<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="PayTuitionView.aspx.cs" Inherits="OnlinePayment.OP.PayTuitionView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <style type="text/css">
      *{
	    margin:0;
	    padding:0;
    }
    input{
        width:20px;
        padding:0px;
        margin:0px;
        border:0px solid #e8e7e1;
        background:inherit;
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
    {
        width:19px;
        padding:0px;
        margin:0px;
        border:0px solid #e8e7e1;
        background:inherit;
    }
    
    </style>

    <script type="text/javascript" src="../Content/Scripts/jquery-1.6.2.min.js"></script>
    <script type="text/javascript">
        $(function () {

            $("#CheckedAll").click(function () {
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

            /*  //输出值
            $("#send").click(function(){
            var str="你选中的是：\r\n";
            $('[name=items]:checkbox:checked').each(function(){
            str+=$(this).val()+"\r\n";
            })
            alert(str);
            });*/
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
                <div class="box rightnow">
                	<h3 class="reallynow">缴交学费/双专业费/重修费</h3>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    <div class="inputdiy">
                        <input type="checkbox" id="CheckedAll" />全选/全不选<br/>
                    </div>
                    <%  foreach (int year in unPaidYearList){ %>
                            <fieldset>
                            <div class="cleaner_h10"></div>
                                <legend><%=year %>年应缴学费清单：</legend>
                              <table width="100%">
                            <thead>
							    <tr style="height:31px;width=100%">
                            	    <th width="10%"><a href="#"></a></th>
                            	    <th width="30%"><a href="#">缴费项名称</a></th>
                                    <th width="15%"><a href="#">未缴金额</a></th>
                                    <th width="15%"><a href="#">已缴金额</a></th>
                                    <th width="15%"><a href="#">缴费状态</a></th>
                                    <th width="15%"><a href="#">本次缴费金额</a></th>
                                </tr>
                            </thead>
                            <tbody class="a-center">


                            <%for(int r=0;r<tuitionDataTable.Rows.Count;r++){
                                  if (Convert.ToInt32(tuitionDataTable.Rows[r]["year"])!= year)
                                {
                                    continue;
                                }
                            %>
                                <tr>
                                    <td>
                                        <div class="inputdiy">
                                            <input type="checkbox" name="checkbox" value='<%=tuitionDataTable.Rows[r]["detailId"]%>' />
                                        </div>
                                        

                                    </td>
                                    <td>
                                        <%=tuitionDataTable.Rows[r]["detailName"]%>
                                    </td>
                                    <td>
                                        <%=tuitionDataTable.Rows[r]["amountFcPay"]%>
                                    </td>
                                    <td>
                                        <%=tuitionDataTable.Rows[r]["amountShPay"]%>
                                    </td>
                                    <td>
                                        <%=tuitionDataTable.Rows[r]["detailStatus"]%>
                                    </td>
                                    <td>
                                        <input type="text" name="txtCurAmount" style="text-align:center;" disabled="true" id="txtCurAmount" value="0" />
                                    </td>
                                </tr>
                                
                                
                                  
                                  
                            <% } %>
                                



                                </tbody>
                            </table>
                            </fieldset>
                    <%}%>

                    <input type="text" id="hid_value" runat="Server" />
                        
                 </ContentTemplate>
             </asp:UpdatePanel>
                   
                     
                      
       <p class="youhave a-center">
           <asp:Button id="btn_Pay" Text="付款" runat="server" onclick="btn_Pay_Click" />
       </p>

                 </div>

                 
                 <input type="hidden" id="tuitionTableValue" runat="Server" />


                 
             
</asp:Content>
