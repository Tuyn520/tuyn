<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLAnhHH.aspx.cs" Inherits="QLBH.Admin.QLAnhHH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .cachtop{
            border:1px solid #DDDDDD;
        }
        .lb-warning{
            color:red;
        }
    </style>
    <script>
        function checkDelete() {
            if (confirm("Bạn có muốn xóa không?") == true) {
                return true;
            }
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Quản lý ảnh hàng hóa</div>
					<div class="panel-body">
                        <asp:TextBox runat="server" ID="txtTimKiem"></asp:TextBox>
                        <asp:LinkButton runat="server" ID="btnTimKiem" Text="Tìm Kiếm" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("ID").ToString() %>' OnCommand="btnTimKiem_Command"></asp:LinkButton>
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvAnhHH" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="ID"/>
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Tên Hàng Hóa" DataField="Alt" />
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:Label runat="server">Tên Hàng Hóa</asp:Label>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# getTenHangHoa(Eval("MaHangHoa")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server">Ảnh</asp:Label>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Anh" runat="server" ImageUrl='<%# "../UpLoads/" + Eval("Url").ToString() %> ' Width="150px" Height=" 200px"/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLAnhHHDetail.aspx?Ma=" + Eval("ID").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("ID").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLAnhHHDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
