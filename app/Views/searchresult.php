<?= $this->extend('template'); ?>
<?= $this->section('content'); ?>
<section class="blog_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-5 mb-lg-0">
                <div class="col-lg-5 col-md-5">
                    <div class="section-tittle mb-30">
                        <h3>Search Result....</h3>
                    </div>
                </div>
                <div class="blog_left_sidebar">
                    <?php
                    foreach ($searchResult as $data) :
                        $date = strtotime((string) $data['created_at']);
                    ?>

                        <article class="blog_item">
                            <div class="blog_item_img">
                                <a href='<?= base_url("/" . $data['link']); ?>'>
                                    <img class="card-img rounded-0" src='<?= base_url($data['news_gambar']); ?>' alt=""></a>
                                <a href='<?= base_url("/" . $data['link']); ?>' class="blog_item_date">
                                    <h3><?= date("d", $date); ?></h3>
                                    <p><?= date("M", $date); ?></p>
                                </a>
                            </div>
                            <div class="blog_details">
                                <a class="d-inline-block" href="<?= base_url("/" . $data['link']); ?>">
                                    <h2><?= $data['news_judul']; ?></h2>
                                </a>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="fa fa-user"></i><?= $data['kategori_nama']; ?></a></li>
                                    <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
                                </ul>
                            </div>
                        </article>
                    <?php endforeach ?>

                    <nav class="blog-pagination justify-content-center d-flex">
                        <ul class="pagination">
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Previous">
                                    <i class="ti-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link">1</a>
                            </li>
                            <li class="page-item">
                                <a href="#" class="page-link" aria-label="Next">
                                    <i class="ti-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget search_widget">
                        <form action="<?=base_url('latest_news/searchresult/');?>">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="keyword" placeholder='Search Keyword' onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'">
                                    <div class="input-group-append">
                                        <button class="btns" type="button"><i class="ti-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit">Search</button>
                        </form>
                    </aside>

                    <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title">Category</h4>
                        <ul class="list cat-list">
                            <?php foreach ($kategori as $data) : ?>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p><?= $data['kategori_nama']; ?></p>
                                        <!-- <p>(37)</p> -->
                                    </a>
                                </li>

                            <?php endforeach ?>
                        </ul>
                    </aside>

                    <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title">Recent Post</h3>
                        <?php foreach (array_slice($beritaTerkini, 0, 4) as $data) :
                            $date = strtotime((string) $data['artikel']['created_at']);
                        ?>

                            <div class="media post_item">
                                <a href="<?= base_url('/' . $data['artikel']['link']) ?>">
                                    <img src="<?= base_url($data['artikel']['news_gambar']) ?>" alt="post" width="90" height="90">
                                </a>
                                <div class="media-body">
                                    <a href="<?= base_url('/' . $data['artikel']['link']) ?>">
                                        <h3><?= $data['artikel']['news_judul'] ?></h3>
                                    </a>
                                    <p><?= date("d M Y", $date); ?></p>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </aside>
                    <aside class="single_sidebar_widget tag_cloud_widget">
                        <h4 class="widget_title">Tag Clouds</h4>
                        <ul class="list">
                            <li>
                                <a href="#">project</a>
                            </li>
                            <li>
                                <a href="#">love</a>
                            </li>
                            <li>
                                <a href="#">technology</a>
                            </li>
                            <li>
                                <a href="#">travel</a>
                            </li>
                            <li>
                                <a href="#">restaurant</a>
                            </li>
                            <li>
                                <a href="#">life style</a>
                            </li>
                            <li>
                                <a href="#">design</a>
                            </li>
                            <li>
                                <a href="#">illustration</a>
                            </li>
                        </ul>
                    </aside>


                    <aside class="single_sidebar_widget instagram_feeds">
                        <h4 class="widget_title">Instagram Feeds</h4>
                        <ul class="instagram_row flex-wrap">
                            <li>
                                <a href="#">
                                    <img class="img-fluid" src="assets/img/post/post_5.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img class="img-fluid" src="assets/img/post/post_6.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img class="img-fluid" src="assets/img/post/post_7.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img class="img-fluid" src="assets/img/post/post_8.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img class="img-fluid" src="assets/img/post/post_9.png" alt="">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img class="img-fluid" src="assets/img/post/post_10.png" alt="">
                                </a>
                            </li>
                        </ul>
                    </aside>

                    <aside class="single_sidebar_widget newsletter_widget">
                        <h4 class="widget_title">Newsletter</h4>

                        <form action="#">
                            <div class="form-group">
                                <input type="email" class="form-control" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required>
                            </div>
                            <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit">Subscribe</button>
                        </form>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<?= $this->endSection(); ?>