<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="QLBH.Client.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="Admin/TemplateAdmin/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="Admin/TemplateAdmin/css/datepicker3.css" rel="stylesheet"/>
    <link href="Admin/TemplateAdmin/css/styles.css" rel="stylesheet"/>
	<link href="TemplateClient/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="TemplateClient/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="TemplateClient/css/font-awesome.css" rel="stylesheet">
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="TemplateClient/js/jquery.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	<script src="TemplateClient/js/main.js"></script>
<!--search jQuery-->
<script src="TemplateClient/js/responsiveslides.min.js"></script>
 <script>
     $(function () {
         $("#slider").responsiveSlides({
             auto: true,
             nav: true,
             speed: 500,
             namespace: "callbacks",
             pager: true,
         });
     });
 </script>
 <!--mycart-->
<script type="text/javascript" src="TemplateClient/js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="TemplateClient/js/simpleCart.min.js"></script>
<!-- cart -->
  <!--start-rate-->
<script src="TemplateClient/js/jstarbox.js"></script>
	<link rel="stylesheet" href="TemplateClient/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
            jQuery(function () {
                jQuery('.starbox').each(function () {
                    var starbox = jQuery(this);
                    starbox.starbox({
                        average: starbox.attr('data-start-value'),
                        changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                        ghosting: starbox.hasClass('ghosting'),
                        autoUpdateAverage: starbox.hasClass('autoupdate'),
                        buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                        stars: starbox.attr('data-star-count') || 5
                    }).bind('starbox-value-changed', function (event, value) {
                        if (starbox.hasClass('random')) {
                            var val = Math.random();
                            starbox.next().text(' ' + val);
                            return val;
                        }
                    })
                });
            });
		</script>
<!--//End-rate-->
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
            var MaKhachHang = document.getElementById("txtTaiKhoan").value;
            var MatKhau = document.getElementById("txtMatKhau").value;
            if (MaKhachHang.length == 0 || MatKhau.length == 0) {
                return false;
            }
            return true;
        }
	</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="content">
				<!--login-->
			<div class="login">
				<div class="main-agileits">
					<div class="form-w3agile">
						<h3>Đăng nhập vào Sunflower</h3>
						<div action="#" method="post">
							<div class="key">
								<i class="fa fa-envelope" aria-hidden="true"></i>
								<asp:TextBox runat="server" ID="txtTaiKhoan" CssClass="form-control" placeholder="Tài Khoản"  autofocus=""></asp:TextBox>	
								<div class="clearfix"></div>
							</div>
							<div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
								<asp:TextBox runat="server" ID="txtMatKhau" CssClass="form-control" placeholder="Mật khẩu" name="password" type="password" value=""></asp:TextBox>	
								<div class="clearfix"></div>
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me"/>Remember Me
								</label>
								<asp:Label runat="server" ID="lbThongBao" CssClass="loidangnhap"></asp:Label>
							</div>

							<asp:Button runat="server" ID="btnDangNhap" CssClass="btn btn-primary" Text="Đăng Nhập" OnClick="btnDangNhap_Click"/>
						</div>
					</div>
					<div class="forg">
						<a href="#" class="forg-left">Quên mật khẩu</a>
						<a href="DangKy.aspx" class="forg-right">Đăng ký</a>
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
				<!--login-->
		</div>
        </div>
    </form>
</body>
</html>
