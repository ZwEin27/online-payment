<%@ Page Title="" Language="C#" MasterPageFile="~/Master/PaymentPlatformMaster.master" AutoEventWireup="true" CodeBehind="PayUtilityView.aspx.cs" Inherits="OnlinePayment.OP.PayUtilityView" %>
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
    .inputdiy input
    {
        width:19px;
        padding:0px;
        margin:0px;
        border:0px solid #e8e7e1;
        background:inherit;
    }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

            <div class="box rightnow">
                	<h3 class="reallynow">缴水电费</h3>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <p class="youhave">
                            您好,<asp:Label ID="lblStuID" runat="server"></asp:Label><br /><br />
                            您的宿舍号为：<asp:Label ID="lblDormitory" runat="server"></asp:Label></p>
                    
                          <fieldset>
                            <div class="cleaner_h10"></div>
                                <legend>水费</legend>
                              <table width="100%">
                            <thead>
							    <tr style="height:21px;width=100%">
                            	    <th width="15%"><a href="#">时间</a></th>
                            	    <th width="10%"><a href="#">上月水表度数</a></th>
                                    <th width="10%"><a href="#">本月水表度数</a></th>
                                    <th width="10%"><a href="#">本月用水量</a></th>
                                    <th width="10%"><a href="#">宿舍用水定额</a></th>
                                    <th width="10%"><a href="#">本月超水量</a></th>
                                    <th width="10%"><a href="#">水价</a></th>
                                    <th width="10%"><a href="#">本月应交水费</a></th>
                                </tr>
                            </thead>
                            <tbody class="a-center">
                                <tr>
                                    <td > <asp:Label runat="server" ID="lblTime"></asp:Label></td>
                                    <td><asp:label runat="server" ID="lblLastWaterMeterNum"></asp:label></td>
                                    <td> <asp:label runat="server" ID="lblNowWaterMeterNum" ></asp:label></td>
                                    <td><asp:label runat="server" ID="lblWaterUsage"></asp:label></td>
                                    <td> <asp:label runat="server" ID="lblWaterUsageLimit"></asp:label></td>
                                    <td><asp:label runat="server" ID="lblNumBeyondWaterUsage"></asp:label></td>
                                    <td><asp:label runat="server" ID="lblWaterPerPrice"></asp:label></td>
                                    <td> <asp:label runat="server" ID="lblWaterPrice" ></asp:label></td>
                                 </tr>
                              </tbody>
                            </table>
                         </fieldset>

                         <div class="cleaner_h20"></div>

                         <fieldset>
                            <div class="cleaner_h10"></div>
                                <legend>电费</legend>
                              <table width="100%">
                            <thead>
							    <tr style="height:21px;width=100%">
                            	    <th width="15%"><a href="#">时间</a></th>
                            	    <th width="10%"><a href="#">上月电表度数</a></th>
                                    <th width="10%"><a href="#">本月电表度数</a></th>
                                    <th width="10%"><a href="#">本月用电量</a></th>
                                    <th width="10%"><a href="#">宿舍用电定额</a></th>
                                    <th width="10%"><a href="#">本月超电量</a></th>
                                    <th width="10%"><a href="#">电价</a></th>
                                    <th width="10%"><a href="#">本月应交电费</a></th>
                                </tr>
                            </thead>
                            <tbody class="a-center">
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="lblTime1"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblLastElecMeterNum"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblNowElecMeterNum"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblElecUsage"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblElecUsageLimit"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblNumBeyondElecUsage"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblElecPerPrice"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" ID="lblElecPrice"></asp:Label>
                                    </td>
                                </tr>
                              </tbody>
                            </table>
                         </fieldset>
                         <div class="cleaner_h20"></div>

                         <p class="youhave">
                            总计： <asp:label id="lblSum" Text='0' runat="server" />元
                         </p>
                         <input id="hid_id" type="hidden" value="" runat="Server" />
                         <div class="cleaner_h20"></div>

                         <p class="youhave a-center">
                            <asp:Button id="btn_Pay" Text="付款" runat="server" onclick="btn_Pay_Click" />
                         </p>


                
                 </ContentTemplate>
             </asp:UpdatePanel>
             </div>

</asp:Content>
