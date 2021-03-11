<%@ Page Title="" Language="C#" MasterPageFile="~/Client/QLBHClient.Master" AutoEventWireup="true" CodeBehind="TrangChuDetail.aspx.cs" Inherits="QLBH.Client.TrangChuDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<!--css-->
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
<script type="text/javascript" src="TemplateClient/js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="TemplateClient/js/simpleCart.min.js"></script>
<!-- cart -->
  <script defer src="TemplateClient/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="TemplateClient/css/flexslider.css" type="text/css" media="screen" />
<script src="TemplateClient/js/imagezoom.js"></script>
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

  <!--mycart-->
  <!--start-rate-->
<script src="TemplateClient/js/jstarbox.js"></script>
	<link rel="stylesheet" href="TemplateClient/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!--//End-rate-->
<link href="TemplateClient/css/owl.carousel.css" rel="stylesheet">
<script src="TemplateClient/js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText :  false,
			pagination : true,
		});
		});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="TrangChu.aspx">Trang Chủ</a> / <span>Chi Tiết Sản Phẩm</span></h3>
			</div>
		</div>
	<!--banner-->

	<!--content-->
		<div class="content">
			<!--single-->
			<div class="single-wl3">
				<div class="container">
					<div class="single-grids">
						<div class="col-md-9 single-grid">
							<div class="single-top">
								<div class="single-left">
									<div class="flexslider">
										<ul class="slides">
											<asp:Repeater runat="server" ID="rpMultimedia">
												<ItemTemplate>
													<li data-thumb='<%# "../UpLoads/" + Eval("Url").ToString() %>'>
														<div class="thumb-image"> 
															<a href="#" data-image='<%# "../UpLoads/" + Eval("Url").ToString() %>' data-zoom-image='<%# "../UpLoads/" + Eval("Url").ToString() %>'>
														  <img data-imagezoom="true" class="img-responsive" src='<%# "../UpLoads/" + Eval("Url").ToString() %>' alt="">
														</a>
														</div>
													</li>
												</ItemTemplate>
											</asp:Repeater>
										 </ul>
									</div>
								</div>
								<div class="single-right simpleCart_shelfItem">
									<h4><asp:Label runat="server" ID="lbTenHangHoa"></asp:Label></h4>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<p class="price item_price">
										<asp:Label runat="server" ID="lbDonGia"></asp:Label>
										  <sup>
											đ
										  </sup>
									</p>
									<div class="description">
										<p><span>Tổng quan: </span><br />
											<asp:Label runat="server" ID="lbMoTa"></asp:Label>
										</p>
									</div>
									<div class="color-quality">
										<h6>Quality :</h6>
											<div class="quantity"> 
												<div class="quantity-select">                           
													<div class="entry value-minus1">&nbsp;</div>
													<div class="entry value1"><span>1</span></div>
													<div class="entry value-plus1 active">&nbsp;</div>
												</div>
											</div>
												<!--quantity-->
														<script>
                                                            $('.value-plus1').on('click', function () {
                                                                var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) + 1;
                                                                divUpd.text(newVal);
                                                            });

                                                            $('.value-minus1').on('click', function () {
                                                                var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) - 1;
                                                                if (newVal >= 1) divUpd.text(newVal);
                                                            });
														</script>
													<!--quantity-->
									</div>
									<div class="women">
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Thêm Vào Giỏ Hàng</a>
									</div>
									<div class="social-icon">
										<a href="#"><i class="icon"></i></a>
										<a href="#"><i class="icon1"></i></a>
										<a href="#"><i class="icon2"></i></a>
										<a href="#"><i class="icon3"></i></a>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="col-md-3 single-grid1">
							<h3>Sản phẩm mới</h3>
							<asp:Repeater runat="server" ID="rpSanPhamMoi_1">
								<ItemTemplate>
									<div class="recent-grids">
										<div class="recent-left">
											<a href='<%# "TrangChuDetail.aspx?Ma=" + Eval("MaHangHoa").ToString() %>'><img class="img-responsive" alt="" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'></a>
										</div>
										<div class="recent-right">
											<h6 class="best2"><a href="single.html"><%# Eval("TenHangHoa").ToString() %> </a></h6>
											<div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<span class=" price-in1"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></span>
										</div>	
										<div class="clearfix"> </div>
									</div>	
								</ItemTemplate>
								</asp:Repeater>
							
						</div>
						<div class="clearfix"> </div>
					</div>
					<!--Product Description-->
						<div class="product-w3agile">
							<h3 class="tittle1">Các sản phẩm</h3>
							<div class="product-grids">
								<div class="col-md-4 product-grid">
									<div id="owl-demo" class="owl-carousel">
										<div class="item">
											<asp:Repeater runat="server" ID="rpSanPhamMoi_2">
												<ItemTemplate>
													<div class="recent-grids">
														<div class="recent-left">
															<a href='<%# "TrangChuDetail.aspx?Ma=" + Eval("MaHangHoa").ToString() %>'><img class="img-responsive" alt="" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'></a>
														</div>
														<div class="recent-right">
															<h6 class="best2"><a href="single.html"><%# Eval("TenHangHoa").ToString() %> </a></h6>
															<div class="block">
																<div class="starbox small ghosting"> </div>
															</div>
															<span class=" price-in1"> <%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></span>
														</div>	
														<div class="clearfix"> </div>
													</div>
												</ItemTemplate>
											</asp:Repeater>
										</div>
										<div class="item">
											<asp:Repeater runat="server" ID="rpSanPhamMoi_3">
												<ItemTemplate>
													<div class="recent-grids">
														<div class="recent-left">
															<a href='<%# "TrangChuDetail.aspx?Ma=" + Eval("MaHangHoa").ToString() %>'><img class="img-responsive" alt="" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'></a>
														</div>
														<div class="recent-right">
															<h6 class="best2"><a href="single.html"><%# Eval("TenHangHoa").ToString() %> </a></h6>
															<div class="block">
																<div class="starbox small ghosting"> </div>
															</div>
															<span class=" price-in1"> <%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></span>
														</div>	
														<div class="clearfix"> </div>
													</div>
												</ItemTemplate>
											</asp:Repeater>
										</div>
									</div>
								</div>
								<div class="col-md-8 product-grid1">
									<div class="tab-wl3">
										<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
											<ul id="myTab" class="nav nav-tabs left-tab" role="tablist">
												<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Miêu tả</a></li>
												<li role="presentation"><a href="#reviews" role="tab" id="reviews-tab" data-toggle="tab" aria-controls="reviews">Nhận xét (1)</a></li>

											</ul>
											<div id="myTabContent" class="tab-content">
												<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
													<div class="descr">
														<h4>Sunflower </h4>
														<p>Sunflower là đơn vị kinh doanh đã nhiều năm trong lĩnh vực văn phòng phẩm ,đồ dùng học tập,trang sức ,phụ kiện -tiện ích.... Với thông điệp “Mãi là hành trang bên bạn” </p>
														<p class="quote">- Sunflower luôn hiểu và quan tâm đến nhu cầu thiết yếu hiện nay của khách hàng trong quá trình tìm kiếm tri thức.  Sunflower luôn cố gắng thực hiện chức trách của mình, không ngừng nâng cao chất lượng sản phẩm và chạm đến gần hơn trái tim bạn . Còn muốn mang đến khách hàng những trải nghiệm tốt nhất trên hành trình đó bằng cách cung cấp tất cả các sản phẩm được ưa chuộng trong giảng dạy, học tập và trao dồi kiến thức như thiết bị học tập thông minh, văn phòng phẩm, thiết bị điện tử,...</p>
														
														<p class="quote">Điều khác biệt làm nên một Nhân Văn luôn mới, gam màu hồng phấn chủ đạo thể hiện sự uy tín, tận tâm, mang đến trải nghiệm tốt nhất đến khách hàng.</p>

													</div>
												</div>
												<div role="tabpanel" class="tab-pane fade" id="reviews" aria-labelledby="reviews-tab">
													<div class="descr">
														<div class="reviews-top">
															<div class="reviews-left">
																<img src="TemplateClient/images/men3.jpg" alt=" " class="img-responsive">
															</div>
															<div class="reviews-right">
																<ul>
																	<li><a href="#">Admin</a></li>
																	<li><a href="#"><i class="glyphicon glyphicon-share" aria-hidden="true"></i>Reply</a></li>
																</ul>
																<p>Sản phẩm tốt thân thiện môi trường, màu sắc bắt mắt</p>
															</div>
															<div class="clearfix"></div>
														</div>
														<div class="reviews-bottom">
															<h4>Thêm đánh giá</h4>
															<p>Địa chỉ email của bạn sẽ không được công bố. Các trường hợp bắt buộc được đánh dấu *</p>
															<p>Đánh giá của bạn</p>
															<div class="block">
																<div class="starbox small ghosting"><div class="positioner"><div class="stars"><div class="ghost" style="width: 42.5px; display: none;"></div><div class="colorbar" style="width: 42.5px;"></div><div class="star_holder"><div class="star star-0"></div><div class="star star-1"></div><div class="star star-2"></div><div class="star star-3"></div><div class="star star-4"></div></div></div></div></div>
															</div>
															<form action="#" method="post">
																<label>Đánh giá của bạn </label>
																<textarea type="text" Name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
																<div class="row">
																	<div class="col-md-6 row-grid">
																		<label>Tên</label>
																		<input type="text" value="Name" Name="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
																	</div>
																	<div class="col-md-6 row-grid">
																		<label>Email</label>
																		<input type="email" value="Email" Name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
																	</div>
																	<div class="clearfix"></div>
																</div>
																<input type="submit" value="Gửi">
															</form>
														</div>
													</div>
												</div>
												<div role="tabpanel" class="tab-pane fade" id="custom" aria-labelledby="custom-tab">
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					<!--Product Description-->
				</div>
			</div>
			<!--single-->
			<div class="new-arrivals-w3agile">
					<div class="container">
						<h3 class="tittle1">Sản Phẩm Bán Chạy</h3>
						<div class="arrivals-grids">
							<asp:Repeater runat="server" ID="rpSanPhamBanChay">
								<ItemTemplate>
									<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="ban-top">
													<a href='<%# "TrangChuDetail.aspx?Ma=" + Eval("MaHangHoa").ToString() %>'><img class="img-responsive" alt="" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'></a>
												</div>		
											</a>		
										</figure>	
									</div>
									<div class="ribben1">
										<p>Mới</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html"><%# Eval("TenHangHoa").ToString() %></a></h6>
										<p ><em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Thêm Vào Giỏ Hàng</a>
									</div>
								</div>
							</div>	
								</ItemTemplate>
								</asp:Repeater>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!--new-arrivals-->
		</div>
		<!--content-->
</asp:Content>
