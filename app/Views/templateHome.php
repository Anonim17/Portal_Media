<!DOCTYPE html>
<html lang="id-ID">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <meta name="description" content="<?= $description; ?>">
    <meta name="robots" content="follow, index">
    <link rel="canonical" href="<? $link ?>">
    <link rel="next" href="<?= $link; ?>">
    <meta property="og:locale" content="id_ID">
    <meta property="og:type" content="website">
    <meta property="og:title" content="<?= $title; ?>">
    <meta property="og:description" content="<?= $description; ?>">
    <meta property="og:url" content="<?= $link; ?>">
    <meta property="og:site_name" content="Portal Merah">
    <!-- <meta property="fb:app_id" content="966242223397117"> -->
    <meta property="og:image" content="<?= $image; ?>">
    <meta property="og:image:secure_url" content="<?= $image; ?>">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta property="og:image:type" content="<?= $imageType; ?>">
    <!-- <meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Gerak News - Aktual, Tajam, Terpercaya">
<meta name="twitter:description" content="Geraknews.com – Berita Terkini, Kabar Terbaru Indonesia. Situs Terpercaya, Berani Mengungkap Fakta dari Hukum, Kriminal, Politik hingga Pemerintahan.">
<meta name="twitter:image" content="https://geraknews.com/wp-content/uploads/2022/04/berani-mengungkap-fakta-1200-×-630-piksel.png"> -->

    <!-- Custom fonts for this template-->
    <link href="<?= base_url('/vendor/fontawesome-free/css/all.min.css'); ?>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Custom styles for this template-->
    <link href="<?= base_url('/css/sb-admin-2.min.css'); ?>" rel="stylesheet">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href=<?= base_url('/assets/img/favicon.png'); ?> ">

<!-- Syntax Highlighter -->
<link rel=" stylesheet" type="text/css" href="<?= base_url('/syntax-highlighter/styles/shCore.css'); ?>" media="all">
    <link rel="stylesheet" type="text/css" href="<?= base_url('/syntax-highlighter/styles/shThemeDefault.css'); ?>" media="all">

    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="<?= base_url('/assets/css/font-awesome.min.css'); ?>">
    <!-- Normalize/Reset CSS-->
    <link rel="stylesheet" href="<?= base_url('/assets/css/normalize.min.css'); ?>">
    <!-- Main CSS-->
    <link rel="stylesheet" href="<?= base_url('/assets/css/main.css'); ?>">

    <!-- CSS here home -->
    <link rel="stylesheet" href="<?= base_url('/assets/css/bootstrap.min.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/owl.carousel.min.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/ticker-style.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/flaticon.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/slicknav.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/animate.min.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/magnific-popup.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/fontawesome-all.min.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/themify-icons.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/slick.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/nice-select.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/style.css'); ?>">
    <link rel="stylesheet" href="<?= base_url('/assets/css/responsive.css'); ?>">
</head>

