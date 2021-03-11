<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLCTKM.aspx.cs" Inherits="QLBH.Admin.QLCTKM" %>
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
					<div class="panel-heading">Quản Lý Chương Trình Khuyến Mại</div>
					<div class="panel-body">
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvCTKM" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="Mã chương trinh khuyến mại" DataField="MaCTKM"/>
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Tên chương trình khuyến mại" DataField="TenCTKM" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Giá trị khuyến mại" DataField="GiaTriKM" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Loại khuyến mại" DataField="LoaiKM" />
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLCTKMDetail.aspx?Ma=" + Eval("MaCTKM").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("MaCTKM").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLCTKMDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
