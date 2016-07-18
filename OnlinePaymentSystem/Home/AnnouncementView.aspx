<%@ Page Title="" Language="C#" MasterPageFile="~/Master/HomeMaster.Master" AutoEventWireup="true" CodeBehind="AnnouncementView.aspx.cs" Inherits="OnlinePayment.Home.AnnouncementView" %>
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
             <div class="homeinfo">
                <div class="rightnow">

                    <h3 class="reallynow">
                        公告
                        <br />
                    </h3>
				    <div class="cleaner_h20"></div>
                       <h1><%=title %></h1>
                       <br />
                       
                       
                       <div class="annBody">
                            <%=body %>
                       </div>
                       

			    </div><!--end of needed done-->
             </div>

</asp:Content>
