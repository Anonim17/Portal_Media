<?php

namespace App\Models;

use CodeIgniter\Model;

class NewsKategoriModel extends Model {
    protected $table    = 'tblnewskategori';
    protected $primary  = 'id_kategori';
    protected $primaryKey  = 'id_kategori';

    protected $useAutoIncrement = true;

    protected $returnType   = 'array';
    protected $useSoftDeletes   = false;

    protected $allowedFields    = ['kategori_nama', 'kategori_deskripsi'];

    protected $skipValidation   = true;
}
