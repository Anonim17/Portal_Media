<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;
use CodeIgniter\Database\RawSql;

class TblArtikel extends Migration
{
    public function up()
    {
        $tabelArtikel = [
            'id_artikel' => [
                'type'          => 'INT',
                'constraint'    => 15,
                'auto_increment'    => true,
                'unique'        => true,
            ],
            'news_judul' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'news_konten'    => [
                'type'          => 'TEXT',
            ],
            'news_gambar' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'news_video' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'news_traffic' => [
                'type'          => 'INT',
                'constraint'    => 15,
            ],
            'news_status' => [
                'type'          => 'BOOLEAN',
            ],
            'created_at'        => [
                'type'          => 'TIMESTAMP',
                'default'       => new RawSql('CURRENT_TIMESTAMP'),
            ],
            'updated_at'        => [
                'type'          => 'TIMESTAMP',
                'default'       => new RawSql('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'),
            ],
        ];
        $this->forge->addField($tabelArtikel);
        $this->forge->addKey('id_artikel', TRUE);
        $this->forge->createTable('tblArtikel', TRUE);
    }

    public function down()
    {
        $this->forge->dropTable('tblArtikel');
    }
}
