<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prefs.aspx.cs" Inherits="MVTools.Prefs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Pref Check</h2>
    <div>
        <asp:
        <asp:GridView runat="server" ID="prefGrid" CssClass="table table-striped table-bordered" AutoGenerateEditButton="true" 
            OnRowEditing="prefGrid_RowEditing"
            OnRowUpdating="prefGrid_RowUpdating" >

        </asp:GridView>

    </div>
</asp:Content>
