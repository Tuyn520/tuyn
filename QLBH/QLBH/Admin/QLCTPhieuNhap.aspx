<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLCTPhieuNhap.aspx.cs" Inherits="QLBH.Admin.QLCTPhieuNhap" %>
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
					<div class="panel-heading">Quản Lý Chi Tiết Phiếu Nhập</div>
					<div class="panel-body">
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvCTPhieuNhap" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="Mã Chi Tiết Hóa Đơn Nhập:" DataField="MaCTHDNhap"/>
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
                                <asp:BoundField HeaderText="Số Lượng" DataField="SoLuong"/>
                            </Columns>
                            
                            <Columns>
                                <asp:BoundField HeaderText="Đơn Giá" DataField="DonGiaNhap"/>
                            </Columns>
                            
                            <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:Label runat="server">Mã Hóa Đơn Nhập</asp:Label>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# getMaHoaDonNhap(Eval("MaHoaDonNhap")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                            
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLCTPhieuNhapDetail.aspx?Ma=" + Eval("MaCTHDNhap").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("MaCTHDNhap").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLCTPhieuNhapDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
