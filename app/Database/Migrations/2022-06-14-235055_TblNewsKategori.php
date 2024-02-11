<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TblNewsKategori extends Migration
{
    public function up()
    {
        $tabelNewsKategori = [
            'id_kategori' => [
                'type'          => 'INT',
                'constraint'    => 15,
                'auto_increment'    => true,
                'unique'        => true,
            ],
            'kategori_nama' => [
                'type'          => 'VARCHAR',
                'constraint'    => 100,
            ],
            'kategori_deskripsi'    => [
                'type'          => 'TEXT',
            ],
        ];
        $this->forge->addField($tabelNewsKategori);
        $this->forge->addKey('id_kategori', TRUE);
        $this->forge->createTable('tblNewsKategori', TRUE);
    }

    public function down()
    {
        $this->forge->dropTable('tblNewsKategori');
    }
}
