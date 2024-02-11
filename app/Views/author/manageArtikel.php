<?= $this->extend('author/templateAuthor'); ?>
<?= $this->section('content'); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Manage Artikel</h1>
    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
        For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nama Artikel</th>
                            <th>Gambar</th>
                            <th>Kategori</th>
                            <th>Views</th>
                            <th>Dibuat</th>
                            <th>Diupdate</th>
                            <th>Status Berita</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            foreach ($dataArtikel as $data) {
                                $created = strtotime((string) $data['artikel']['created_at']);
                                $updated = strtotime((string) $data['artikel']['updated_at']);
                                echo '<tr>
                                <td>'.$data["artikel"]["news_judul"].'</td>
                                <td><img src='.base_url($data["artikel"]["news_gambar"]).' width="100"></td>
                                <td>'.$data["kategori"]["kategori_nama"].'</td>
                                <td>'.$data["artikel"]["news_traffic"].'</td>
                                <td>'.date("d M Y H:i:s",$created).'</td>
                                <td>'.date("d M Y H:i:s",$updated).'</td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                                        <form action='.base_url("author/update_status_artikel/".$data["artikel"]["id_artikel"]).'>';
                                    if($data["artikel"]["news_status"] == 0) {
                                        echo '<input class="btn btn-danger" name="button_status" id="button_status" type="submit" value="OFF">';
                                    }else{
                                        echo '<input class="btn btn-primary" name="button_status" id="button_status" type="submit" value="ON">';
                                    }
                                echo '</form>
                                </div>
                                </td>
                                <td><a href='.base_url("/author/update_artikel/".$data["artikel"]["id_artikel"]).' class="btn btn-outline-primary">Edit</a>
                                <a href='.base_url("/author/deleteArtikel/".$data["artikel"]["id_artikel"]).' class="btn btn-outline-danger">Delete</a></td>
                            </tr>';
                            }
                        ?>
                    </tbody>
                </table>
                <br>
                <a href="<?= base_url('/author/create_artikel');?>" class="btn btn-success">Buat Artikel</a>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?= $this->endSection(); ?>