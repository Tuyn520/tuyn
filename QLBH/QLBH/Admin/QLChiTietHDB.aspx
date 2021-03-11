<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLChiTietHDB.aspx.cs" Inherits="QLBH.Admin.QLChiTietHDB" %>
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
					<div class="panel-heading">Quản Lý Chi Tiết Hóa Đơn Bán</div>
					<div class="panel-body">
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvCTHoaDonBan" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="Mã Chi Tiết Hóa Đơn Bán" DataField="MaCTHDBan"/>
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
                                <asp:BoundField HeaderText="Số Lượng" DataField="SoLuong" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Đơn Giá" DataField="DonGia" />
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:Label runat="server">Tên Chương Trình Khuyến Mại</asp:Label>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# getTenCTKM(Eval("MaCTKM")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:Label runat="server">Mã Hóa Đơn Bán</asp:Label>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# getMaHoaDonBan(Eval("MaHoaDonBan")) %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:Label runat="server">Thành Tiền</asp:Label>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lbThanhTien"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLChiTietHDBDetail.aspx?Ma=" + Eval("MaCTHDBan").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("MaCTHDBan").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLChiTietHDBDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
