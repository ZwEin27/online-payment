<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Right.aspx.cs" Inherits="OnlinePayment.Admin.Right" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/Css/Admin/skin.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <style type="text/css">
        body {
	        margin-left: 0px;
	        margin-top: 0px;
	        margin-right: 0px;
	        margin-bottom: 0px;
	        background-color: #EEF2FB;
        }
        .style1
        {
            height: 9px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="../Content/images/Admin/mail_leftbg.gif"><img src="../Content/images/Admin/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="../Content/images/Admin/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">欢迎界面</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="../Content/images/Admin/mail_rightbg.gif"><img src="../Content/images/Admin/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="../Content/images/Admin/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="2" valign="top">&nbsp;</td>
        <td>&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><span class="left_bt">福建师范大学-大学生网上缴费系统-后台</span><br>
              <br>
            <span class="left_txt">&nbsp;<img src="../Content/images/Admin/ts.gif" width="16" height="16"> 提示：<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎使用大学生网上缴费系统！如果您有任何疑问请点左下解的</span><span class="left_ts">在线客服</span><span class="left_txt">进行咨询！<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td height="27" background="../Content/images/Admin/news-title-bg.gif"><img src="../Content/images/Admin/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="../Content/images/Admin/news-title-bg.gif" class="left_bt2">最新动态</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><br />暂时没有最新动态</td>
          </tr>
          <tr>
            <td colspan="2" class="style1"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><!--JavaScript部分-->
          <SCRIPT language=javascript>
              function secBoard(n) {
                  for (i = 0; i < secTable.cells.length; i++)
                      secTable.cells[i].className = "sec1";
                  secTable.cells[n].className = "sec2";
                  for (i = 0; i < mainTable.tBodies.length; i++)
                      mainTable.tBodies[i].style.display = "none";
                  mainTable.tBodies[n].style.display = "block";
              }
          </SCRIPT>
              <!--HTML部分-->
              <TABLE width=72% border=0 cellPadding=0 cellSpacing=0 id=secTable>
                <TBODY>
                  <TR align=middle height=20>
                    <TD align="center" class=sec2 onclick=secBoard(0)>待处理信息</TD>
                    <TD align="center" class=sec1 onclick=secBoard(1)>统计信息</TD>
                    <TD align="center" class=sec1 onclick=secBoard(2)>系统参数</TD>
                    <TD align="center" class=sec1 onclick=secBoard(3)>使用说明</TD>
                  </TR>
                </TBODY>
              </TABLE>
          <TABLE class=main_tab id=mainTable cellSpacing=0
cellPadding=0 width=100% border=0>
                <!--关于TBODY标记-->
                <TBODY style="DISPLAY: block">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="133" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="28" background="../Content/images/Admin/news-title-bg.gif"></TD>
                            <TD height="25" colspan="2" background="../Content/images/Admin/news-title-bg.gif" class="left_txt">亲爱的管理员： <font color="#FFFFFF" class="left_ts"><b></b></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未处理留言信息： <b style="color:Red;"><%=unsolvedNum%></b>&nbsp;&nbsp;条</span>
                               
                                <span class="left_ts"> </span></TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未处理广告张贴： </span>
                               
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未查看系统消息： </span>
                               
                                <span class="left_ts"> </span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未验证网上商城： </span>
                               
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未验证网上名片： </span>
                                <span class="left_ts"> </span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未验证市场联盟： </span>
                               
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未验证市场资讯： </span>
                               
                                <span class="left_ts"> </span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">您有未验证商家商品： </span>
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--关于cells集合-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="133" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="28" background="../Content/images/Admin/news-title-bg.gif"></TD>
                            <TD colspan="2" background="../Content/images/Admin/news-title-bg.gif" class="left_txt">现有会员：名&nbsp;&nbsp; 其中：                                名&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;名</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">本站现有分类信息： </span><span class="left_txt">条</span></TD>
                            <TD width="54%" bgcolor="#FAFBFC"><span class="left_txt">本站现有广告张贴： </span><span class="left_txt">条</span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">本站现有商家展示： </span><span class="left_txt">个</span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">本站现有网上商城： </span><span class="left_txt">个</span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">本站现有网上名片： </span><span class="left_txt">个</span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">本站现有市场联盟： </span><span class="left_txt">个</span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">本站现有市场资讯： </span><span class="left_txt">条</span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">本站现有商家商品： </span><span class="left_txt">个</span></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--关于tBodies集合-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="25" background="../Content/images/Admin/news-title-bg.gif"></TD>
                            <TD height="25" colspan="2" background="../Content/images/Admin/news-title-bg.gif" class="left_txt"><span class="TableRow2">服务器IP:XXX.XXX.XXX.XXX</span>系统版本：测试版</TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">服务器类型：IIS7</span></TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt"></span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" colspan="2" bgcolor="#FAFBFC"><span class="left_txt">站点物理路径：XXX</span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">PDF报表下载：</span><span class="TableRow2"><font color="#FF0066"><b><img src="../Content/images/Admin/X.gif" width="12" height="13"></b></font><img src="../Content/images/Admin/g.gif" width="12" height="12"></span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">数据库使用：</span><span class="left_ts"><img src="../Content/images/Admin/X.gif" width="12" height="13"><b style="color:blue">
                              SQL SERVER 2008
                              
                            </b></span></TD>
                          </TR>
                         
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--关于display属性-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" background="../Content/images/Admin/news-title-bg.gif"></TD>
                            <TD width="91%" background="../Content/images/Admin/news-title-bg.gif" class="left_ts">使用说明：</TD>
                            <TD width="5%" background="../Content/images/Admin/news-title-bg.gif" class="left_txt">&nbsp;</TD>
                          </TR>
                          
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts"></span>有些功能尚不完善，持续增加中</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt">&nbsp;</TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
            </TABLE></td>
        <td>&nbsp;</td>
        <td valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td width="7%" height="27" background="../Content/images/Admin/news-title-bg.gif"><img src="../Content/images/Admin/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="../Content/images/Admin/news-title-bg.gif" class="left_bt2">
                系统帮助</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><label></label>
              <label>

             <br />
                   ※欢迎使用本系统 <br />
                   1.您能够完成缴费事务的发布和统计 <br />
                   2.您能够添加和修改系统角色并分配权限 <br />
                   3.您能够按照自己的需要查看报表和图表 <br />
             

              </label></td>
          </tr>
          <tr>
            <td height="5" colspan="2">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="40" colspan="4"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
          <tr>
            <td></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="2%">&nbsp;</td>
        <td width="51%" class="left_txt"><img src="../Content/images/Admin/icon-mail2.gif" width="16" height="11"> 邮箱：41520398@qq.com<br>
              <img src="../Content/images/Admin/icon-phone.gif" width="17" height="14"> 手机：15005061619
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td background="../Content/images/Admin/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="../Content/images/Admin/mail_leftbg.gif"><img src="../Content/images/Admin/buttom_left2.gif" width="17" height="17" /></td>
    <td background="../Content/images/Admin/buttom_bgs.gif"><img src="../Content/images/Admin/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="../Content/images/Admin/mail_rightbg.gif"><img src="../Content/images/Admin/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
    </form>
</body>
</html>
