<%@ Page Title="" Language="VB" MasterPageFile="~/pokemon.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Search Pokemon Database
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="ToolDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_kboyda_HW7.1 %>" DeleteCommand="DELETE FROM [kboyda_HW7.1] WHERE [id] = @id" InsertCommand="INSERT INTO [kboyda_HW7.1] ([name], [type], [weakness], [evolution_level], [height], [weight]) VALUES (@name, @type, @weakness, @evolution_level, @height, @weight)" SelectCommand="SELECT * FROM [kboyda_HW7.1]" UpdateCommand="UPDATE [kboyda_HW7.1] SET [name] = @name, [type] = @type, [weakness] = @weakness, [evolution_level] = @evolution_level, [height] = @height, [weight] = @weight WHERE [id] = @id">
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

    <% If Not IsPostBack Then%>
    Search for your favorite Pokemon:&nbsp;
    <asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
   
    <% Else%>
    <br />
    Search for another favorite Pokemon:&nbsp;
    <asp:TextBox ID="tb_search2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ToolDataSource">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="weakness" HeaderText="Weakness" SortExpression="weakness" />
            <asp:BoundField DataField="evolution_level" HeaderText="Evolutionb Level" SortExpression="evolution_level" />
            <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
            <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
        </Columns>
   <HeaderStyle BorderStyle="Solid" BackColor="Blue" ForeColor="White" />
            <RowStyle BackColor="White" ForeColor="Black" />
        </asp:GridView>
    <% End If %>
</asp:Content>

