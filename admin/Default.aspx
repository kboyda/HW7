<%@ Page Title="" Language="VB" MasterPageFile="~/pokemon.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Pokemon Database
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:HyperLink ID="New_pokemon_link" runat="server" NavigateUrl="~/admin/NewPokemon.aspx">Add New Pokemon</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/ViewAll.aspx">Edit/Delete Pokemon</asp:HyperLink>
    <br />

    <br />

</asp:Content>

