<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLNhanVien.aspx.cs" Inherits="QLBH.Admin.QLNhanVien" %>
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
					<div class="panel-heading">Quản Lý Nhân Viên</div>
					<div class="panel-body">
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvNhanVien" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="Mã hàng hóa" DataField="MaNhanVien"/>
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Tên hàng hóa" DataField="TenNhanVien" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Số lượng tồn" DataField="MatKhau" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Đơn giá" DataField="SoDienThoai" />
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLNhanVienDetail.aspx?Ma=" + Eval("MaNhanVien").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("MaNhanVien").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLNhanVienDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
