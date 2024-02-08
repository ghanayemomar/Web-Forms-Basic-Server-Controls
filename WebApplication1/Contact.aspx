<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <div>
            <label>Name</label>
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="*" />
        </div>

        <div>
            <label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Required." />
            <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="Valid Email Is Required" ValidationExpression="^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$" />
        </div>

        <div>
            <label>Age</label>
            <asp:TextBox ID="txtAge" runat="server" />
        </div>

        <div>
            <label>Your Favorite Color:</label>
            <asp:DropDownList ID="ddlColor" runat="server">
                <asp:ListItem Text="Please Choose a Color" Value="" />
                <asp:ListItem Text="Blue" Value="Blue" />
                <asp:ListItem Text="Red" Value="Red" />
                <asp:ListItem Text="Green" Value="Green" />
                <asp:ListItem Text="Yellow" Value="Yellow" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="rfvColor" ControlToValidate="ddlColor" ErrorMessage="Color Required." />
        </div>

        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Info" OnClick="btnSubmit_Click" />
        </div>

        <div class="message">
            <asp:Literal ID="ltMessage" runat="server" />
        </div>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>
</asp:Content>
