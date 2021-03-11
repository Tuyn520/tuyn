<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QLBH.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="TemplateAdmin/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="TemplateAdmin/css/datepicker3.css" rel="stylesheet"/>
    <link href="TemplateAdmin/css/styles.css" rel="stylesheet"/>
	<style>
	 .loidangnhap{
		 color:red;
		 font-family:initial;
	 }
	 #btnThoat{
		 margin-left:220px;
	 }
	</style>
	
	<script>
        function valid() {
            var MaNhanVien = document.getElementById("txtTaiKhoan").value;
            var MatKhau = document.getElementById("txtMatKhau").value;
            if (MaNhanVien.length == 0 || MatKhau.length == 0) {
                return false;
            }
            return true;
        }
	</script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Log in</div>
				<div class="panel-body">
					<div role="form">
						<fieldset>
							<div class="form-group">
								<asp:TextBox runat="server" ID="txtTaiKhoan" CssClass="form-control" placeholder="Tài Khoản"  autofocus=""></asp:TextBox>			
							</div>
							<div class="form-group">
								<asp:TextBox runat="server" ID="txtMatKhau" CssClass="form-control" placeholder="Mật khẩu" name="password" type="password" value=""></asp:TextBox>							
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me"/>Remember Me
								</label>
								<asp:Label runat="server" ID="lbThongBao" CssClass="loidangnhap"></asp:Label>
							</div>
							<asp:Button runat="server" ID="btnDangNhap" CssClass="btn btn-primary" Text="Đăng Nhập" OnClick="btnDangNhap_Click"/>
							<asp:Button runat="server" ID="btnThoat" CssClass="btn btn-primary" Text="Thoát" OnClick="btnThoat_Click"/>
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
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
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
    </form>
</body>
</html>
