<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/QLBHAdmin.Master" AutoEventWireup="true" CodeBehind="QLNhanVienDetail.aspx.cs" Inherits="QLBH.Admin.QLNhanVienDetail" %>
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
				<div class="panel-heading">Chi tiết nhân viên</div>
				<div class="panel-body">
					<div role="form">
						<fieldset>
							<asp:Panel runat="server" ID="pnError" Visible="false" class="alert alert-danger" >
								Lỗi nhập liệu, vui lòng kiểm tra lại dữ lệu!
							</asp:Panel>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Mã nhân viên:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtMaNhanVien" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: NV001</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Tên nhân viên:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtTenNhanVien" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd:Nguyễn Thị Quỳnh Trang </span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Mật khẩu:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtMatKhau" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: NV001</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label" for="name">Số điện thoại:</label>
								<div class="col-md-10">
								<asp:TextBox runat="server" ID="txtSoDienThoai" CssClass="form-control"></asp:TextBox>
									<span class="help-block">Vd: 0121546325</span>
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
