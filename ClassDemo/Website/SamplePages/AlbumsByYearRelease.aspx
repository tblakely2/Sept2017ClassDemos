<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AlbumsByYearRelease.aspx.cs" Inherits="SamplePages_AlbumsByYearRelease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Albums By Year Release</h1>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="minyear" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="maxyear" runat="server"></asp:TextBox>
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
    <br />
    <asp:GridView ID="AlbumsList" runat="server" AutoGenerateColumns="false" DataSourceID="AlbumsListODS">

    </asp:GridView>
    <asp:ObjectDataSource ID="AlbumsListODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Album_ListByYearRelease" TypeName="ChinookSystem.BLL.AlbumController">
        <SelectParameters>
            <asp:ControlParameter ControlID="minyear" PropertyName="Text" DefaultValue="1900" Name="minyear" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="maxyear" PropertyName="Text" DefaultValue="2017" Name="maxyear" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>

