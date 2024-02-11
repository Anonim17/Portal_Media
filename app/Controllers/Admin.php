<?php

namespace App\Controllers;

use CodeIgniter\Files\File;

class Admin extends Author
{
    public function manage_users() {
        $data = [
            'title' => 'Manage Artikel',
            'dataArtikel' => $this->getBerita_all($this->latest),
        ];
        return view('author/admin/manage_users', $data);
    }
}
