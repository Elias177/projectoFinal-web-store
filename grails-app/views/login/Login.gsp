<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8">
    <title>Wish</title>
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

    <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>

    <asset:stylesheet src="style.css"/>\

</head>

<body>

<div class="form">

    <ul class="tab-group">
        <li class="tab"><a href="#signup">Sign Up</a></li>
        <li class="tab active"><a href="#login">Log In</a></li>
    </ul>

    <div class="tab-content">
        <g:if test='${flash.message}'>
            <div class="alert alert-danger alert-block login_message">${flash.message}</div>
        </g:if>
        <div id="login">
            <h1>Welcome Back!</h1>

            <form action="${postUrl ?: '/login/authenticate'}" method="POST">



                <div class="field-wrap">
                    <input placeholder="Username" name="${usernameParameter ?: 'username'}" id="username" type="text" required autocomplete="off"/>
                </div>

                <div class="field-wrap">
                    <input placeholder="Password" name="${passwordParameter ?: 'password'}" id="password" type="password"required autocomplete="off"/>
                </div>

                <p class="forgot"><a href="#">Forgot Password?</a></p>

                <button class="button button-block"/>Log In</button>

            </form>

        </div>

        <div id="signup">
            <h1>Sign Up for Free</h1>

            <form >

                <div class="top-row">
                    <div class="field-wrap">
                        <input placeholder="First Name" type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <input placeholder="Last Name" type="text"required autocomplete="off"/>
                    </div>
                </div>

                <div class="field-wrap">
                    <input placeholder="Username" type="text"required autocomplete="off"/>
                </div>

                <div class="field-wrap">
                    <input placeholder="Password" type="password"required autocomplete="off"/>
                </div>

                <button type="submit" class="button button-block"/>Get Started</button>

            </form>

        </div>

    </div><!-- tab-content -->

</div> <!-- /form -->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>



<script  src="js/index.js"></script>
<asset:javascript src="index.js"/>




</body>

</html>
