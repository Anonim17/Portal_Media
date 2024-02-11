<?= $this->extend('author/templateAuthor'); ?>
<?= $this->section('content'); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-12">

            <!-- Approach -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Membuat Artikel</h6>
                </div>
                <div class="card-body">
                    <form action="<?php echo base_url('saveartikel'); ?>" enctype="multipart&#x2F;form-data" method="post" accept-charset="utf-8">
                        <div class="form-group">
                            <label for="news_judul">Judul Artikel</label>
                            <input type="text" class="form-control" id="news_judul" name="news_judul" placeholder="Tulis Judul Disini">
                        </div>
                        <div class="form-group">
                            <label for="news_gambar">Pilih Gambar</label>
                            <input type="file" class="form-control" id="news_gambar" name="news_gambar" placeholder="Pilih Gambar"></input>
                        </div>
                        <div class="form-group">
                            <label for="id_kategori">Kategori Berita</label>
                            <select multiple class="form-control" id="id_kategori" name="id_kategori">
                                <?php
                                foreach ($dataNewsKategori as $data) :
                                    echo "<option value=" . $data['id_kategori'] . ">" . $data['kategori_nama'] . "</option>";
                                endforeach;
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="news_konten">Tulis Isi Artikel</label>
                            <textarea class="form-control" id="news_konten" name="news_konten" rows="5"></textarea>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-success">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?= $this->endSection(); ?>