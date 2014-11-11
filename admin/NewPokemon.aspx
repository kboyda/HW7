<%@ Page Title="" Language="VB" MasterPageFile="~/pokemon.master" AutoEventWireup="false" CodeFile="NewPokemon.aspx.vb" Inherits="NewPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Pokemon Database - New Pokemon
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_kboyda_HW7.1 %>" DeleteCommand="DELETE FROM [kboyda_HW7.1] WHERE [id] = @id" InsertCommand="INSERT INTO [kboyda_HW7.1] ([name], [type], [weakness], [evolution_level], [height], [weight]) VALUES (@name, @type, @weakness, @evolution_level, @height, @weight)" SelectCommand="SELECT * FROM [kboyda_HW7.1]" UpdateCommand="UPDATE [kboyda_HW7.1] SET [name] = @name, [type] = @type, [weakness] = @weakness, [evolution_level] = @evolution_level, [height] = @height, [weight] = @weight WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="weakness" Type="String" />
        <asp:Parameter Name="evolution_level" Type="String" />
        <asp:Parameter Name="height" Type="String" />
        <asp:Parameter Name="weight" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="weakness" Type="String" />
        <asp:Parameter Name="evolution_level" Type="String" />
        <asp:Parameter Name="height" Type="String" />
        <asp:Parameter Name="weight" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="254px" DefaultMode="Insert" HorizontalAlign="Center">
    <CommandRowStyle BackColor="Blue" forecolor="White" Font-Bold="True" horizontalalign="center" />
             <EditRowStyle BackColor="White" />
             <FieldHeaderStyle BackColor="Blue" foreColor="White" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="name" HeaderText="Name*" SortExpression="name" />
        <asp:BoundField DataField="type" HeaderText="Type*" SortExpression="type" />
        <asp:BoundField DataField="weakness" HeaderText="Weakness*" SortExpression="weakness" />
        <asp:BoundField DataField="evolution_level" HeaderText="Evolution Level" SortExpression="evolution_level" />
        <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
        <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
<FooterStyle BackColor="Blue" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="Yellow" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="Blue" ForeColor="Red" HorizontalAlign="Center" />
             <RowStyle BackColor="White" />
        </asp:DetailsView>
</asp:Content>

