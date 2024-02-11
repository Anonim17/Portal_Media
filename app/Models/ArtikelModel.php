<?php

namespace App\Models;

use CodeIgniter\Model;

class ArtikelModel extends Model {
    protected $table    = 'tblartikel';
    protected $primary  = 'id_artikel';
    protected $primaryKey  = 'id_artikel';

    protected $useAutoIncrement = true;

    protected $returnType   = 'array';
    protected $useSoftDeletes   = false;

    protected $allowedFields    = ['link', 'news_judul', 'news_konten', 'news_status', 'news_gambar', 'news_video', 'news_traffic'];

    protected $useTimestamps    = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';

    protected $skipValidation   = true;
}
