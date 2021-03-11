<%@ Page Title="" Language="C#" MasterPageFile="~/Client/QLBHClient.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="QLBH.Client.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="TrangChu.aspx">Trang Chủ</a> / <span>Gửi Thư Cho Chúng Tôi</span></h3>
			</div>
		</div>
	<!--banner-->
		<!--content-->
			<div class="content">
				<!--contact-->
					<div class="mail-w3ls">
						<div class="container">
							<h2 class="tittle">Gửi Thư Cho Chúng Tôi</h2>
							<div class="mail-grids">
								<div class="mail-top">
									<div class="col-md-4 mail-grid">
										<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
										<h5>Địa Chỉ</h5>
										<p>235, Hoàng Quốc Việt, Bắc Từ Liêm, Hà Nội</p>
									</div>
									<div class="col-md-4 mail-grid">
										<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
										<h5>Số Điện Thoại</h5>
										<p>Telephone:  +1 800 603 6035</p>
									</div>
									<div class="col-md-4 mail-grid">
										<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
										<h5>E-mail</h5>
										<p>E-mail:<a href="mailto:example@mail.com"> sunflower@gmail.com</a></p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="map-w3">
								<iframe src="https://map.coccoc.com/map?query=235%20ho%C3%A0ng%20qu%E1%BB%91c%20vi%E1%BB%87t&borders=21.0461347072,105.784435272,21.0468556509,105.79662323&bounds_change=true"  allowfullscreen></iframe>
								</div>
								<div class="mail-bottom">
									<h4>Hãy Liên Lạc Với Chúng Tôi</h4>
									<form action="#" method="post">
										<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tên';}" required="">
										<input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
										<input type="text" value="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Số điện thoại';}" required="">
										<textarea  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
										<input type="submit" value="Gửi" >
										<input type="reset" value="Xóa" >

									</form>
								</div>
							</div>
						</div>
					</div>
				<!--contact-->
			</div>
		<!--content-->
</asp:Content>
