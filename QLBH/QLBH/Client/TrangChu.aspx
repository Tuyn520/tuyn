<%@ Page Title="" Language="C#" MasterPageFile="~/Client/QLBHClient.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="QLBH.Client.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--banner-->
		<div class="banner-w3">
			<div class="demo-1">            
				<div id="example1" class="core-slider core-slider__carousel example_1">
					<div class="core-slider_viewport">
						<div class="core-slider_list">
							<asp:Repeater runat="server" ID="rpBanner">
                                <ItemTemplate>
                                    <div class="core-slider_item">
                                        <img class="img-responsive" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'>
                                    </div>  
                                </ItemTemplate>
                            </asp:Repeater>
						 </div>
					</div>
					<div class="core-slider_nav">
						<div class="core-slider_arrow core-slider_arrow__right"></div>
						<div class="core-slider_arrow core-slider_arrow__left"></div>
					</div>
					<div class="core-slider_control-nav"></div>
				</div>
			</div>
			<link href="TemplateClient/css/coreSlider.css" rel="stylesheet" type="text/css">
			<script src="TemplateClient/js/coreSlider.js"></script>
			<script>
			$('#example1').coreSlider({
			  pauseOnHover: false,
			  interval: 3000,
			  controlNavEnabled: true
			});

			</script>

		</div>	
		<!--banner-->
			<!--content-->
		<div class="content">
			<!--banner-bottom-->
				<div class="ban-bottom-w3l">
					<div class="container">
						<div class="col-md-6 ban-bottom">
							<asp:Repeater runat="server" ID="rpVanPhongPham">
                                <ItemTemplate>
                                    <div class="ban-top">
                                        <img class="img-responsive" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'>
                                        <div class="ban-text">
											<h4>Văn Phòng Phẩm</h4>
										</div>
                                    </div>  
                                </ItemTemplate>
                            </asp:Repeater>
						</div>
						<div class="col-md-6 ban-bottom3">
							<asp:Repeater runat="server" ID="rpPhuKien">
                                <ItemTemplate>
                                    <div class="ban-top">
                                        <img class="img-responsive" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'>
                                        <div class="ban-text">
											<h4>Phụ Kiện/ Tiện Ích</h4>
										</div>
                                    </div>  
                                </ItemTemplate>
                            </asp:Repeater>
							<div class="ban-img">
								<div class=" ban-bottom1">
									<asp:Repeater runat="server" ID="rpTrangSuc">
										<ItemTemplate>
											<div class="ban-top">
												<img class="img-responsive" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'>
												<div class="ban-text">
													<h4>Trang Sức</h4>
												</div>
											</div>  
										</ItemTemplate>
									</asp:Repeater>
								</div>
								<div class="ban-bottom2">
									<asp:Repeater runat="server" ID="rpTrangTri">
										<ItemTemplate>
											<div class="ban-top">
												<img class="img-responsive" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'>
												<div class="ban-text">
													<h4>Trang Trí/<br /> Nội Thất</h4>
												</div>
											</div>  
										</ItemTemplate>
									</asp:Repeater>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			<!--banner-bottom-->
			<!--new-arrivals-->
				<div class="new-arrivals-w3agile">
					<div class="container">
						<h2 class="tittle">Sản Phẩm Nổi Bật</h2>
						<div class="arrivals-grids">
							<asp:Repeater runat="server" ID="rpSanPhamNoiBat">
                                    <ItemTemplate>
										<div class="col-md-3 arrival-grid simpleCart_shelfItem">
											<div class="grid-arr">
												<div  class="grid-arrival">
													<figure>		
														<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
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
													<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="GioHang.aspx?action=add&adm " class="my-cart-b item_add">Thêm vào giỏ hàng</asp:HyperLink>
													<%--<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Thêm Vào Giỏ Hàng</a>--%>

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
				<!--accessories-->
			<div class="accessories-w3l">
				<div class="container">
					<h3 class="tittle">Giảm giá 20%</h3>
					<span>Toàn bộ sản phẩm trang trí nội thất</span>
					<div class="button">
						<a href="#" class="button1"> Mua ngay</a>
						<a href="#" class="button1"> Xem ngay</a>
					</div>
				</div>
			</div>
			<!--accessories-->
			<!--Products-->
				<div class="product-agile">
					<div class="container">
						<h3 class="tittle1"> Sản Phẩm Mới</h3>
						<div class="slider">
							<div class="callbacks_container">
								<ul class="rslides" id="slider">
									<li>	 
										<div class="caption">
											<asp:Repeater runat="server" ID="rpSanPhamMoi_1">
												<ItemTemplate>
										
														<div class="col-md-3 cap-left simpleCart_shelfItem">
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
																<div class="block">
																	<div class="starbox small ghosting"> </div>
																</div>
																<div class="women">
																	<h6><a href="single.html"><%# Eval("TenHangHoa").ToString() %></a></h6>
																	<p ><em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
																	<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="GioHang.aspx?action=add&amp" class="my-cart-b item_add">Thêm vào giỏ hàng</asp:HyperLink>
																</div>
															</div>
														</div>
												</ItemTemplate>
											 </asp:Repeater>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>	 
										<div class="caption">
											<asp:Repeater runat="server" ID="rpSanPhamMoi_2">
												<ItemTemplate>
										
														<div class="col-md-3 cap-left simpleCart_shelfItem">
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
																<div class="block">
																	<div class="starbox small ghosting"> </div>
																</div>
																<div class="women">
																	<h6><a href="single.html"><%# Eval("TenHangHoa").ToString() %></a></h6>
																	<p ><em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
																	<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="GioHang.aspx?action=add&amp" class="my-cart-b item_add">Thêm vào giỏ hàng</asp:HyperLink>
																</div>
															</div>
														</div>
												</ItemTemplate>
											 </asp:Repeater>
											<div class="clearfix"></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			<!--Products-->
			<div class="latest-w3">
				<div class="container">
					<h3 class="tittle1">Xu Hướng</h3>
					<div class="latest-grids">
						<div class="col-md-4 latest-grid">
									<div class="latest-top">
										<img class="img-responsive"  alt="" src="TemplateClient/images/679c3f2a885f426adb7f7e89e63871dd.jpg">
										<div class="latest-text">
											<h4>BaLo</h4>
										</div>
										<div class="latest-text2 hvr-sweep-to-top">
											<h4>-50%</h4>
										</div>
									</div>
								</div>	
						<div class="col-md-4 latest-grid">
									<div class="latest-top">
										<img class="img-responsive"  alt="" src="TemplateClient/images/21617841_2013624228868598_2740533530944255526_n.jpg">
										<div class="latest-text">
											<h4>Móc Khóa</h4>
										</div>
										<div class="latest-text2 hvr-sweep-to-top">
											<h4>-10%</h4>
										</div>
									</div>
								</div>	
						<div class="col-md-4 latest-grid">
									<div class="latest-top">
										<img class="img-responsive"  alt="" src="TemplateClient/images/4330788868_452955805.400x400.jpg">
										<div class="latest-text">
											<h4>Vòng Tay</h4>
										</div>
										<div class="latest-text2 hvr-sweep-to-top">
											<h4>-20%</h4>
										</div>
									</div>
								</div>	
						<div class="clearfix"></div>
					</div>
					<div class="latest-grids">
						<div class="col-md-4 latest-grid">
									<div class="latest-top">
										<img class="img-responsive"  alt="" src="TemplateClient/images/1585201687689_01.jpg">
										<div class="latest-text">
											<h4>Bình Nước</h4>
										</div>
										<div class="latest-text2 hvr-sweep-to-top">
											<h4>-40%</h4>
										</div>
									</div>
								</div>	
						<div class="col-md-4 latest-grid">
									<div class="latest-top">
										<img class="img-responsive"  alt="" src="TemplateClient/images/de75be2400316da49b1b3410721d1965.jpg">
										<div class="latest-text">
											<h4>Tủ Mini</h4>
										</div>
										<div class="latest-text2 hvr-sweep-to-top">
											<h4>-20%</h4>
										</div>
									</div>
								</div>	
						<div class="col-md-4 latest-grid">
									<div class="latest-top">
										<img class="img-responsive"  alt="" src="TemplateClient/images/vpp5__2_.jpg">
										<div class="latest-text">
											<h4>Sổ Tay</h4>
										</div>
										<div class="latest-text2 hvr-sweep-to-top">
											<h4>-30%</h4>
										</div>
									</div>
								</div>	
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
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
										<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="GioHang.aspx?action=add&amp" class="my-cart-b item_add">Thêm vào giỏ hàng</asp:HyperLink>
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
