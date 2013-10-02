<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page2.aspx.cs" Inherits="page2" MasterPageFile="f2067_MasterPage.master" Theme="theme" %>

<asp:Content ID="Content1" ContentPlaceHolderId="CPH1" runat="server">
    <form runat="server">
		<div id="text">
			<h1>TreeView</h1>

            Tässä TreeView, jonka sisältö luetaan xml-tiedostosta:

            <asp:XmlDataSource ID="menuItems" runat="server" DataFile="~/App_Data/MenuItems.xml">  
            </asp:XmlDataSource>  

            <asp:TreeView ID="TreeView1" NodeWrap="true" runat="server" DataSourceID="menuItems" ExpandDepth="1" Font-Names="Arial" Font-Size="Medium" ForeColor="#009900">  
                <DataBindings>
                    <asp:TreeNodeBinding DataMember="Item" TextField="Name" NavigateUrlField="url" />   
                </DataBindings>  
            </asp:TreeView> 
		</div>
    </form>
</asp:Content>