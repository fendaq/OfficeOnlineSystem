﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PassFile.aspx.cs" Inherits="PassFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>通过的文件</title>
     <style type="text/css">
body
{
    
    background-repeat: repeat;
    background-attachment:fixed;
    background-position  :left top;
}
#menuShow{
border: 1px solid #999999;
background-color: #cccccc;
padding: 0px;
font-size: 10px;
font-family: tahoma;
position: absolute;
width: 150px;
height: auto;
}

#menuSelect{
border: 1px solid #999999;
background-color: #cccccc;
padding: 0px;
font-size: 10px;
font-family: tahoma;
position: absolute;
width: 48px;
height: 48px;
}

a {  font-family: "tahoma"; font-size: 16px; line-height: 16px; color: #333333; text-decoration: none}
a:hover {  font-family: "tahoma"; font-size: 16px; line-height: 16px; color: #FFFFFF; text-decoration: none}
</style>
</head>
<body bgcolor="#FFFFFF" text="#000000">
<div id="menuSelect" style=""> <a href="#" onClick="moveOnMenu();moveOffSelector()"> 
  <img src="resources/home.png"  width="48" height="48" border="0"/></a></div>
<div id="menuShow" style="" align="center"> <a href="#" onClick="moveOffMenu();moveOnSelector()"> 
 <img src="resources/portfolio.png"  width="48" height="48" border="0"/></a> <br/>

<a href="Default.aspx">返回登录页</a><br/>
<a href="Draft.aspx">返回起草页</a><br/>
<a href="FailFile.aspx">查看不通过文件</a><br/>

<script language="JavaScript">
    // Set Show to "yes" to show the menu on start-up.
    // Set Show to "no" to show the selector on start-up.

    Show = "no";

    // Set OffX in pixels to a negative number 
    // somewhat larger than the width of the menu.

    var OffX = -200;

    // Set the PosX and PosY variables
    // to the location on the screen where the
    // menu should position (in pixels) when stopped.

    var PosX = 10;
    var PosY = 10;

    // Usually, use the settings shown; but you can
    // change the speed and the increment of motion
    // across the screen, below.

    var speed = 5;
    var increment = 5;
    var incrementNS4 = 5; // for slower NS4 browsers

    // do not edit below this line
    // ===========================

    var is_NS = navigator.appName == "Netscape";
    var is_Ver = parseInt(navigator.appVersion);
    var is_NS4 = is_NS && is_Ver >= 4 && is_Ver < 5;
    var is_NS5up = is_NS && is_Ver >= 5;

    var MenuX = OffX;
    var SelX = PosX;
    var sPosX = PosX;
    var sOffX = OffX;

    if (Show == "yes") {
        sPosX = OffX;
        sOffX = PosX;
        MenuX = sOffX;
        SelX = sPosX;
    }

    if (is_NS4) {
        increment = incrementNS4;
        Lq = "document.layers.";
        Sq = "";
        eval(Lq + 'menuSelect' + Sq + '.left=sPosX');
        eval(Lq + 'menuShow' + Sq + '.left=sOffX');
        eval(Lq + 'menuSelect' + Sq + '.top=PosY');
        eval(Lq + 'menuShow' + Sq + '.top=PosY');
    } else {
        Lq = "document.all.";
        Sq = ".style";
        document.getElementById('menuSelect').style.left = sPosX + "px";
        document.getElementById('menuShow').style.left = sOffX + "px";
        document.getElementById('menuSelect').style.top = PosY + "px";
        document.getElementById('menuShow').style.top = PosY + "px";
    }

    function moveOnMenu() {
        if (MenuX < PosX) {
            MenuX = MenuX + increment;
            if (is_NS5up) {
                document.getElementById('menuShow').style.left = MenuX + "px";
            } else {
                eval(Lq + 'menuShow' + Sq + '.left=MenuX');
            }
            setTimeout('moveOnMenu()', speed);
        }
    }

    function moveOffMenu() {
        if (MenuX > OffX) {
            MenuX = MenuX - increment;
            if (is_NS5up) {
                document.getElementById('menuShow').style.left = MenuX + "px";
            } else {
                eval(Lq + 'menuShow' + Sq + '.left=MenuX');
            }
            setTimeout('moveOffMenu()', speed);
        }
    }

    function moveOffSelector() {
        if (SelX > OffX) {
            SelX = SelX - increment;
            if (is_NS5up) {
                document.getElementById('menuSelect').style.left = SelX + "px";
            } else {
                eval(Lq + 'menuSelect' + Sq + '.left=SelX');
            }
            setTimeout('moveOffSelector()', speed);
        }
    }

    function moveOnSelector() {
        if (SelX < PosX) {
            SelX = SelX + increment;
            if (is_NS5up) {
                document.getElementById('menuSelect').style.left = SelX + "px";
            } else {
                eval(Lq + 'menuSelect' + Sq + '.left=SelX');
            }
            setTimeout('moveOnSelector()', speed);
        }
    }
</script>
</div>

    <form id="form1" runat="server">
        <table style="margin-left:200px; margin-right:auto;">
      <tr>
      <td align="center" width="120" height="5"><div align="center"><strong>当前用户信息</strong></div></td>
         <td width="200" height="5"><strong>正在查看通过文件...</strong><div align="center"></div></td>
         </tr>
      <tr>
      <td style="left">
            <table>
                <tr>
                    <td valign="middle">
                     <asp:Label ID="Label1" runat="server" Text="Label2"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td valign="middle">
                      <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label> 
                    </td>                                     
                </tr>
                <tr>
                    <td valign="middle">
                      <asp:Label ID="Label4" runat="server" Text="Label4"></asp:Label> 
                    </td>                                     
                </tr>
                <tr>
                    <td valign="middle">
                      <asp:Label ID="Label5" runat="server" Text="Label5"></asp:Label> 
                    </td>                                     
                </tr>
            </table>                           
            </td>     
        <td style="right">
           <asp:GridView 
              ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" 
              DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" 
              Height="48px" Width="419px" DataKeyNames="id" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" onrowdeleting="GridView1_RowDeleting"
              >
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="id" HeaderText="ID号" SortExpression="id" />
              <asp:BoundField DataField="title" HeaderText="标题" SortExpression="title" />
              <asp:BoundField DataField="username" HeaderText="作者" 
                  SortExpression="username" />
              <asp:CommandField SelectText="查看" ShowSelectButton="True" />
              <asp:CommandField ShowDeleteButton="True" />
          </Columns>
          <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
          <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
          
          </asp:GridView>
          </td>
       </tr>
       <tr>
        <td>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetAllTFileA" TypeName="BLL.FileBL" 
                DeleteMethod="DeleteTFileById">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
            </asp:ObjectDataSource>
            
        </td>
        <td style="right">
            <label ID="Label2" runat="server" ></label> 
        </td>
       </tr>
       </table>
    </form>
</body>
</html>
