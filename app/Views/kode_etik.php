<?= $this->extend('template'); ?>
<?= $this->section('content'); ?>
<div class="about-area">
    <div class="container">
        <!-- Hot Aimated News Tittle-->
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
            <div class="col-lg-8">
                <!-- Trending Tittle -->
                <div class="entry-content entry-content-single" itemprop="text">
                    <p><strong>Kode Etik Jurnalistik</strong></p>
                    <p>Kemerdekaan berpendapat, berekspresi, dan pers adalah hak asasi manusia yang dilindungi Pancasila, Undang-Undang Dasar 1945, dan Deklarasi Universal Hak Asasi Manusia PBB. Kemerdekaan pers adalah sarana masyarakat untuk memperoleh informasi dan berkomunikasi, guna memenuhi kebutuhan hakiki dan meningkatkan kualitas kehidupan manusia. Dalam mewujudkan kemerdekaan pers itu, wartawan Indonesia juga menyadari adanya kepentingan bangsa, tanggung jawab sosial, keberagaman masyarakat, dan norma-norma agama.</p>
                    <p>Dalam melaksanakan fungsi, hak, kewajiban dan peranannya, pers menghormati hak asasi setiap orang, karena itu pers dituntut profesional dan terbuka untuk dikontrol oleh masyarakat.</p>
                    <p>Untuk menjamin kemerdekaan pers dan memenuhi hak publik untuk memperoleh informasi yang benar, wartawan Indonesia memerlukan landasan moral dan etika profesi sebagai pedoman operasional dalam menjaga kepercayaan publik dan menegakkan integritas serta profesionalisme. Atas dasar itu, wartawan Indonesia menetapkan dan menaati Kode Etik Jurnalistik:</p>
                    <p>Pasal 1</p>
                    <p>Wartawan Indonesia bersikap independen, menghasilkan berita yang akurat, berimbang, dan tidak beritikad buruk.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Independen berarti memberitakan peristiwa atau fakta sesuai dengan suara hati nurani tanpa campur tangan, paksaan, dan intervensi dari pihak lain termasuk pemilik perusahaan pers.</li>
                        <li>Akurat berarti dipercaya benar sesuai keadaan objektif ketika peristiwa terjadi.</li>
                        <li>Berimbang berarti semua pihak mendapat kesempatan setara.</li>
                        <li>Tidak beritikad buruk berarti tidak ada niat secara sengaja dan semata-mata untuk menimbulkan kerugian pihak lain.</li>
                    </ol>
                    <p>Pasal 2</p>
                    <p>Wartawan Indonesia menempuh cara-cara yang profesional dalam melaksanakan tugas jurnalistik.</p>
                    <p>Penafsiran</p>
                    <p>Cara-cara yang profesional adalah:</p>
                    <ol>
                        <li>menunjukkan identitas diri kepada narasumber;</li>
                        <li>menghormati hak privasi;</li>
                        <li>tidak menyuap;</li>
                        <li>menghasilkan berita yang faktual dan jelas sumbernya;</li>
                        <li>rekayasa pengambilan dan pemuatan atau penyiaran gambar, foto, suara dilengkapi dengan keterangan tentang sumber dan ditampilkan secara berimbang;</li>
                        <li>menghormati pengalaman traumatik narasumber dalam penyajian gambar, foto, suara;</li>
                        <li>tidak melakukan plagiat, termasuk menyatakan hasil liputan wartawan lain sebagai karya sendiri;</li>
                        <li>penggunaan cara-cara tertentu dapat dipertimbangkan untuk peliputan berita investigasi bagi kepentingan publik.</li>
                    </ol>
                    <p>Pasal 3</p>
                    <p>Wartawan Indonesia selalu menguji informasi, memberitakan secara berimbang, tidak mencampurkan fakta dan opini yang menghakimi, serta menerapkan asas praduga tak bersalah.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Menguji informasi berarti melakukan check and recheck tentang kebenaran informasi itu.</li>
                        <li>Berimbang adalah memberikan ruang atau waktu pemberitaan kepada masing-masing pihak secara proporsional.</li>
                        <li>Opini yang menghakimi adalah pendapat pribadi wartawan. Hal ini berbeda dengan opini interpretatif, yaitu pendapat yang berupa interpretasi wartawan atas fakta.</li>
                        <li>Asas praduga tak bersalah adalah prinsip tidak menghakimi seseorang.</li>
                    </ol>
                    <p>Pasal 4</p>
                    <p>Wartawan Indonesia tidak membuat berita bohong, fitnah, sadis, dan cabul.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Bohong berarti sesuatu yang sudah diketahui sebelumnya oleh wartawan sebagai hal yang tidak sesuai dengan fakta yang terjadi.</li>
                        <li>Fitnah berarti tuduhan tanpa dasar yang dilakukan secara sengaja dengan niat buruk.</li>
                        <li>Sadis berarti kejam dan tidak mengenal belas kasihan.</li>
                        <li>Cabul berarti penggambaran tingkah laku secara erotis dengan foto, gambar, suara, grafis atau tulisan yang semata-mata untuk membangkitkan nafsu birahi.</li>
                        <li>Dalam penyiaran gambar dan suara dari arsip, wartawan mencantumkan waktu pengambilan gambar dan suara.</li>
                    </ol>
                    <p>Pasal 5</p>
                    <p>Wartawan Indonesia tidak menyebutkan dan menyiarkan identitas korban kejahatan susila dan tidak menyebutkan identitas anak yang menjadi pelaku kejahatan.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Identitas adalah semua data dan informasi yang menyangkut diri seseorang yang memudahkan orang lain untuk melacak.</li>
                        <li>Anak adalah seorang yang berusia kurang dari 16 tahun dan belum menikah.</li>
                    </ol>
                    <p>Pasal 6</p>
                    <p>Wartawan Indonesia tidak menyalahgunakan profesi dan tidak menerima suap.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Menyalahgunakan profesi adalah segala tindakan yang mengambil keuntungan pribadi atas informasi yang diperoleh saat bertugas sebelum informasi tersebut menjadi pengetahuan umum.</li>
                        <li>Suap adalah segala pemberian dalam bentuk uang, benda atau fasilitas dari pihak lain yang mempengaruhi independensi.</li>
                    </ol>
                    <p>Pasal 7</p>
                    <p>Wartawan Indonesia memiliki hak tolak untuk melindungi narasumber yang tidak bersedia diketahui identitas maupun keberadaannya, menghargai ketentuan embargo, informasi latar belakang, dan off the record sesuai dengan kesepakatan.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Hak tolak adalak hak untuk tidak mengungkapkan identitas dan keberadaan narasumber demi keamanan narasumber dan keluarganya.</li>
                        <li>Embargo adalah penundaan pemuatan atau penyiaran berita sesuai dengan permintaan narasumber.</li>
                        <li>Informasi latar belakang adalah segala informasi atau data dari narasumber yang disiarkan atau diberitakan tanpa menyebutkan narasumbernya.</li>
                        <li>Off the record adalah segala informasi atau data dari narasumber yang tidak boleh disiarkan atau diberitakan.</li>
                    </ol>
                    <p>Pasal 8</p>
                    <p>Wartawan Indonesia tidak menulis atau menyiarkan berita berdasarkan prasangka atau diskriminasi terhadap seseorang atas dasar perbedaan suku, ras, warna kulit, agama, jenis kelamin, dan bahasa serta tidak merendahkan martabat orang lemah, miskin, sakit, cacat jiwa atau cacat jasmani.</p>
                    <p>Penafsiran</p>
                    <div id="hwnews_mobile_middle2">
                        <div id="" class="tpm_attribution"></div>
                    </div>
                    <ol>
                        <li>Prasangka adalah anggapan yang kurang baik mengenai sesuatu sebelum mengetahui secara jelas.</li>
                        <li>Diskriminasi adalah pembedaan perlakuan.</li>
                    </ol>
                    <p>Pasal 9</p>
                    <p>Wartawan Indonesia menghormati hak narasumber tentang kehidupan pribadinya, kecuali untuk kepentingan publik.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Menghormati hak narasumber adalah sikap menahan diri dan berhati-hati.</li>
                        <li>Kehidupan pribadi adalah segala segi kehidupan seseorang dan keluarganya selain yang terkait dengan kepentingan publik.</li>
                    </ol>
                    <p>Pasal 10</p>
                    <p>Wartawan Indonesia segera mencabut, meralat, dan memperbaiki berita yang keliru dan tidak akurat disertai dengan permintaan maaf kepada pembaca, pendengar, dan atau pemirsa.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Segera berarti tindakan dalam waktu secepat mungkin, baik karena ada maupun tidak ada teguran dari pihak luar.</li>
                        <li>Permintaan maaf disampaikan apabila kesalahan terkait dengan substansi pokok.</li>
                    </ol>
                    <p>Pasal 11</p>
                    <p>Wartawan Indonesia melayani hak jawab dan hak koreksi secara proporsional.</p>
                    <p>Penafsiran</p>
                    <ol>
                        <li>Hak jawab adalah hak seseorang atau sekelompok orang untuk memberikan tanggapan atau sanggahan terhadap pemberitaan berupa fakta yang merugikan nama baiknya.</li>
                        <li>Hak koreksi adalah hak setiap orang untuk membetulkan kekeliruan informasi yang diberitakan oleh pers, baik tentang dirinya maupun tentang orang lain.</li>
                        <li>Proporsional berarti setara dengan bagian berita yang perlu diperbaiki.</li>
                    </ol>
                    <p>Penilaian akhir atas pelanggaran kode etik jurnalistik dilakukan Dewan Pers. Sanksi atas pelanggaran kode etik jurnalistik dilakukan oleh organisasi wartawan dan atau perusahaan pers.</p>
                    <p>Jakarta, Selasa, 14 Maret 2006</p>
                    <p>(Kode Etik Jurnalistik ditetapkan Dewan Pers melalui Peraturan Dewan Pers Nomor: 6/Peraturan-DP/V/2008 Tentang Pengesahan Surat Keputusan Dewan Pers Nomor 03/SK-DP/III/2006 tentang Kode Etik Jurnalistik Sebagai Peraturan Dewan Pers)</p>
                </div>
                <!-- From -->
                <div class="row">
                    <div class="col-lg-8">
                        <form class="form-contact contact_form mb-80" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control w-100 error" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder="Enter Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control error" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control error" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control error" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Send</button>
                            </div>
                        </form>
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
                                <a href="#"><img src="assets/img/news/icon-fb.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="assets/img/news/icon-tw.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="assets/img/news/icon-ins.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                        <div class="follow-us d-flex align-items-center">
                            <div class="follow-social">
                                <a href="#"><img src="assets/img/news/icon-yo.png" alt=""></a>
                            </div>
                            <div class="follow-count">
                                <span>8,045</span>
                                <p>Fans</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- New Poster -->
                <!-- <div class="news-poster d-none d-lg-block">
                    <img src="assets/img/news/news_card.jpg" alt="">
                </div> -->
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>