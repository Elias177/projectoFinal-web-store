<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wish</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Wish shop project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:stylesheet src="bootstrap4/bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome-4.7.0/css/font-awesome.min.css"/>
    <asset:stylesheet src="OwlCarousel2-2.2.1/owl.carousel.css"/>
    <asset:stylesheet src="OwlCarousel2-2.2.1/owl.theme.default.css"/>
    <asset:stylesheet src="OwlCarousel2-2.2.1/animate.css"/>
    <asset:stylesheet src="colorbox/colorbox.css"/>
    <asset:stylesheet src="main_styles.css"/>
    <asset:stylesheet src="responsive.css"/>
</head>
<body>

<div class="super_container">

    <!-- Header -->

    <header class="header">
        <div class="header_inner d-flex flex-row align-items-center justify-content-start">
            <div class="logo"><a href="#">Wish</a></div>
            <nav class="main_nav">
                <ul>
                    <li><a href="#">home</a></li>
                    <li><a href="categories.html">clothes</a></li>
                    <li><a href="categories.html">accessories</a></li>
                    <li><a href="categories.html">lingerie</a></li>
                    <li><a href="contact.html">contact</a></li>
                </ul>
            </nav>
            <div class="header_content ml-auto">
                <div class="search header_search">
                    <form action="#">
                        <input type="search" class="search_input" required="required">
                        <button type="submit" id="search_button" class="search_button"><asset:image src="magnifying-glass.svg"/></button>
                    </form>
                </div>
                <div class="shopping">
                    <!-- Cart -->
                    <a href="#">
                        <div class="cart">
                            <asset:image src="shopping-bag.svg"/>
                            <div class="cart_num_container">
                                <div class="cart_num_inner">
                                    <div class="cart_num">1</div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <!-- Star -->
                    <a href="#">
                        <div class="star">
                            <asset:image src="star.svg"/>
                            <div class="star_num_container">
                                <div class="star_num_inner">
                                    <div class="star_num">0</div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <!-- Avatar -->
                    <a href="#">
                        <div class="avatar">
                            <asset:image src="avatar.svg"/>
                        </div>
                    </a>
                </div>
            </div>

            <div class="burger_container d-flex flex-column align-items-center justify-content-around menu_mm"><div></div><div></div><div></div></div>
        </div>
    </header>

    <!-- Menu -->

    <div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
        <div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
        <div class="logo menu_mm"><a href="#">Wish</a></div>
        <div class="search">
            <form action="#">
                <input type="search" class="search_input menu_mm" required="required">
                <button type="submit" id="search_button_menu" class="search_button menu_mm">  <asset:image class="menu_mm" src="magnifying-glass.svg"/></button>
            </form>
        </div>
        <nav class="menu_nav">
            <ul class="menu_mm">
                <li class="menu_mm"><a href="#">home</a></li>
                <li class="menu_mm"><a href="#">clothes</a></li>
                <li class="menu_mm"><a href="#">accessories</a></li>
                <li class="menu_mm"><a href="#">lingerie</a></li>
                <li class="menu_mm"><a href="#">contact</a></li>
            </ul>
        </nav>
    </div>

    <!-- Home -->

    <div class="home">

        <!-- Home Slider -->

        <div class="home_slider_container">
            <div class="owl-carousel owl-theme home_slider">

                <!-- Home Slider Item -->
                <div class="owl-item">
                    <div class="home_slider_background" style="background-image:url(./assets/home_slider_1.jpg)"></div>
                    <div class="home_slider_content">
                        <div class="home_slider_content_inner">
                            <div class="home_slider_subtitle">Promo Prices</div>
                            <div class="home_slider_title">New Collection</div>
                        </div>
                    </div>
                </div>

                <!-- Home Slider Item -->
                <div class="owl-item">
                    <div class="home_slider_background" style="background-image:url(./assets/home_slider_2.jpg)"></div>
                    <div class="home_slider_content">
                        <div class="home_slider_content_inner">
                            <div class="home_slider_subtitle">Promo Prices</div>
                            <div class="home_slider_title">New Collection</div>
                        </div>
                    </div>
                </div>

                <!-- Home Slider Item -->
                <div class="owl-item">
                    <div class="home_slider_background" style="background-image:url(./assets/home_slider_3.jpg)"></div>
                    <div class="home_slider_content">
                        <div class="home_slider_content_inner">
                            <div class="home_slider_subtitle">Promo Prices</div>
                            <div class="home_slider_title">New Collection</div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Home Slider Nav -->

            <div class="home_slider_next d-flex flex-column align-items-center justify-content-center"><asset:image src="arrow_r.png"/></div>

            <!-- Home Slider Dots -->

            <div class="home_slider_dots_container">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="home_slider_dots">
                                <ul id="home_slider_custom_dots" class="home_slider_custom_dots">
                                    <li class="home_slider_custom_dot active">01.<div></div></li>
                                    <li class="home_slider_custom_dot">02.<div></div></li>
                                    <li class="home_slider_custom_dot">03.<div></div></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- New Arrivals -->

    <div class="arrivals">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title_container text-center">
                        <div class="section_subtitle">only the best</div>
                        <div class="section_title">new arrivals</div>
                    </div>
                </div>
            </div>
            <div class="row products_container">

                <!-- Product -->
                <div class="col-lg-4 product_col">
                    <div class="product">
                        <div class="product_image">
                            <asset:image src="product_1.jpg"/>
                        </div>
                        <div class="rating rating_4">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product_content clearfix">
                            <div class="product_info">
                                <div class="product_name"><a href="product.html">Woman's Long Dress</a></div>
                                <div class="product_price">$45.00</div>
                            </div>
                            <div class="product_options">
                                <div class="product_buy product_option"><asset:image src="shopping-bag-white.svg"/></div>
                                <div class="product_fav product_option">+</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product -->
                <div class="col-lg-4 product_col">
                    <div class="product">
                        <div class="product_image">
                            <asset:image src="product_2.jpg"/>
                        </div>
                        <div class="rating rating_4">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product_content clearfix">
                            <div class="product_info">
                                <div class="product_name"><a href="product.html">2 Piece Swimsuit</a></div>
                                <div class="product_price">$35.00</div>
                            </div>
                            <div class="product_options">
                                <div class="product_buy product_option"><asset:image src="shopping-bag-white.svg"/></div>
                                <div class="product_fav product_option">+</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product -->
                <div class="col-lg-4 product_col">
                    <div class="product">
                        <div class="product_image">
                           <asset:image src="product_3.jpg"/>
                        </div>
                        <div class="rating rating_4">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product_content clearfix">
                            <div class="product_info">
                                <div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
                                <div class="product_price">$145.00</div>
                            </div>
                            <div class="product_options">
                                <div class="product_buy product_option"><asset:image src="shopping-bag-white.svg"/></div>
                                <div class="product_fav product_option">+</div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Footer -->

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="footer_logo"><a href="#">Wish</a></div>
                    <nav class="footer_nav">
                        <ul>
                            <li><a href="index.html">home</a></li>
                            <li><a href="categories.html">clothes</a></li>
                            <li><a href="categories.html">accessories</a></li>
                            <li><a href="categories.html">lingerie</a></li>
                            <li><a href="contact.html">contact</a></li>
                        </ul>
                    </nav>
                    <div class="footer_social">
                        <ul>
                            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-reddit-alien" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                </div>
            </div>
        </div>
    </footer>
</div>

<asset:javascript src="jquery-3.2.1.min.js"/>
<asset:javascript src="bootstrap4/popper.js"/>
<asset:javascript src="bootstrap4/bootstrap.min.js"/>
<asset:javascript src="OwlCarousel2-2.2.1/owl.carousel.js"/>
<asset:javascript src="easing/easing.js"/>
<asset:javascript src="parallax-js-master/parallax.min.js"/>
<asset:javascript src="colorbox/jquery.colorbox-min.js"/>
<asset:javascript src="custom.js"/>
</body>
</html>