<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PizzaShop.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">Travis&#39; Pizza Shop</h1>
            <h2>Choose a size</h2>
            <p class="auto-style2">
                <asp:RadioButton ID="RdoSmall" runat="server" GroupName="GroupPizzaSize" Text="Small $10" Value="10"/><br />
                <asp:RadioButton ID="RdoMedium" runat="server" GroupName="GroupPizzaSize" Text="Medium $13" Value="13"/><br />
                <asp:RadioButton ID="RdoLarge" runat="server" GroupName="GroupPizzaSize" Text="Large $16" Value="16"/>
            </p>
            <h2>Choose a crust</h2>
            <p>
                <asp:RadioButton ID="RdoThin" runat="server" GroupName="GroupPizzaCrust" Text="Thin" Value="0"/><br />
                <asp:RadioButton ID="RdoDeep" runat="server" GroupName="GroupPizzaCrust" Text="Deep Dish (+ $2)" Value="2"/><br />
            </p>
            <h2>Toppings</h2>
            <p>
                <asp:CheckBoxList ID="ToppingList" runat="server">
                    <asp:ListItem Value="1.50">Pepperoni (+ $1.50)</asp:ListItem>
                    <asp:ListItem Value="0.75">Onions (+ $0.75)</asp:ListItem>
                    <asp:ListItem Value="0.50">Green Peppers (+ $0.50)</asp:ListItem>
                    <asp:ListItem Value="1.00">Tomatos (+ $1.00)</asp:ListItem>
                    <asp:ListItem Value="0.75">Pineapple (+ 0.75)</asp:ListItem>
                    <asp:ListItem Value="0.50">Canadian Bacon (+ $0.50)</asp:ListItem>
                </asp:CheckBoxList>
            </p>
            <p><strong>Special Deal: Save $2.00 on Hawaiian Pizzas (Pineapple and Canadian Bacon only) and all Proceeds go to help the victims of the Maui Fires</strong></p>
            <p>
                <asp:Button ID="BtnPurchase" runat="server" Text="Purchase" OnClick="BtnPurchase_Click" />
            </p>
            <p>
                <asp:Label ID="LblTotal" runat="server"></asp:Label>
            </p>

        </div>
    </form>
</body>
</html>
