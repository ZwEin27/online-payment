<%@ Page Title="" Language="C#" MasterPageFile="~/Master/HomeMaster.Master" AutoEventWireup="true" CodeBehind="QueryStudentId.aspx.cs" Inherits="OnlinePayment.Home.QueryStudentId" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style type="text/css">
    h1{
        font-family: Arial, sans-serif;
        font-size: 24px;
        color: #369;
        padding-bottom: 4px;
        text-align:center;
    }
    
    .annBody
    {
        font-size:20px;
	    padding:0px 40px 40px 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="cleaner_h20"></div>
             <div class="homeinfo a-center">
                <div  style="text-align:center;"  class="rightnow a-center">

                    <h3 class="reallynow">
                        查询学生号
                        <br />
                    </h3>

				    <div class="cleaner_h20"></div>
                       <table cellpadding="5px" style="display:inline-table;" cellspacing="10px" class="a-center">
                               <tr>
                                 <td>请输入身份证号码</td>
                                 <td> <asp:TextBox ID="txtIdCardNum" runat="server"></asp:TextBox>
                                 </td>
                               </tr>
                               <tr>
                                  <td></td>
                                  <td align="center">
                                  
                                  <asp:Button ID="btnQuery" text="查询" runat="server" onclick="btnQuery_Click" />
                                  
                                  &nbsp; &nbsp; &nbsp; &nbsp;

                                  <asp:Button id="btn" Text="返回" PostBackUrl="~/Default.aspx" runat="server" />
                                  </td>
                               
                               </tr>
                        </table>
     <div id="idCardDiv" visible="false">
     <asp:Label Text="你的学号是" ID="lbl" runat="server" Visible="false"></asp:Label>
     <asp:Label ID="lblStuId" runat="server"></asp:Label>
     </div>

			    </div><!--end of needed done-->
             </div>
</asp:Content>
