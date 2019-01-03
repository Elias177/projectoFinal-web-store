<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cart</title>
    <meta charset="utf-8">
    <meta name="layout" content="main">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Wish shop project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>


    <!-- Cart -->

    <div class="cart_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="cart_title">your shopping cart</div>
                </div>
            </div>
            <br>
            <br>
            <div class="row">
            <div class="row">
                <div class="col">
                    <div class="cart_products">
                        <ul>
                            <li class=" cart_product d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-start">
                                <!-- Product Image -->
                                <div class="cart_product_image"><asset:image src="cart_product_1.jpg"/></div>
                                <!-- Product Name -->
                                <div class="cart_product_name"><a href="product.html">2 Piece Swimsuit</a></div>
                                <div class="cart_product_info ml-auto">
                                    <div class="cart_product_info_inner d-flex flex-row align-items-center justify-content-md-end justify-content-start">
                                        <!-- Product Price -->
                                        <div class="cart_product_price">$35.00</div>
                                        <!-- Product Quantity -->
                                        <div class="product_quantity_container">
                                            <div class="product_quantity clearfix">
                                                <input id="quantity_input" type="text" pattern="[0-9]*" value="1">
                                                <div class="quantity_buttons">
                                                    <div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fa fa-caret-up" aria-hidden="true"></i></div>
                                                    <div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fa fa-caret-down" aria-hidden="true"></i></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Products Total Price -->
                                        <div class="cart_product_total">$35.00</div>
                                        <!-- Product Cart Trash Button -->
                                        <div class="cart_product_button">
                                            <button class="cart_product_remove"><img src="images/trash.png" alt=""></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="cart_total">
                        <ul>
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div class="cart_total_title">Subtotal</div>
                                <div class="cart_total_price ml-auto">$35.00</div>
                            </li>
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div class="cart_total_title">Shipping</div>
                                <div class="cart_total_price ml-auto">$5.00</div>
                            </li>
                            <li class="d-flex flex-row align-items-center justify-content-start">
                                <div class="cart_total_title">Total</div>
                                <div class="cart_total_price ml-auto">$40.00</div>
                            </li>
                        </ul>
                        <button class="cart_total_button">proceed to checkout</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="cart_control_bar d-flex flex-md-row flex-column align-items-start justify-content-start">
                        <button class="button_clear cart_button">clear cart</button>
                        <button class="button_update cart_button">update cart</button>
                        <button class="button_update cart_button_2 ml-md-auto">continue shopping</button>
                    </div>
                </div>
            </div>

        </div>
    </div>


</body>
</html>