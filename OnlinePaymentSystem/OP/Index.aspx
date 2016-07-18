<%@ Page Language="C#" MasterPageFile="~/Master/IndexMaster.master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlinePayment.OP.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="../Content/Scripts/OP/NoticeScroll.js"></script>
     <link rel="stylesheet" type="text/css" href="../Content/Css/op/NoticeField.css" />

  <script type="text/javascript" src="../Content/Scripts/jquery-1.6.2.min.js"></script>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

               <div class="rightnow">
                    <h3 class="reallynow">
                        <span>待处理</span>
                        <br />
                    </h3>
				    <p class="youhave">您有 <a href="#">2 </a>&nbsp;条学费缴费项目尚未处理 
                    </p>
			  </div><!--end of needed done-->
              
              
              
              <div class="rightnow">
                    <h3 class="reallynow">
                        <span>公告</span>
                        <br />
                    </h3>
		
             <p class="youhave">       
                 
            <div id="breakNews">

            <% if (annList.Count!=0)
            {%>
                   
                <ol id="breakNewsList" class="list6">
                 <% foreach (Entity.Announcement ann in annList) {
                        Response.Write("<li><a target=_blank href='../home/AnnouncementView.aspx?id=" + ann.Id + "'>" + ann.Title + "</a></li>");
                 }%>
                </ol>
                   <!-- <li><a target=_blank href="#">网上缴费系统使用手册</a></li>
                     <li><a target=_blank href="#">致同学们的一封信</a></li>
                    <li><a target=_blank href="#">缴费系统动画演示</a></li>
                    <li><a target=_blank href="#">工行网银注册动画演示</a></li>
                    <li><a target=_blank href="#">系统登录说明</a></li>
                    <li><a target=_blank href="#">工商银行牡丹卡网上缴费须知</a></li>
                    <li><a target=_blank href="#">  </a></li>
                    <li><a target=_blank href="#">网上缴费系统开通以来，已有很大一部分同学通过本系统缴清了学费，我们代表学校对这部分同学给予我们的支持表示感谢！我们将逐步取消手工收费方式，同时为了避免开学时拥挤的网络状况带来的不必要的麻烦，请各位同学尽快通过本系统进行缴费，谢谢大家！</a></li>
                    -->
                    <%  }else{%>   
               
                    ※对不起，当前并没有任何公告
               
               <%  }%> 
            </div>
            
            <div class="cleaner_h10"></div>
      </p>  

<script language="javascript" type="text/javascript">
    var scroll2 = new ScrollText("breakNewsList", null,null, true, 50, true);
    scroll2.LineHeight = 63;
</script>


			  </div><!--end of needed announcement-->






</asp:Content>
