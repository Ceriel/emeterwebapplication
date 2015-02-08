<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" Trace="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
   <script type="text/javascript" src="http://ajax.cdnjs.com/ajax/libs/json2/20110223/json2.js"></script>
    <script type="text/javascript">
        $("#btnCity").live("click", function () {
            var city = {};
            city.Name = "Mumbai";
            city.Population = 2000;
            $.ajax({
                type: 'POST',
                url: 'Default.aspx/GetCity',
                data: "{city:" + JSON.stringify(city) + "}",
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (r) {
                    alert(r.d.Name);
                    alert(r.d.Population);
                }
            });
        });
        $("#btnP1telegram").live("click", function () {
            var p1 = {};
            p1.ID = "Ceriel";
            p1.Telegram = "Boosveld"
            $.ajax({
                type: 'POST',
                url: 'Default.aspx/PostP1Telegram',
                data: "{p1:" + JSON.stringify(p1) + "}",
                //data: '{ID:"IDtelegram",Telegram:"telegram"}',
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (r) {
                    alert(r.d);
                },
                statusCode: {
                    500: function () {
                        alert("500 error");
                    }
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="button" id = "btnCity" value="Get City" />
        <input type="button" id = "btnP1telegram" value="Send P1telegram" />
        <asp:Label ID="lblresult" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>