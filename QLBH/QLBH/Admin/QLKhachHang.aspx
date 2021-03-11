<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLKhachHang.aspx.cs" Inherits="QLBH.Admin.QLKhachHang" %>
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
					<div class="panel-heading">Quản Lý Khách Hàng</div>
					<div class="panel-body">
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvKhachHang" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="Mã Khách Hàng" DataField="MaKhachHang"/>
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Tên Khách Hàng" DataField="TenKhachHang" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Số Điện Thoại" DataField="SoDienThoai" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Gmail" DataField="Gmail" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Giới Tính" DataField="GioiTinh" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Loại Khách Hàng" DataField="LoaiKH" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Mật Khẩu" DataField="MatKhau" />
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLKhachHangDetail.aspx?Ma=" + Eval("MaKhachHang").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("MaKhachHang").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLKhachHangDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
