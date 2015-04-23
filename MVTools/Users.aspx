<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="MVTools.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Users</h2>
    <div>
        <asp:GridView runat="server" ID="userGrid" CssClass="table table-striped table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="User ID" DataField="INIT" />
                <asp:BoundField HeaderText="First Name" DataField="FNAME" />
                <asp:BoundField HeaderText="Last Name" DataField="LNAME"/>
                <asp:BoundField HeaderText="Logged In" DataField="LOGGED" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
