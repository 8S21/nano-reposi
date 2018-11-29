<%@ Page Title="" Language="C#" MasterPageFile="~/principal.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phbody" Runat="Server">
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2 class="panel-title"><% if(Session["NoExamen"].ToString()== "1"){ %> Matematicas<%} if (Session["NoExamen"].ToString() == "2"){ %> Fisica <%} if (Session["NoExamen"].ToString() == "3") { %> Quimica <%}  %></h2>
            </div>
            <div class="panel-body">
                <div class="col-md-1">
                    <div class="btn btn-danger btn-lg">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
<asp:Timer ID="Reloj" runat="server"></asp:Timer>
                        <strong>
                            <asp:Label ID="lblreloj" runat="server" Text=""></asp:Label>
                        </strong>
                    </ContentTemplate>
                        </asp:UpdatePanel>
                </div>
                    </div>
                    
                <div class="col-md-11">
                    <p class="alert alert-info"><b>Elige la respuesta correcta</b></p>
                    <div class="table">
                        <asp:ListView ID="listaPreguntas" runat="server"></asp:ListView>
                        <asp:SqlDataSource ID="sdsPreguntas" runat="server"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

