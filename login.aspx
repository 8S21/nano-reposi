<%@ Page Title="" Language="C#" MasterPageFile="~/secundario.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <asp:login runat="server" FailureText="credenciales incorrectas" OnAuthenticate="Unnamed1_Authenticate" OnLoggedIn="Unnamed1_LoggedIn">
        <LayoutTemplate>
            <div class="form-group">
<asp:Label ID="UserNameLabel" runat="server" Text="Usuario" CssClass="control-label"></asp:Label>
            <asp:TextBox ID="UserName" runat="server" placeholder="Usuario" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
<asp:Label ID="PasswordLabel" runat="server" Text="Contraseña" CssClass="control-label"></asp:Label>
<asp:TextBox ID="Password" runat="server" placeholder="Contraseña" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
<asp:Button ID="LogginButton" runat="server" Text="Iniciar" CssClass="btn btn-primary" Commandname="Login" />
                </asp:Button>
            </div>
        </LayoutTemplate>
    </asp:login>
</asp:Content>

