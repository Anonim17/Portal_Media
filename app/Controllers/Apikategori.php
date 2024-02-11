<?php namespace App\Controllers;
 
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\NewsKategoriModel;
 
class ApiKategori extends ResourceController
{
    use ResponseTrait;

    public function show($id = 1) {
        $this->newsKategoriModel = new NewsKategoriModel();

        $db      = \Config\Database::connect();
        $tblArtikel = $db->table('tblartikel');
        $tblKategori = $db->table('tblnewskategori');
        $tblBerita = $db->table('tblberita');

        $dataKategori = $tblKategori->where('id_kategori', $id)->get()->getRow();
        
        $dataBerita = $tblBerita->where('id_kategori', $dataKategori->id_kategori)->orderBy('id_artikel', 'DESC')->get()->getResult();
        
        $cek = [];
        $i = 0;
        foreach ($dataBerita as $data) {
            $x = $i - 1;

            $dataSearch = [
                'id_artikel' => $data->id_artikel,
                'news_status' => 1,
            ];
            $dataArtikel = $tblArtikel->where($dataSearch)->get()->getRow();

            if($dataArtikel != null) {
                $data = [
                    'dataArtikelTerpilih' => $dataArtikel,
                    'kategoriSelected' => $dataKategori,
                ];
    
                if ($cek == []) {
                    $cek[0] = array_merge($cek, $data);
                } else {
                    $cek[$i] = array_merge($cek[$x], $data);
                }
                
                $i++;
            }else{
                continue;
            }
        }
        return $this->respond($cek);
    }
}