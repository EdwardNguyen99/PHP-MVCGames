<?php 
   session_start();
   require_once "class/dt.php";
   $dt = new dt;
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>HALO SHOP GAME</title>

    <meta name="keywords" content="">
    <link rel="icon" type="Images/png" href="logo.ico"/>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Css animations  -->
    <link href="css/animate.css" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="css/custom.css" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!-- Favicon and apple touch icons-->
    <!-- owl carousel css -->

    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
</head>

<body>

    <div id="all">
        <?php require "View/header.php"?>
                <!-- *** LOGIN MODAL ***
_________________________________________________________ -->
        <!-- *** LOGIN MODAL END *** -->
        <section>
            <!-- *** HOMEPAGE CAROUSEL ***
 _________________________________________________________ -->
        <?php require "View/slider.php"?>   

            <!-- *** HOMEPAGE CAROUSEL END *** -->
        </section>

        <section class="bar background-white">
        <?php require "View/camket.php"?>
        </section>

        <div class="container">
        <div class="heading text-center"> <h2>SẢN PHẨM MỚI</h2> </div>	
            <?php 
            $listSP = $dt-> SanPhamMoi(18); 
            require "listsp.php"; 
            ?>
        </div>

        <!-- /.bar -->

        <section class="bar background-image-fixed-2 no-mb color-white text-center">
            <div class="dark-mask"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="icon icon-lg"><i class="fa fa-file-code-o"></i>
                        </div>
                        <h3 class="text-uppercase">BẠN CÓ MUỐN TRẢI NGHIỆM DÙNG THỬ TRÒ CHƠI MỚI?</h3>
                        <p class="lead">Chúng tôi chờ đợi bạn, chào mừng đến với cửa hàng và thử nghiệm các sản phẩm mới nhất hoàn toàn miễn phí trong 7 ngày.</p>
                        <p class="text-center">
                            <a href="#" class="btn btn-template-transparent-black btn-lg">Liên hệ với chúng tôi</a>
                        </p>
                    </div>

                </div>
            </div>
        </section>

        <section class="bar background-white no-mb">
            <?php require "View/blog.php"?>
            <!-- /.container -->
        </section>
        <!-- /.bar -->

        <section class="bar background-gray no-mb">
            <div class="container">
            </div>
        </section>


        <!-- *** GET IT ***
_________________________________________________________ -->

      

        <!-- *** GET IT END *** -->


        <!-- *** FOOTER ***
_________________________________________________________ -->

        <?php require "View/footer.php"?>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->

        <!-- *** COPYRIGHT ***
_________________________________________________________ -->
        <!-- /#copyright -->

        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->

    <!-- #### JAVASCRIPT FILES ### -->

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')
    </script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="js/front.js"></script>

    

    <!-- owl carousel -->
    <script src="js/owl.carousel.min.js"></script>



</body>

</html>