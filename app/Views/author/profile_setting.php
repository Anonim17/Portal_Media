<?= $this->extend('author/templateAuthor'); ?>
<?= $this->section('content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <!-- <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div> -->

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-12">

            <!-- Approach -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Update Profile</h6>
                </div>
                <div class="card-body">
                    <form action="<?php echo base_url('saveprofile'); ?>" enctype="multipart&#x2F;form-data" method="post" accept-charset="utf-8">
                        <input type="hidden" name="id_user" value="<?= user_id() ?>">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" name="email" placeholder="Email User" value="<?= user()->email ?>">
                        </div>
                        <div class="form-group">
                            <label for="username">username</label>
                            <input type="text" class="form-control" name="username" placeholder="Username User" value="<?= user()->username ?>">
                        </div>
                        <div class="form-group">
                            <label for="fullname">Nama Lengkap</label>
                            <input type="text" class="form-control" name="fullname" placeholder="Nama Lengkap User" value="<?= user()->fullname ?>">
                        </div>
                        <div class="form-group">
                            <label for="news_gambar">Pilih Gambar</label>
                            <?php
                            if (user()->image == null) {
                                echo '<br><strong>Belum ada foto profile</strong>';
                            } else {
                                $images_file = user()->image;
                                echo '<img class="card-img-top center" src="<?= base_url($images_file) ?>" alt="Card image cap" style="width: 200px; display: block; margin-left: auto; margin-right: auto; margin-top: 20px;">';
                            }
                            ?>
                            <input type="file" class="form-control" name="news_gambar" placeholder="Pilih Gambar" value=""></input>
                        </div>
                        <div class="form-group">
                            <label for="about_author">Tentang Penulis</label>
                            <textarea class="form-control" id="news_konten" name="about_author" rows="5"><?= user()->about ?></textarea>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-success">Update Profile</button>
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