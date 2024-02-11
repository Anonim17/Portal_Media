<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TblBerita extends Migration
{
    public function up()
    {
        $tabelBerita = [
            'id_berita' => [
                'type'          => 'INT',
                'constraint'    => 15,
                'auto_increment'    => true,
                'unique'        => true,
            ],
            'id_artikel' => [
                'type'          => 'INT',
                'constraint'    => 15,
            ],
            'id_kategori'    => [
                'type'          => 'INT',
                'constraint'    => 15,
            ],
            'id_author'    => [
                'type'          => 'INT',
                'constraint'    => 15,
            ],
        ];
        $this->forge->addField($tabelBerita);
        $this->forge->addKey('id_berita', TRUE);
        $this->forge->createTable('tblBerita', TRUE);
    }

    public function down()
    {
        $this->forge->dropTable('tblBerita');
    }
}
