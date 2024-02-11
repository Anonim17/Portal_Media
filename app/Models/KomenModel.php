<?php

namespace App\Models;

use CodeIgniter\Model;

class KomenModel extends Model {
    protected $table    = 'tblkomen';
    protected $primary  = 'id_komen';
    protected $primaryKey  = 'id_komen';

    protected $useAutoIncrement = true;

    protected $returnType   = 'array';
    protected $useSoftDeletes   = false;

    protected $allowedFields    = ['id_artikel', 'komen_user', 'komen_email', 'komen_isi', 'komen_status'];

    protected $useTimestamps    = true;
    protected $createdField = 'created_at';

    protected $skipValidation   = true;
}
