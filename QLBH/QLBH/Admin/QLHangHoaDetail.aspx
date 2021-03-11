<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLHangHoaDetail.aspx.cs" Inherits="QLBH.Admin.QLHangHoaDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
		function CheckLuu() {
			if (confirm("Bạn chắc chắn muốn lưu?") == true) {
				return true;
			}
			else {
				return false;
            }
        }
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
      <div class="row">
		<div class="col-md-12">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Chi tiết hàng hóa</div>
				<div class="panel-body">
					<div role="form">
						<fieldset>
							<asp:Panel runat="server" ID="pnError" Visible="false" class="alert alert-danger" >
								Lỗi nhập liệu, vui lòng kiểm tra lại dữ lệu!
							</asp:Panel>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Mã hàng hóa:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtMaHangHoa" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: VPP001</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Tên hàng hóa:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtTenHangHoa" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd:Note nhỏ trái cây Hàn </span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Số lượng tồn:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtSoLuongTon" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: 50</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Đơn giá:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtDonGia" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: 20000</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Đơn vị tính:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtDonViTinh" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: Chiếc</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Mã loại:</label>
								<div class="col-md-10">
								<asp:DropDownList runat="server" ID="cmbMaLoai" CssClass="form-control"></asp:DropDownList>
									<span class="help-block">Vd: 2</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Mô tả:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtMoTa" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: Xuất sứ: Hàng Trung nội địa</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Ảnh hàng hóa:</label>
								<div class="col-md-10">
									<asp:FileUpload runat="server" CssClass="form-control" ID="fuAnhHH"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-2">
									<asp:Button CssClass="btn btn-white" runat="server" ID="btnHuy" Text="Hủy" />
									<asp:Button CssClass="btn btn-primary" runat="server" ID="btnThemMoi" Text="Thêm mới"
										OnClientClick="return CheckLuu()"
										OnClick="btnThemMoi_Click" />
									<asp:Button CssClass="btn btn-primary" runat="server" ID="btnLuu" Text="Lưu lại"
										OnClientClick="return CheckLuu()"
										OnClick="btnLuu_Click"/>
								</div>
							</div>

						</fieldset>
					</div>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	
		

		<script src="TemplateAdmin/js/jquery-1.11.1.min.js"></script>
		<script src="TemplateAdmin/js/bootstrap.min.js"></script>
		<script src="TemplateAdmin/js/chart.min.js"></script>
		<script src="TemplateAdmin/js/chart-data.js"></script>
		<script src="TemplateAdmin/js/easypiechart.js"></script>
		<script src="TemplateAdmin/js/easypiechart-data.js"></script>
		<script src="TemplateAdmin/js/bootstrap-datepicker.js"></script>
		<script>
            !function ($) {
                $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
                    $(this).find('em:first').toggleClass("glyphicon-minus");
                });
                $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
            }(window.jQuery);

            $(window).on('resize', function () {
                if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
            })
            $(window).on('resize', function () {
                if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
            })
		</script>
        </div>
</asp:Content>
