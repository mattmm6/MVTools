<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prefs.aspx.cs" Inherits="MVTools.Prefs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Preference Management</h2>
    <div class="col-md-4">
        <asp:TextBox runat="server" ID="txtPrefSearch" OnTextChanged="txtPrefSearch_TextChanged" AutoCompleteType="None" TextMode="SingleLine"></asp:TextBox>
        <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="txtPrefSearch_TextChanged" />
        <asp:Button runat="server" ID="btnCancel" Text="Clear" OnClick="btnClear_Click"/>
    </div>
    <div class="col-md-4"></div>
    <div class="col-md-4"></div>

    <div class="col-md-12"  style="height:500px; overflow:scroll" >
        <asp:GridView  runat="server" ID="prefGrid" CssClass="table table-striped table-bordered" AutoGenerateEditButton="true" 
            OnRowEditing="prefGrid_RowEditing"
            OnRowUpdating="prefGrid_RowUpdating"  >
 
        </asp:GridView>


    </div>
</asp:Content>
