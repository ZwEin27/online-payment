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
        <td height="31"><div class="titlebt">��ӭ����</div></td>
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
        <td colspan="2" valign="top"><span class="left_bt">����ʦ����ѧ-��ѧ�����Ͻɷ�ϵͳ-��̨</span><br>
              <br>
            <span class="left_txt">&nbsp;<img src="../Content/images/Admin/ts.gif" width="16" height="16"> ��ʾ��<br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ӭʹ�ô�ѧ�����Ͻɷ�ϵͳ����������κ�����������½��</span><span class="left_ts">���߿ͷ�</span><span class="left_txt">������ѯ��<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
</span></td>
        <td width="7%">&nbsp;</td>
        <td width="40%" valign="top"><table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
          <tr>
            <td height="27" background="../Content/images/Admin/news-title-bg.gif"><img src="../Content/images/Admin/news-title-bg.gif" width="2" height="27"></td>
            <td width="93%" background="../Content/images/Admin/news-title-bg.gif" class="left_bt2">���¶�̬</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><br />��ʱû�����¶�̬</td>
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
        <td colspan="2" valign="top"><!--JavaScript����-->
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
              <!--HTML����-->
              <TABLE width=72% border=0 cellPadding=0 cellSpacing=0 id=secTable>
                <TBODY>
                  <TR align=middle height=20>
                    <TD align="center" class=sec2 onclick=secBoard(0)>��������Ϣ</TD>
                    <TD align="center" class=sec1 onclick=secBoard(1)>ͳ����Ϣ</TD>
                    <TD align="center" class=sec1 onclick=secBoard(2)>ϵͳ����</TD>
                    <TD align="center" class=sec1 onclick=secBoard(3)>ʹ��˵��</TD>
                  </TR>
                </TBODY>
              </TABLE>
          <TABLE class=main_tab id=mainTable cellSpacing=0
cellPadding=0 width=100% border=0>
                <!--����TBODY���-->
                <TBODY style="DISPLAY: block">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="133" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="28" background="../Content/images/Admin/news-title-bg.gif"></TD>
                            <TD height="25" colspan="2" background="../Content/images/Admin/news-title-bg.gif" class="left_txt">�װ��Ĺ���Ա�� <font color="#FFFFFF" class="left_ts"><b></b></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ����������Ϣ�� <b style="color:Red;"><%=unsolvedNum%></b>&nbsp;&nbsp;��</span>
                               
                                <span class="left_ts"> </span></TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ������������ </span>
                               
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ�鿴ϵͳ��Ϣ�� </span>
                               
                                <span class="left_ts"> </span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ��֤�����̳ǣ� </span>
                               
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ��֤������Ƭ�� </span>
                                <span class="left_ts"> </span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ��֤�г����ˣ� </span>
                               
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ��֤�г���Ѷ�� </span>
                               
                                <span class="left_ts"> </span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">����δ��֤�̼���Ʒ�� </span>
                                <span class="left_ts"> </span></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--����cells����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="133" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="4%" height="28" background="../Content/images/Admin/news-title-bg.gif"></TD>
                            <TD colspan="2" background="../Content/images/Admin/news-title-bg.gif" class="left_txt">���л�Ա����&nbsp;&nbsp; ���У�                                ��&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��</TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">��վ���з�����Ϣ�� </span><span class="left_txt">��</span></TD>
                            <TD width="54%" bgcolor="#FAFBFC"><span class="left_txt">��վ���й�������� </span><span class="left_txt">��</span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">��վ�����̼�չʾ�� </span><span class="left_txt">��</span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">��վ���������̳ǣ� </span><span class="left_txt">��</span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">��վ����������Ƭ�� </span><span class="left_txt">��</span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">��վ�����г����ˣ� </span><span class="left_txt">��</span></TD>
                          </TR>
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">��վ�����г���Ѷ�� </span><span class="left_txt">��</span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">��վ�����̼���Ʒ�� </span><span class="left_txt">��</span></TD>
                          </TR>
                          <TR>
                            <TD height="5" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
                <!--����tBodies����-->
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
                            <TD height="25" colspan="2" background="../Content/images/Admin/news-title-bg.gif" class="left_txt"><span class="TableRow2">������IP:XXX.XXX.XXX.XXX</span>ϵͳ�汾�����԰�</TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt">���������ͣ�IIS7</span></TD>
                            <TD width="42%" height="25" bgcolor="#FAFBFC"><span class="left_txt"></span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" colspan="2" bgcolor="#FAFBFC"><span class="left_txt">վ������·����XXX</span></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">PDF�������أ�</span><span class="TableRow2"><font color="#FF0066"><b><img src="../Content/images/Admin/X.gif" width="12" height="13"></b></font><img src="../Content/images/Admin/g.gif" width="12" height="12"></span></TD>
                            <TD height="25" bgcolor="#FAFBFC"><span class="left_txt">���ݿ�ʹ�ã�</span><span class="left_ts"><img src="../Content/images/Admin/X.gif" width="12" height="13"><b style="color:blue">
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
                <!--����display����-->
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
                            <TD width="91%" background="../Content/images/Admin/news-title-bg.gif" class="left_ts">ʹ��˵����</TD>
                            <TD width="5%" background="../Content/images/Admin/news-title-bg.gif" class="left_txt">&nbsp;</TD>
                          </TR>
                          
                          <TR>
                            <TD bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD bgcolor="#FAFBFC" class="left_txt"><span class="left_ts"></span>��Щ�����в����ƣ�����������</TD>
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
                ϵͳ����</td>
          </tr>
          <tr>
            <td height="102" valign="top">&nbsp;</td>
            <td height="102" valign="top"><label></label>
              <label>

             <br />
                   ����ӭʹ�ñ�ϵͳ <br />
                   1.���ܹ���ɽɷ�����ķ�����ͳ�� <br />
                   2.���ܹ���Ӻ��޸�ϵͳ��ɫ������Ȩ�� <br />
                   3.���ܹ������Լ�����Ҫ�鿴�����ͼ�� <br />
             

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
        <td width="51%" class="left_txt"><img src="../Content/images/Admin/icon-mail2.gif" width="16" height="11"> ���䣺41520398@qq.com<br>
              <img src="../Content/images/Admin/icon-phone.gif" width="17" height="14"> �ֻ���15005061619
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
