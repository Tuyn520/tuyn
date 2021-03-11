<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLCauHinh.aspx.cs" Inherits="QLBH.Admin.QLCauHinh" %>
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
					<div class="panel-heading">Quản Lý Cấu Hình</div>
					<div class="panel-body">
                        <asp:GridView AutoGenerateColumns="false"  runat="server" ID="dgvCauHinh" CssClass="cachtop" Height="237px" Width="100%">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="ID"/>
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Tên Công Ty" DataField="TenCongTy" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Địa Chỉ Công Ty" DataField="DiaChiCongTy" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Số Điện Thoại" DataField="SoDienThoai" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="Mã Số Thuế" DataField="MaSoThue" />
                            </Columns>
                            <Columns>
                                <asp:BoundField HeaderText="VAT" DataField="VAT" />
                            </Columns>
                            <Columns>
                                    <asp:TemplateField>
                                                <HeaderTemplate>
                                                    <asp:Label runat="server">Chức năng</asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <a ID="btnSua" href='<%# "QLCauHinhDetail.aspx?Ma=" + Eval("ID").ToString() %>'>Sửa</a>
                                                    <asp:LinkButton runat="server" ID="btnXoa" Text="Xóa" CssClass="lb-warning"
                                                        CommandArgument='<%# Eval("ID").ToString() %>'
                                                        OnClientClick="return checkDelete()" OnCommand="btnXoa_Command"></asp:LinkButton>
                                                </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                            <a href="QLCauHinhDetail.aspx" class="btn btn-primary">Thêm mới</a>
					</div>
				</div>
			</div>
		</div><!--/.row-->
</asp:Content>
