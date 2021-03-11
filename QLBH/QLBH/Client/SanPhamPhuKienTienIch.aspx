<%@ Page Title="" Language="C#" MasterPageFile="~/Client/QLBHClient.Master" AutoEventWireup="true" CodeBehind="SanPhamPhuKienTienIch.aspx.cs" Inherits="QLBH.Client.SanPhamPhuKienTienIch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    		<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="TrangChu.html">Trang Chủ</a> / <span>Phụ Kiện/ Tiện Ích</span></h3>
			</div>
		</div>
	<!--banner-->
		<!--content-->
			<div class="content">
				<div class="products-agileinfo">
						<h2 class="tittle">Phụ Kiện/ Tiện Ích</h2>
					<div class="container">
						<div class="product-agileinfo-grids w3l">
							<div class="col-md-3 product-agileinfo-grid">
								<div class="categories">
									<h3>Danh mục sản phẩm</h3>
									<ul class="tree-list-pad">
										<li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><span>Túi/Balo/Ví mini</span></label>
											<ul>
														<li><a href="SanPhamPhuKienTienIch.aspx">Balo/Túi/Tote</a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Ví</a></li>
											</ul>
										</li>
										<li><input type="checkbox" id="item-1" checked="checked" /><label for="item-1">Phụ kiện</label>
											<ul>
														<li><a href="SanPhamPhuKienTienIch.aspx">Dép </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Móc khóa </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Strap  </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Đồng hồ  </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Mũ/ Khăn/ Tất/ Găng Tay  </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Pin cài áo/ Patch dán áo  </a></li>
											</ul>
										</li>
										<li><input type="checkbox" checked="checked" id="item-2" /><label for="item-2">Tiện ích </label>
											<ul>
														<li><a href="SanPhamPhuKienTienIch.aspx">Vỏ pasport/ Tag vali  </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Hộp đựng trang sức </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Túi/ Cốp đựng mĩ phẩm  </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Gương/ Lược  </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Máy làm tóc </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Băng đô/ Turban/ Bờm </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Quạt </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Bình nước/ Cốc  </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Đồ gia dụng </a></li>
														<li><a href="SanPhamPhuKienTienIch.aspx">Tiện ích cá nhân </a></li>
											</ul>
										</li>
									</ul>
								</div>
								<div class="price">
									<h3>Giá tiền</h3>
									<ul class="dropdown-menu6">
										<li>                
											<div id="slider-range"></div>							
											<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
										</li>			
									</ul>
									<script type='text/javascript'>//<![CDATA[ 
									$(window).load(function(){
									 $( "#slider-range" ).slider({
												range: true,
												min: 0,
												max: 9000,
												values: [ 1000, 7000 ],
												slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
												}
									 });
									$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

									});//]]>  

									</script>
									<script type="text/javascript" src="TemplateClient/js/jquery-ui.js"></script>
								</div>
								<div class="top-rates">
									<h3>Sản phẩm giá tốt</h3>
										<asp:Repeater runat="server" ID="rpSanPhamGiaTot">
											<ItemTemplate>
												<div class="recent-grids">
													<div class="recent-left">
														<a href='<%# "TrangChuDetail.aspx?Ma=" + Eval("MaHangHoa").ToString() %>'><img class="img-responsive" alt="" src='<%# "../UpLoads/" + getAnhDaiDien(Eval("MaHangHoa").ToString()) %>'></a>
													</div>
													<div class="recent-right">
														<h6 class="best2"><a href="single.html"><%# Eval("TenHangHoa").ToString() %> </a></h6>
														<p> <em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
													</div>	
													<div class="clearfix"> </div>
												</div>
											</ItemTemplate>
										</asp:Repeater>
									
								</div>
								<div class="cat-img">
									<img class="img-responsive " src="TemplateClient/images/45.jpg" alt="">
								</div>
							</div>
							<div class="col-md-9 product-agileinfon-grid1 w3l">
								<div class="product-agileinfon-top">
									<div class="col-md-6 product-agileinfon-top-left">
										<img class="img-responsive " src="TemplateClient/images/106237179_193828168738404_1299169970953775592_n.jpg" alt="">
									</div>
									<div class="col-md-6 product-agileinfon-top-left">
										<img class="img-responsive " src="TemplateClient/images/106255565_629939967880780_6723455859140320225_n.jpg" alt="">
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="mens-toolbar">
									<p >Showing 1–9 of 21 results</p>
									 <p class="showing">Sorting By
										<select>
											  <option value=""> Tên</option>
											  <option value="">  Tỷ lệ</option>
												<option value=""> Màu sắc </option>
												<option value=""> Giá </option>
										</select>
									  </p> 
									  <p>Show
										<select>
											  <option value=""> 9</option>
											  <option value="">  10</option>
												<option value=""> 11 </option>
												<option value=""> 12 </option>
										</select>
									  </p>
									<div class="clearfix"></div>		
								</div>
								<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
									<ul id="myTab" class="nav1 nav1-tabs left-tab" role="tablist">
										<ul id="myTab" class="nav nav-tabs left-tab" role="tablist">
									<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"><img src="TemplateClient/images/menu1.png"></a></li>
									<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile"><img src="TemplateClient/images/menu.png"></a></li>
									</ul>
									<div id="myTabContent" class="tab-content">
										<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
											<div class="product-tab">
												<asp:Repeater runat="server" ID="rpVanPhongPham_01">
													<ItemTemplate>
														<div class="col-md-4 product-tab-grid simpleCart_shelfItem">
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
																<div class="block">
																	<div class="starbox small ghosting"> </div>
																</div>
																<div class="women">
																	<h6><a href="single.html"><%# Eval("TenHangHoa").ToString() %></a></h6>
																	<p ><em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
																	<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
																</div>
															</div>
														</div>
													</ItemTemplate>
												</asp:Repeater>
												<div class="clearfix"></div>
											</div>
											<div class="product-tab prod1">
												<asp:Repeater runat="server" ID="rpVanPhongPham_02">
													<ItemTemplate>
														<div class="col-md-4 product-tab-grid simpleCart_shelfItem">
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
																<div class="block">
																	<div class="starbox small ghosting"> </div>
																</div>
																<div class="women">
																	<h6><a href="single.html"><%# Eval("TenHangHoa").ToString() %></a></h6>
																	<p ><em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
																	<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
																</div>
															</div>
														</div>
													</ItemTemplate>
												</asp:Repeater>
												<div class="clearfix"></div>
											</div>
											<div class="product-tab">
												<asp:Repeater runat="server" ID="rpVanPhongPham_03">
													<ItemTemplate>
														<div class="col-md-4 product-tab-grid simpleCart_shelfItem">
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
																<div class="block">
																	<div class="starbox small ghosting"> </div>
																</div>
																<div class="women">
																	<h6><a href="single.html"><%# Eval("TenHangHoa").ToString() %></a></h6>
																	<p ><em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
																	<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
																</div>
															</div>
														</div>
													</ItemTemplate>
												</asp:Repeater>
												<div class="clearfix"></div>
											</div>
											<div class="product-tab prod2">
												<asp:Repeater runat="server" ID="rpVanPhongPham_04">
													<ItemTemplate>
														<div class="col-md-4 product-tab-grid simpleCart_shelfItem">
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
																<div class="block">
																	<div class="starbox small ghosting"> </div>
																</div>
																<div class="women">
																	<h6><a href="single.html"><%# Eval("TenHangHoa").ToString() %></a></h6>
																	<p ><em class="item_price"><%# string.Format("{0:#,0}", Eval("DonGia")) %><u>đ</u></em></p>
																	<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
																</div>
															</div>
														</div>
													</ItemTemplate>
												</asp:Repeater>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
		<!--content-->
</asp:Content>
