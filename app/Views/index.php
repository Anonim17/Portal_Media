<?= $this->extend('templateHome'); ?>
<?= $this->section('content'); ?>

<!-- <main onload="javascript:readKateogriNews(0)"> -->

<main>
    
    <!-- Trending Area Start -->
    <div class="trending-area fix">
        <div class="container">
            <div class="trending-main">
                <!-- Trending Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="trending-tittle">
                            <strong>Trending now</strong>
                            <!-- <p>Rem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
                            <div class="trending-animated">
                                <ul id="js-news" class="js-hidden">
                                    <?php foreach ($beritaTrending as $data) {
                                        echo '<li class="news-item">' . $data['artikel']['news_judul'] . '</li>';
                                    }
                                    ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php
                    echo '<div class="col-lg-9">';
                    // <!-- Trending Top -->
                    foreach (array_slice($beritaTrending, 0, 1) as $data) {
                        echo '<div class="trending-top mb-30">
                            <div class="trend-top-img">
                            <img src=' . base_url($data['artikel']['news_gambar']) . ' alt="" class="img-fluid">
                                <div class="trend-top-cap">
                                    <span>' . $data['kategori']['kategori_nama'] . '</span>
                                    <h2><a href=' . base_url("/" . $data['artikel']['link'] . "/?" . $data['artikel']['news_judul']) . '>' . $data['artikel']['news_judul'] . '</a></h2>
                                </div>
                            </div>
                        </div>';
                    }
                    // <!-- Trending Bottom -->
                    echo '<div class="trending-bottom">
                            <div class="row">';
                    foreach (array_slice($beritaTrending, 1, 3) as $data) {
                        echo '<div class="col-lg-4">
                                    <div class="single-bottom mb-35">
                                        <div class="trend-bottom-img mb-30">
                                            <div class="image-bottom-trending d-none d-md-block">
                                                <a href=' . base_url("/" . $data['artikel']['link']) . '>
                                                        <img src=' . base_url($data['artikel']['news_gambar']) . ' alt="" class="img-fluid">
                                                </a>
                                            </div>
                                            <div class="d-block d-md-none">
                                                <a href=' . base_url("/" . $data['artikel']['link']) . '>
                                                        <img src=' . base_url($data['artikel']['news_gambar']) . ' alt="" class="img-fluid">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="trend-bottom-cap">
                                            <span class="color1">' . $data['kategori']['kategori_nama'] . '</span>
                                            <h4><a href=' . base_url("/" . $data['artikel']['link']) . '>' . $data['artikel']['news_judul'] . '</a></h4>
                                        </div>
                                    </div>
                                </div>';
                    }
                    echo '</div>
                        </div>
                    </div>';


                    // Right content
                    echo '<div class="col-lg-3">';
                    foreach (array_slice($beritaTrending, 4, 5) as $data) {
                        echo '<div class="trand-right-single d-flex">
                                <div class="trand-right-img">
                                    <div class="image-right-trending">
                                        <a href="' . base_url("/" . $data['artikel']['link']) . '">
                                            <img src=' . base_url($data['artikel']['news_gambar']) . ' alt="" class="img-fluid"></img>
                                        </a>
                                    </div>
                                </div>
                                <div class="trand-right-cap">
                                    <span class="color2">' . $data['kategori']['kategori_nama'] . '</span>
                                    <h4><a href="#">' . $data['artikel']['news_judul'] . '</a></h4>
                                </div>
                            </div>';
                    }
                    echo '</div>';
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!-- Trending Area End -->
  	<section class="whats-news-area">
        <div class="container">
            <div class="row">
                <img src="<?= base_url("assets/iklan/idul adha smp grogol.jpg") ?>" alt="" class="img-fluid" style="margin-top: 25px; margin-bottom: 25px;">
            </div>
        </div>
    </section>
    <!--   Weekly-News start -->
    <div class="weekly-news-area pt-50">
        <div class="container">
            <div class="weekly-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Weekly Top News</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="weekly-news-active dot-style d-flex dot-style">
                            <?php foreach (array_slice($beritaMingguan, 0, 6) as $data) : ?>
                                <div class="weekly-single weekly-content">
                                    <div class="weekly-img">
                                        <a href="<?= base_url('/' . $data['link']); ?>">
                                            <img src="<?= base_url($data['news_gambar']) ?>" alt="">
                                        </a>
                                    </div>
                                    <div class="weekly-caption">
                                        <span class="color1"><?= $data['kategori_nama'] ?></span>
                                        <h4><a href="<?= base_url('/' . $data['link']) ?>"><?= $data['news_judul'] ?></a></h4>
                                    </div>
                                </div>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Weekly-News -->
    <!-- Whats New Start -->
    <section class="whats-news-area pt-50 pb-20" id="kategori-news">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row d-flex justify-content-between">
                        <div class="col-lg-3 col-md-3">
                            <div class="section-tittle mb-30">
                                <h3>Whats New</h3>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-9">
                            <div id="navMenu">
                                <div id="navMenu-wrapper">
                                    <ul id="navMenu-items">
                                        <div id="menuSelector"></div>
                                        <li class="navMenu-item on"> <a href="javascript:kategoriSelected(<?= $dataNewsKategori[0]['id_kategori'] ?>)"><?= $dataNewsKategori[0]['kategori_nama'] ?></a> </li>
                                        <?php
                                        foreach (array_slice($dataNewsKategori, 1) as $dataKategori) {
                                            // dd (base_url("getkategori/1"));
                                            echo '<li class="navMenu-item"> <a href="javascript:kategoriSelected(' . $dataKategori['id_kategori'] . ')">' . $dataKategori['kategori_nama'] . '</a> </li>';
                                        }
                                        ?>
                                    </ul>
                                    <div class="navMenu-paddles">
                                        <button class="navMenu-paddle-left icon-chevronleft" aria-hidden="true"> </button>
                                        <button class="navMenu-paddle-right icon-chevronright" aria-hidden="true"> </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <!-- Nav Card -->
                            <div class="tab-content" id="nav-tabContent">
                                <!-- card Kategori -->
                                <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="whats-news-caption">
                                        <div class="row" id="konten-kategori">
                                            <!-- Konten Kategori terpilih menggunakan JS -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Nav Card -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <!-- Section Tittle -->
                    <div class="section-tittle mb-40">
                        <h3>Follow Us</h3>
                    </div>
                    <!-- Flow Socail -->
                    <div class="single-follow mb-45">
                        <div class="single-box">
                            <div class="follow-us d-flex align-items-center">
                                <div class="follow-social">
                                    <a href="#"><img src="<?= base_url("assets/img//icon-fb.png") ?>" alt=""></a>
                                </div>
                                <div class="follow-count">
                                    <span>8,045</span>
                                    <p>Fans</p>
                                </div>
                            </div>
                            <div class="follow-us d-flex align-items-center">
                                <div class="follow-social">
                                    <a href="#"><img src="<?= base_url("assets/img//icon-tw.png") ?>" alt=""></a>
                                </div>
                                <div class="follow-count">
                                    <span>8,045</span>
                                    <p>Fans</p>
                                </div>
                            </div>
                            <div class="follow-us d-flex align-items-center">
                                <div class="follow-social">
                                    <a href="#"><img src="<?= base_url("assets/img//icon-ins.png") ?>" alt=""></a>
                                </div>
                                <div class="follow-count">
                                    <span>8,045</span>
                                    <p>Fans</p>
                                </div>
                            </div>
                            <div class="follow-us d-flex align-items-center">
                                <div class="follow-social">
                                    <a href="#"><img src="<?= base_url("assets/img//icon-yo.png") ?>" alt=""></a>
                                </div>
                                <div class="follow-count">
                                    <span>8,045</span>
                                    <p>Fans</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- New Poster -->
                    <div class="news-poster">

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Whats New End -->
    <!--   Weekly2-News start -->
    <div class="weekly2-news-area  weekly2-pading gray-bg">
        <div class="container">
            <div class="weekly2-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Weekly Top News</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="weekly2-news-active dot-style d-flex dot-style">
                            <?php foreach ($beritaTrendingMingguan as $data) :
                                $date = strtotime((string) $data['created_at']);
                            ?>
                                <div class="weekly2-single">
                                    <div class="weekly2-img">
                                        <a href="<?= base_url('/' . $data['link']); ?>">
                                            <img src="<?= base_url($data['news_gambar']) ?>" alt="">
                                        </a>
                                    </div>
                                    <div class="weekly2-caption">
                                        <span class="color1"><?= $data['kategori_nama'] ?></span>
                                        <p><?= date("d M Y", $date); ?></p>
                                        <h4><a href="<?= base_url('/' . $data['link']); ?>"><?= $data['news_judul'] ?></a></h4>
                                    </div>
                                </div>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Weekly-News -->
    <!-- Start Youtube -->
    <!-- <div class="youtube-area video-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="video-items-active">
                        <div class="video-items text-center">
                            <iframe src="https://www.youtube.com/embed/CicQIuG8hBo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <div class="video-items text-center">
                            <iframe src="https://www.youtube.com/embed/rIz00N40bag" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <div class="video-items text-center">
                            <iframe src="https://www.youtube.com/embed/CONfhrASy44" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                        </div>
                        <div class="video-items text-center">
                            <iframe src="https://www.youtube.com/embed/lq6fL2ROWf8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                        </div>
                        <div class="video-items text-center">
                            <iframe src="https://www.youtube.com/embed/0VxlQlacWV4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <div class="video-info">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="video-caption">
                            <div class="top-caption">
                                <span class="color1">Politics</span>
                            </div>
                            <div class="bottom-caption">
                                <h2>Welcome To The Best Model Winner Contest At Look of the year</h2>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod ipsum dolor sit. Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod ipsum dolor sit. Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod ipsum dolor sit lorem ipsum dolor sit.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testmonial-nav text-center">
                            <div class="single-video">
                                <iframe src="https://www.youtube.com/embed/CicQIuG8hBo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="video-intro">
                                    <h4>Welcotme To The Best Model Winner Contest</h4>
                                </div>
                            </div>
                            <div class="single-video">
                                <iframe src="https://www.youtube.com/embed/rIz00N40bag" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="video-intro">
                                    <h4>Welcotme To The Best Model Winner Contest</h4>
                                </div>
                            </div>
                            <div class="single-video">
                                <iframe src="https://www.youtube.com/embed/CONfhrASy44" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="video-intro">
                                    <h4>Welcotme To The Best Model Winner Contest</h4>
                                </div>
                            </div>
                            <div class="single-video">
                                <iframe src="https://www.youtube.com/embed/lq6fL2ROWf8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="video-intro">
                                    <h4>Welcotme To The Best Model Winner Contest</h4>
                                </div>
                            </div>
                            <div class="single-video">
                                <iframe src="https://www.youtube.com/embed/0VxlQlacWV4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="video-intro">
                                    <h4>Welcotme To The Best Model Winner Contest</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- End Start youtube -->

    <!--  Recent Articles start -->
    <div class="recent-articles">
        <div class="container">
            <div class="recent-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Recent Articles</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="recent-active dot-style d-flex dot-style">
                            <?php foreach ($beritaTerkini as $data) : ?>
                                <div class="single-recent mb-100">
                                    <a href="<?= base_url('/' . $data['link']); ?>">
                                        <div class="what-img">
                                            <img src="<?= base_url($data['news_gambar']) ?>" alt="">
                                        </div>
                                    </a>
                                    <div class="what-cap">
                                        <span class="color1"><?= $data['kategori_nama']; ?></span>
                                        <h4><a href="<?= base_url('/' . $data['link']); ?>"><?= $data['news_judul'] ?></a></h4>
                                    </div>
                                </div>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Recent Articles End -->
    <!--Start pagination -->
    <!-- <div class="pagination-area pb-45 text-center">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="single-wrap d-flex justify-content-center">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-start">
                                <li class="page-item"><a class="page-link" href="#"><span class="flaticon-arrow roted"></span></a></li>
                                <li class="page-item"><a class="page-link" href="#">01</a></li>
                                <li class="page-item"><a class="page-link" href="#">02</a></li>
                                <li class="page-item"><a class="page-link" href="#">03</a></li>
                                <li class="page-item"><a class="page-link" href="#"><span class="flaticon-arrow right-arrow"></span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- End pagination  -->
</main>
<!-- <script type="text/javascript">
    window.onload = readKateogriNews(0);
</script> -->

<?= $this->endSection(); ?>