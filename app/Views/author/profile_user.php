<?= $this->extend('author/templateAuthor'); ?>
<?= $this->section('content'); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Content Row -->
    <div class="row">

        <div class="col-lg-12 mb-12">

            <!-- Approach -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Profile</h6>
                </div>
                <div class="card" style="margin: 20px 20px 20px 20px;">
                    <?php 
                        if(user()->image == null) {
                            $images_file = '/assets/author/img/undraw_profile.svg';
                        }else{
                            $images_file = user()->image;
                        }
                    ?>
                    <img class="card-img-top center" src="<?=base_url($images_file)?>" alt="Card image cap" style="width: 400px; display: block; margin-left: auto; margin-right: auto; margin-top: 20px;">
                    <div class="card-body">
                        <h5 class="card-title"><?=user()->fullname?></h5>
                        <p class="card-text"><?=user()->about?></p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Email : <span class="btn btn-primary"><?=user()->email?></span></li>
                        <li class="list-group-item">username : <span class="btn btn-success"><?=user()->username?></span></li>
                    </ul>
                    <div class="card-body">
                        <a href="<?= base_url('author/profile_setting');?>" class="card-link">Edit Profile</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?= $this->endSection(); ?>