<body class="bg-gradient-primary" onload="kategoriSelected(1); kategoriSelectedMain(1);">
    <!-- Preloader Start -->
    <!-- <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div> -->
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header ">
                <div class="header-top black-bg d-none d-md-block">
                    <div class="container">
                        <div class="col-xl-12">
                            <div class="row d-flex justify-content-between align-items-center">
                                <div class="header-info-left">
                                    <ul>
                                        <li><img src="<?= base_url('/assets/img/icon/header_icon1.png'); ?>" alt="">34ºc, Sunny </li>
                                        <li><img src="<?= base_url('/assets/img/icon/header_icon1.png'); ?>" alt="">Tuesday, 18th June, 2019</li>
                                    </ul>
                                </div>
                                <div class="header-info-right">
                                    <ul class="header-social">
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header-mid d-none d-md-block">
                    <div class="container">
                        <div class="row d-flex align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-5 col-lg-5 col-md-5">
                                <div class="logo">
                                    <a href="/index"><img src="<?= base_url('/assets/img/logo.png'); ?>" alt="" class="img-fluid"></a>
                                </div>
                            </div>
                            <!-- <div class="col-xl-9 col-lg-9 col-md-6">
                                <div class="header-banner f-right ">
                                    <img src="/assets/img/hero/header_card.jpg" alt="">
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="header-bottom header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-10 col-lg-10 col-md-12 header-flex">
                                <!-- sticky -->
                                <script>
                                    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                                        // true for mobile device
                                        document.write('<div class="sticky-logo">\
                                                            <a href="/index"><img src="<?= base_url('/assets/img/logo-smallv2.png'); ?>" alt="" class="img-fluid" style="margin-left: -35px; margin-top: -25px; margin-bottom: -25px;"></a>\
                                                        </div>');
                                    } else {
                                        // false for not mobile device
                                        document.write('<div class="sticky-logo">\
                                                            <a href="/index"><img src="<?= base_url('/assets/img/logo-smallv2.png'); ?>" alt="" class="img-fluid" style="width: 150px;"></a>\
                                                        </div>');
                                    }
                                </script>
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-md-block" style="margin-top: -15px; margin-bottom: -25px;">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="/index">Home</a></li>
                                            <li><a href="/categori">Category</a></li>
                                            <li><a href="/redaksi">Redaksi</a></li>
                                            <li><a href="/latest_news">Latest News</a></li>
                                            <li><a href="/contact">Contact</a></li>
                                            <li><a href="#">Term of Use</a>
                                                <ul class="submenu">
                                                    <li><a href="/termofuse/pedomanCyberMedia">Pedoman Media Siber</a></li>
                                                    <li><a href="/termofuse/kodeEtik">Kode Etik</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-2 col-md-2">
                                <div class="header-right-btn f-right d-none d-lg-block">
                                    <i class="fas fa-search special-tag"></i>
                                    <div class="search-box">
                                        <form action="<?= base_url('/latest_news/searchresult/'); ?>">
                                            <input type="text" name="keyword" placeholder="Search">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-md-none" style="margin-right: -29px; margin-top: 20px; margin-bottom: -25px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
	<div class="trending-area fix">
        <div class="container">
            <div class="trending-main">
                <div class="header-banner f-right ">
                    <img src="<?= base_url("assets/iklan/idul adha tarokan.jpg") ?>" alt="" class="img-fluid" style="margin-top: 25px; margin-bottom: 25px;">
                </div>
            </div>
        </div>
    </div>                                                                                                                                               
    <?= $this->renderSection('content'); ?>
    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding fix">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-5 col-lg-5 col-md-7 col-sm-12">
                        <div class="single-footer-caption">
                            <div class="single-footer-caption">
                                <!-- logo -->
                                <div class="footer-logo">
                                    <a href="<?= base_url('/index'); ?>"><img src="<?= base_url('/assets/img/logoputih.png'); ?>" class="img-fluid" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p></p>
                                    </div>
                                </div>
                                <!-- social -->
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-instagram"></i></a>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4  col-sm-6">
                        <div class="single-footer-caption mt-60">
                            <div class="footer-tittle">
                                <h4>Newsletter</h4>
                                <p>Anda dapat berlangganan redaksi kami dengan mengisikan email anda dibawah</p>
                                <!-- Form -->
                                <div class="footer-form">
                                    <div id="mc_embed_signup">
                                        <form target="_blank" action="#" method="get" class="subscribe_form relative mail_part">
                                            <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address" class="placeholder hide-on-focus" onfocus="this.placeholder = ''" onblur="this.placeholder = ' Email Address '">
                                            <div class="form-icon">
                                                <button type="submit" name="submit" id="newsletter-submit" class="email_icon newsletter-submit button-contactForm"><img src="assets/img/logo/form-iocn.png" alt=""></button>
                                            </div>
                                            <div class="mt-10 info"></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                        <!-- <div class="single-footer-caption mb-50 mt-60">
                            <div class="footer-tittle">
                                <h4>Instagram Feed</h4>
                            </div>
                            <div class="instagram-gellay">
                                <ul class="insta-feed">
                                    <li><a href="#"><img src="<?= base_url('assets/img/post/instra1.jpg'); ?>" alt=""></a></li>
                                    <li><a href="#"><img src="<?= base_url('assets/img/post/instra2.jpg'); ?>" alt=""></a></li>
                                    <li><a href="#"><img src="<?= base_url('assets/img/post/instra3.jpg'); ?>" alt=""></a></li>
                                    <li><a href="#"><img src="<?= base_url('assets/img/post/instra4.jpg'); ?>" alt=""></a></li>
                                    <li><a href="#"><img src="<?= base_url('assets/img/post/instra5.jpg'); ?>" alt=""></a></li>
                                    <li><a href="#"><img src="<?= base_url('assets/img/post/instra6.jpg'); ?>" alt=""></a></li>
                                </ul>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom aera -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center justify-content-between">
                        <div class="col-lg-6">
                            <div class="footer-copy-right">
                                <p>

                                </p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="footer-menu f-right">
                                <ul>
                                    <li><a href="<?= base_url('/termofuse/pedomanCyberMedia') ?>">Pedoman Media Siber</a></li>
                                    <li><a href="<?= base_url('/termofuse/kodeEtik') ?>">Kode Etik</a></li>
                                    <li><a href="<?= base_url('/contact') ?>">Kontak</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>

    <!-- JS here -->

    <!-- All JS Custom Plugins Link Here here -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="<?= base_url('/assets/js/vendor/modernizr-3.5.0.min.js'); ?>"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="<?= base_url('/assets/js/vendor/jquery-1.12.4.min.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/popper.min.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/bootstrap.min.js'); ?>"></script>
    <!-- Jquery Mobile Menu -->
    <script src="<?= base_url('/assets/js/jquery.slicknav.min.js'); ?>"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="<?= base_url('/assets/js/owl.carousel.min.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/slick.min.js'); ?>"></script>
    <!-- Date Picker -->
    <script src="<?= base_url('/assets/js/gijgo.min.js'); ?>"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="<?= base_url('/assets/js/wow.min.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/animated.headline.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/jquery.magnific-popup.js'); ?>"></script>

    <!-- Breaking New Pluging -->
    <script src="<?= base_url('/assets/js/jquery.ticker.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/site.js'); ?>"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="<?= base_url('/assets/js/jquery.scrollUp.min.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/jquery.nice-select.min.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/jquery.sticky.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/jquery.magnific-popup.js'); ?>"></script>

    <!-- contact js -->
    <script src="<?= base_url('/assets/js/contact.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/jquery.form.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/jquery.validate.min.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/mail-script.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/jquery.ajaxchimp.min.js'); ?>"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="<?= base_url('/assets/js/plugins.js'); ?>"></script>
    <script src="<?= base_url('/assets/js/main.js'); ?>"></script>

    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url('/vendor/jquery/jquery.min.js'); ?>"></script>
    <script src="<?= base_url('/vendor/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url('/vendor/jquery-easing/jquery.easing.min.js'); ?>"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url('/js/sb-admin-2.min.js'); ?>"></script>

    <!-- NAVBAR GESER -->

    <style>
        #navMenu {
            background: #f7f7f7;
            /* background: #222; */
            position: relative;
        }

        #navMenu #navMenu-wrapper {
            overflow: hidden;
            height: 40px;
            padding: 0 35px;
        }

        #navMenu-items {
            margin: 0px 1px;
            padding: 0px 0;
            list-style: none;
            white-space: nowrap;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
        }

        #menuSelector {
            position: relative;
            margin-left: 0px;
            top: 0px;
            width: 0;
            height: 0;
            border-left: 5px solid transparent;
            border-right: 5px solid transparent;
        }

        #navMenu ul li {
            display: inline-block;
            height: 60px;
            margin: 5px;
            box-shadow: 1px 0px 0px rgb(#f7f7f7) inset;
            border-left: 1px solid rgb(#f7f7f7);
        }

        #navMenu ul li a {
            color: #8f8fa2;
            padding: 0px 10px !important;
            line-height: 30px;
        }

        .icon-chevronleft {
            background-image: url(<?= base_url("/assets/img/icon/angle-left-solid.svg") ?>);
            background-repeat: no-repeat;
            background-size: 10px;
            object-position: center;
        }

        .icon-chevronright {
            background-image: url(<?= base_url("/assets/img/icon/angle-right-solid.svg") ?>);
            background-repeat: no-repeat;
            background-size: 10px;
        }

        .navMenu-paddle-left,
        .navMenu-paddle-right {
            cursor: pointer;
            border: none;
            position: absolute;
            top: 13px;
            background-color: transparent;
            width: 25px;
            height: 30px;
            margin-left: 5px;
            margin-right: 3px;
        }

        .slick-prev,
        .navMenu-paddle-left {
            left: 0;
        }

        .arrow {
            width: 0px;
            margin-left: auto;
            margin-right: auto;
        }

        .slick-next,
        .navMenu-paddle-right {
            right: 0;
        }

        .on {
            background-color: #666;
            color: #000 !important;
        }

        /* Other setting */
        .image-bottom-trending {
            /* object-fit: none; 
            object-position: center;  */
            /* width: 875px; */
            height: 200px;
        }

        .image-right-trending {
            /* object-fit: none; 
            object-position: center;  */
            width: 100px;
            /* height: 200px; */
        }
    </style>

    <script>
        $(function() {
            var items = $('#navMenu-items').width();

            var itemSelected = document.getElementsByClassName('navMenu-item');
            navPointerScroll($(itemSelected));
            $("#navMenu-items").scrollLeft(200).delay(200).animate({
                scrollLeft: "-=200"
            }, 2000, "easeOutQuad");

            $('.navMenu-paddle-right').click(function() {
                $("#navMenu-items").animate({
                    scrollLeft: '+=' + items
                });
            });
            $('.navMenu-paddle-left').click(function() {
                $("#navMenu-items").animate({
                    scrollLeft: "-=" + items
                });
            });

            if (!/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                var scrolling = false;

                $(".navMenu-paddle-right").bind("mouseover", function(event) {
                    scrolling = true;
                    scrollContent("right");
                }).bind("mouseout", function(event) {
                    scrolling = false;
                });

                $(".navMenu-paddle-left").bind("mouseover", function(event) {
                    scrolling = true;
                    scrollContent("left");
                }).bind("mouseout", function(event) {
                    scrolling = false;
                });

                function scrollContent(direction) {
                    var amount = (direction === "left" ? "-=3px" : "+=3px");
                    $("#navMenu-items").animate({
                        scrollLeft: amount
                    }, 1, function() {
                        if (scrolling) {
                            scrollContent(direction);
                        }
                    });
                }
            }

            $('.navMenu-item').click(function() {
                $('#navMenu').find('.on ').removeClass('on');
                $(this).addClass("on");
                navPointerScroll($(this));
            });
        });

        function navPointerScroll(ele) {
            var parentScroll = $("#navMenu-items").scrollLeft();
            var offset = ($(ele).offset().left - $('#navMenu-items').offset().left);
            var totalelement = offset + $(ele).outerWidth() / 2;

            var rt = (($(ele).offset().left) - ($('#navMenu-wrapper').offset().left) + ($(ele).outerWidth()) / 2);
            $('#menuSelector').animate({
                left: totalelement + parentScroll
            })
        }

        // Defining async function
        async function getKategori(url) {
            try {
                let res = await fetch(url);
                return await res.json();
            } catch (error) {
                console.log(error);
            }
        }

        async function renderKategori(url) {
            let response = await getKategori(url);
            let html = '';

            response.slice(0, 4).forEach(dataSelect => {
                let imgSrc = window.location.origin + '/' + dataSelect.dataArtikelTerpilih.news_gambar;
                let urlLink = window.location.origin + '/' + dataSelect.dataArtikelTerpilih.link;
                // alert(imgSrc);
                html += `<div class="col-lg-6 col-md-6">
                                            <div class="single-what-news mb-100">
                                                <div class="what-img">
                                                    <img src="${imgSrc}" alt="">
                                                </div>
                                                <div class="what-cap">
                                                    <span class="color1">${dataSelect.kategoriSelected.kategori_nama}</span>
                                                    <h4><a href="${urlLink}">${dataSelect.dataArtikelTerpilih.news_judul}</a></h4>
                                                </div>
                                            </div>
                                        </div>`;
            });
            // for await (dataSelect of data.list) {
            // }
            document.getElementById("konten-kategori").innerHTML = html;
        }

        async function renderKategoriMain(url) {
            let response = await getKategori(url);
            let html = '';

            let container = $('#pagination-kategori');
            container.pagination({
                dataSource: response,
                pageSize: 10,
                callback: function (data, pagination) {
                    var html = '';
                    $.each(data, function(index, item) {
                        // html += JSON.stringify(item);
                        let imgSrc = window.location.origin + '/' + item.dataArtikelTerpilih.news_gambar;
                        let urlLink = window.location.origin + '/' + item.dataArtikelTerpilih.link;
                        
                        html += `<div class="col-lg-6 col-md-6">
                                            <div class="single-what-news mb-100">
                                                <div class="what-img">
                                                    <img src="${imgSrc}" alt="">
                                                </div>
                                                <div class="what-cap">
                                                    <span class="color1">${item.kategoriSelected.kategori_nama}</span>
                                                    <h4><a href="${urlLink}">${item.dataArtikelTerpilih.news_judul}</a></h4>
                                                </div>
                                            </div>
                                        </div>`;
                    });
                    $("#konten-kategori-main").html(html);
                }
            })

            // response.forEach(dataSelect => {
                
            //     // alert(imgSrc);
            //     html += `<div class="col-lg-6 col-md-6">
            //                                 <div class="single-what-news mb-100">
            //                                     <div class="what-img">
            //                                         <img src="${imgSrc}" alt="">
            //                                     </div>
            //                                     <div class="what-cap">
            //                                         <span class="color1">${dataSelect.kategoriSelected.kategori_nama}</span>
            //                                         <h4><a href="${urlLink}">${dataSelect.dataArtikelTerpilih.news_judul}</a></h4>
            //                                     </div>
            //                                 </div>
            //                             </div>`;
            // });
            // for await (dataSelect of data.list) {
            // }
            // document.getElementById("konten-kategori-main").innerHTML = html;
        }

        function kategoriSelected(data) {
            let url = '<?= base_url("/apikategori") ?>' + '/' + data;
            // alert(url);
            renderKategori(url);
        }

        function kategoriSelectedMain(data) {
            let url = '<?= base_url("/apikategori") ?>' + '/' + data;
            // alert(url);
            renderKategoriMain(url);
        }
    </script>
    <script src="<?= base_url('/assets/js/jqueryui/1.11.4/jquery-ui.min.js'); ?>"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
</body>

</html>