<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;
use CodeIgniter\Database\RawSql;

class TblKomen extends Migration
{
    public function up()
    {
        $tabelKomen = [
            'id_komen' => [
                'type'          => 'INT',
                'constraint'    => 15,
                'auto_increment'    => true,
                'unique'        => true,
            ],
            'id_artikel' => [
                'type'          => 'INT',
                'constraint'    => 15,
            ],
            'komen_user' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'komen_email' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'komen_isi' => [
                'type'          => 'TEXT',
            ],
            'komen_status'    => [
                'type'          => 'BOOLEAN',
            ],
            'created_at'        => [
                'type'          => 'TIMESTAMP',
                'default'       => new RawSql('CURRENT_TIMESTAMP'),
            ],
        ];
        $this->forge->addField($tabelKomen);
        $this->forge->addKey('id_komen', TRUE);
        $this->forge->createTable('tblKomen', TRUE);
    }

    public function down()
    {
        $this->forge->dropTable('tblKomen');
    }
}
