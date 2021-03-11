<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLPhieuNhap.aspx.cs" Inherits="QLBH.Admin.QLPhieuNhap" %>
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
					<div class="panel-heading">Quản Lý Phiếu Nhập</div>
					<div class="panel-body">
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvPhieuNhap" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="Mã Hóa Đơn Nhập" DataField="MaHoaDonNhap"/>
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Ngày Nhập" DataField="NgayNhap"/>
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:Label runat="server">Tên Nhân Viên</asp:Label>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# getTenNhanVien(Eval("MaNhanVien")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Tổng giá trị" DataField="TongGiaTri"/>
                            </Columns>
                             <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:Label runat="server">Tên Nguồn Hàng</asp:Label>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# getTenNguonHang(Eval("MaNguonHang")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>

                            
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLPhieuNhapDetail.aspx?Ma=" + Eval("MaHoaDonNhap").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("MaHoaDonNhap").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLPhieuNhapDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
