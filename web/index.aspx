<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pop Punk</title>
    <style type="text/css">
        .auto-style4 {
            width: 272px;
        }
        table, th, td {
            border: 3px groove grey;
            text-align: center;
        }
        .clock {
            border: 2px ridge #9999ff;
            text-align: center;
        }
        .button {
            Width: 100%;
            height: 36px;
            Font-Size: Large;
            background-color :Transparent;
        }
        .ad {
            width: 100%;
            height: 50px;
        }
    </style>
</head>

<body style="background-image:url(pic/pp.jpg); background-repeat:no-repeat; background-attachment:fixed; background-position:center; background-size: cover">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
            <p style="font-size:50px; color:purple; text-align: center; width: 100%;"><b>Pop Punk音樂陣地</b></p>
        </div>
        <table style="width: 100%; height: 40px;">
	        <tr>
	  	        <th class="auto-style4">
                    <asp:Button class="button" ID="btn1" runat="server" Text="History" Font-Bold="True" Font-Names="Calibri" ForeColor="#9999FF" OnClick="btn1_Click"/>
                </th>
	  	        <th class="auto-style4">
                    <asp:Button class="button" ID="btn2" runat="server" Text="Login" Font-Bold="True" Font-Names="Calibri" ForeColor="#9999FF" OnClick="btn2_Click"/>
                </th>
	  	        <th class="auto-style4">
                    <asp:Button class="button" ID="btn3" runat="server" Text="Search" Font-Bold="True" Font-Names="Calibri" ForeColor="#9999FF"/>
                </th>
                <th class="auto-style4">
                    <asp:Button class="button" ID="btn4" runat="server" Text="Listen" Font-Bold="True" Font-Names="Calibri" ForeColor="#9999FF"/>
                </th>
	        </tr>
        </table>
        <asp:Label ID="Labelm" runat="server" Text="Tonight Alive - Sure As Hell" style="width: 24%; height:30px; position: fixed; bottom:30px; right:0;"></asp:Label>
        <audio controls style="width: 24%; height:30px; position: fixed; bottom:0; right:5px;">
            <source src="sah.mp3" type="audio/mpeg">
            Your browser does not support the audio element.
        </audio>
        <section style="width:100%; height:600px; border:groove 2px;margin-top:5px;">
            <iframe id="ws" style="height: 590px; width: 75%; float: left; margin-top:5px; margin-left:0.3%; margin-right:0.3%; Background-color:transparent" runat="server">
                
            </iframe>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <table class="clock" style="width: 24%; height: 20px; margin-top:5px; margin-right:0.3%;">
                        <tr>
                            <th class="clock"><asp:Label ID="Label1" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                            <th class="clock"><asp:Label ID="Label2" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                            <th class="clock"><asp:Label ID="Label3" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                            <th class="clock"><asp:Label ID="Label4" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                            <th class="clock"><asp:Label ID="Label5" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                            <th class="clock"><asp:Label ID="Label6" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                            <th class="clock"><asp:Label ID="Label7" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                            <th class="clock"><asp:Label ID="Label8" runat="server" Text="" ForeColor="#00ff00" BackColor="Black" Width="100%"></asp:Label></th>
                        </tr>
                    </table>
                    <asp:Label ID="lblvisit" runat="server" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </section>

    </form>
    </body>
</html>
