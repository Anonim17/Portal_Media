<?= $this->extend('author/templateAuthor'); ?>
<?= $this->section('content'); ?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Manage Komen</h1>
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
                            <th>Isi Komen</th>
                            <th>Nama User</th>
                            <th>Email User</th>
                            <th>Dibuat</th>
                            <th>Diupdate</th>
                            <th>Status</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            foreach ($dataKomen as $data) {
                                $created = strtotime((string) $data->created_at);
                                $updated = strtotime((string) $data->updated_at);
                                echo '<tr>
                                <td>'.$data->news_judul.'</td>
                                <td>'.$data->komen_isi.'</td>
                                <td>'.$data->komen_user.'</td>
                                <td>'.$data->komen_email.'</td>
                                <td>'.date("d M Y H:i:s",$created).'</td>
                                <td>'.date("d M Y H:i:s",$updated).'</td>
                                <td>
                                    <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                                        <form action='.base_url("author/update_status_komen/".$data->id_komen).'>';
                                    if($data->komen_status == 0) {
                                        echo '<input class="btn btn-danger" name="button_status" id="button_status" type="submit" value="OFF">';
                                    }else{
                                        echo '<input class="btn btn-primary" name="button_status" id="button_status" type="submit" value="ON">';
                                    }
                                echo '</form>
                                </div>
                                </td>
                                <td><a href='.base_url("/author/deleteKomen/".$data->id_komen).' class="btn btn-outline-danger">Delete</a></td>
                            </tr>';
                            }
                        ?>
                    </tbody>
                </table>
                <br>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?= $this->endSection(); ?>