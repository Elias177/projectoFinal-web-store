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
    <asset:stylesheet src="cart.css"/>
    <asset:stylesheet src="cart_responsive.css"/>
    <asset:stylesheet src="malihu-custom-scrollbar/jquery.mCustomScrollbar.css"/>
    <asset:stylesheet src="jquery-ui-1.12.1.custom/jquery-ui.css"/>
    <asset:stylesheet src="categories.css"/>
    <asset:stylesheet src="categories_responsive.css"/>
    <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>

    <style>
    .avatar
    {
        cursor: pointer;
    }
    </style>


    <g:layoutHead/>
</head>
<body>

<div class="super_container">

    <!-- Header -->

    <form name="submitForm" method="POST" action="${createLink(controller: 'logout')}">
        <input type="hidden" name="" value="">
    </form>

    <header class="header">
        <div class="header_inner d-flex flex-row align-items-center justify-content-start">
            <div class="logo"><a href="#">Wish</a></div>
            <nav class="main_nav">
                <ul>
                    <li><a href="${createLink(controller: 'index',action:'index')}">home</a></li>
                    <li><a href="${createLink(controller: 'index', action:'articulos')}">clothes</a></li>
                    <sec:ifAllGranted roles='ROLE_ADMIN'>
                        <li><a href="${createLink(controller: 'index',action: 'admin')}">Administration</a></li>
                    </sec:ifAllGranted>
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
                    <a href="${createLink(controller: 'cart',action: 'index')}">
                        <div class="cart">
                            <asset:image src="shopping-bag.svg"/>

                                <sec:ifLoggedIn>
                                    <div class="cart_num_container">
                                        <div class="cart_num_inner">
                                            <div class="cart_num">1</div>
                                        </div>
                                    </div>
                                </sec:ifLoggedIn>

                        </div>
                    </a>


                    <sec:ifNotLoggedIn>
                        <!-- Avatar -->
                        <a type="button" class="avatar" data-html="true" data-container="body" data-toggle="popover" data-placement="top" data-content="<sec:loggedInUserInfo field="username"/> <a class='btn btn-sm' href='${createLink(controller: 'login', action: 'auth')}'><i class='fa fa-sign-in-alt'>Login</i></a>">
                            <asset:image src="avatar.svg"/>
                        </a>
                    </sec:ifNotLoggedIn>

                    <sec:ifLoggedIn>
                        <!-- Avatar -->
                        <a type="button" class="avatar" data-html="true" data-container="body" data-toggle="popover" data-placement="top" data-content="<sec:loggedInUserInfo field="username"/> <a class='btn btn-sm' HREF='javascript:document.submitForm.submit()'><i class='fa fa-sign-out-alt'>Logout</i></a>">
                            <asset:image src="avatar.svg"/>
                        </a>
                    </sec:ifLoggedIn>

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
                <li><a href="${createLink(controller: 'index',action:'index')}">home</a></li>
                <li><a href="${createLink(controller: 'index', action:'articulos')}">clothes</a></li>
                <sec:ifAllGranted roles='ROLE_ADMIN'>
                    <li><a href="${createLink(controller: 'index',action: 'admin')}">Administration</a></li>
                </sec:ifAllGranted>
            </ul>
        </nav>
    </div>

    <g:layoutBody/>

    <!-- Footer -->

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="footer_logo"><a href="#">Wish</a></div>
                    <nav class="footer_nav">
                        <ul>
                            <li><a href="${createLink(controller: 'index',action:'index')}">home</a></li>
                            <li><a href="${createLink(controller: 'index', action:'articulos')}">clothes</a></li>
                            <sec:ifAllGranted roles='ROLE_ADMIN'>
                                <li><a href="${createLink(controller: 'index',action: 'admin')}">Administration</a></li>
                            </sec:ifAllGranted>
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
<asset:javascript src="cart_custom.js"/>
<asset:javascript src="Isotope/isotope.pkgd.min.js"/>
<asset:javascript src="malihu-custom-scrollbar/jquery.mCustomScrollbar.css"/>
<asset:javascript src="jquery-ui-1.12.1.custom/jquery-ui.js"/>
<asset:javascript src="categories_custom.js"/>
<script>
    $(document).ready(function(){
        $('[data-toggle="popover"]').popover();
    });
</script>
</body>
</html>

