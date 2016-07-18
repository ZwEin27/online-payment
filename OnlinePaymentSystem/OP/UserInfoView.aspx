<%@ Page Title="" Language="C#" MasterPageFile="~/Master/UserCenterMaster.master" AutoEventWireup="true" CodeBehind="UserInfoView.aspx.cs" Inherits="OnlinePayment.OP.UserInfoView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <div class="box rightnow">
              <h3 class="reallynow">个人信息</h3>
                    <fieldset id="fs_baseInfo" runat="server">
                        <legend>基本信息</legend>
                        <div class="cleaner_h10"></div>
                        <label for="name">姓名 : </label> 
                        <input name="name" id="txtname" type="text" tabindex="1" runat="server" />
                        <br />
                        <label for="code">学号 : </label>
                        <input name="code" id="txtStuId" type="text" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="class">班级 : </label>
                        <input name="class" id="txtclass" type="text" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="academy">学院 : </label>
                         <input name="academy" id="txtacademy" type="password" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="academy">主修专业 : </label>
                         <input name="academy" id="Password1" type="password" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="academy">辅修专业 : </label>
                         <input name="academy" id="Password2" type="password" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="academy">年级 : </label>
                         <input name="academy" id="Password3" type="password" 
                        tabindex="2" runat="server"  />
                        <br />
                        <label for="academy">班级 : </label>
                         <input name="academy" id="Password4" type="password" 
                        tabindex="2" runat="server"  />
                        <br />





                    </fieldset>


                    <div align="center">
                       <input id="button1" type="submit" value="更改" /> 
                    </div>
         </div>

</asp:Content>
