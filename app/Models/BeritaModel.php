<?php

namespace App\Models;

use CodeIgniter\Model;

class BeritaModel extends Model {
    protected $table    = 'tblberita';
    protected $primary  = 'id_berita';
    protected $primaryKey  = 'id_berita';

    protected $useAutoIncrement = true;

    protected $returnType   = 'array';
    protected $useSoftDeletes   = false;

    protected $allowedFields    = ['id_artikel', 'id_kategori', 'id'];

    protected $skipValidation   = true;
}
