<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class TblAuthor extends Migration
{
    public function up()
    {
        $tabelAuthor = [
            'id_author' => [
                'type'          => 'INT',
                'constraint'    => 15,
                'auto_increment'    => true,
                'unique'        => true,
            ],
            'author_email' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'author_name' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'password' => [
                'type'          => 'VARCHAR',
                'constraint'    => 200,
            ],
            'account_status'        => [
                'type'          => 'BOOLEAN',
            ],
        ];
        $this->forge->addField($tabelAuthor);
        $this->forge->addKey('id_author', TRUE);
        $this->forge->createTable('tblAuthor', TRUE);
    }

    public function down()
    {
        $this->forge->dropTable('tblAuthor');
    }
}
