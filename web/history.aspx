<%@ Page Language="C#" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center; color: red;">發展歷史</h1>
        <p>龐克(Punk)在60-70年代大受歡迎，而因為了商業利益，龐克由地下走上至市場，到了80年代初期，其音樂模式開始變化。</p> 
        <p>以往龐克音樂的歌詞演繹內容由無意識，到諷刺社會，轉變成關於愛情、朋友、校園生活。有樂迷認為純龐克音樂的歌詞具有深厚壓世反社會的意識。</p>
        <p>而80年代以後，部分自認龐克樂團的樂團則去除了此種特色，於是這種習慣使到龐克音樂分支成為「流行龐克」(Pop Punk)。</p>
        <p>帶動流行龐克音樂的發展，主要有年輕歲月(Green Day)、簡單計劃(Simple Plan)、眨眼182(Blink 182)、魔數41(Sum 41)、帕拉莫爾(Paramore)等。</p>
        <asp:AdRotator ID="admusic1" AdvertisementFile="~/ad.xml" Width="30%" Height="200px" style="margin-left: 4%" Runat="server" />
        <asp:AdRotator ID="admusic2" AdvertisementFile="~/ad2.xml" Width="30%" Height="200px" Runat="server" />
        <asp:AdRotator ID="admusic3" AdvertisementFile="~/ad3.xml" Width="30%" Height="200px" Runat="server" />
    </form>
</body>
</html>
