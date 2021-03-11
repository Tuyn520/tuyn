<%@ Page Title="" Language="C#" MasterPageFile="~/Client/QLBHClient.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="QLBH.Client.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 110px;
        }
        td{
            vertical-align:top;
            margin:5px;
            padding:5px;
            font-family:Tahoma;
            font-size:12px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="TrangChu.aspx">Trang Chủ</a> / <span>Giỏ Hàng</span></h3>
			</div>
		</div>
	<!--banner-->
    <div class="content">
			<div class="cart-items">
				<div class="container">
					<div>
						 <h2>My Shopping Cart </h2>
					</div>

	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" EnableModelValidation="True" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="100%">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Mã Sản Phẩm">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Tên Sản Phẩm">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Số Lượng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Giá Tiền">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Chức Năng">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">Update</asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete" OnClientClick="return confirm(&quot;Are u sure ?&quot;)">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

        </asp:GridView>

			</div>
	<!-- checkout -->	
		</div>
		</div>

</asp:Content>
