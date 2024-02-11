<?php

namespace App\Controllers;

use CodeIgniter\Files\File;

class Author extends Home
{
    public function dashboard()
    {
        $data = [
            'title' => 'Dashboard',
        ];
        return view('author/dashboard', $data);
    }

    public function manage_artikel()
    {
        $data = [
            'title' => 'Manage Artikel',
            'dataArtikel' => $this->getBerita_all($this->latest),
        ];
        return view('author/manageArtikel', $data);
    }

    public function manage_komen()
    {
        $db      = \Config\Database::connect();
        $sql = 'SELECT tblartikel.news_judul, tblkomen.*
        FROM tblkomen 
        INNER JOIN tblartikel
        ON tblartikel.id_artikel = tblkomen.id_artikel
        ORDER BY tblkomen.id_artikel;' ;
        $query = $db->query($sql);

        $data = [
            'title' => 'Manage Artikel',
            'username' => user()->getUsername(),
            'dataKomen' => $query->getResult(),
        ];
        // dd($data);
        return view('author/manageKomen', $data);
    }

    public function create_artikel()
    {
        $data = [
            'title' => 'Membuat Artikel',
            'dataNewsKategori' => $this->newsKategoriModel->findAll(),
        ];
        return view('author/create_artikel', $data);
    }

    public function insert_data_artikel()
    {
        if($this->request->getMethod() !== 'post') {
            return redirect()->to(base_url('author/create_artikel?msg=Method Salah'));
        }

        $validationRule = [
            'news_gambar' => [
                'label' => 'Image File',
                'rules' => 'uploaded[news_gambar]'
                    . '|is_image[news_gambar]'
                    . '|mime_in[news_gambar,image/jpg,image/jpeg,image/gif,image/png,image/webp]'
                    . '|max_size[news_gambar,2048]',
            ],
        ];

        if (! $this->validate($validationRule)) {
            $data = ['errors' => $this->validator->getErrors()];

            return redirect()->to(base_url('author/dashboard?msg=Format Salah'));
        }

        // $img = $this->request->getFile('news_gambar')->store();
        $img = $this->request->getFile('news_gambar');
        $img->move(WRITEPATH . '../public/assets/berita/images');
        // $filepath = base_url('public/berita/images') . '/' . $img->store();
        // $filepath = WRITEPATH . $img->store();

        $link = time();
        $link = date('', $link);
        $link .= '-'.$this->request->getVar('news_judul');
        $link = url_title($link);

        $this->artikelModel->insert([
            'link'        => $link,
            'news_judul'  => $this->request->getVar('news_judul'),
            'news_konten' => $this->request->getVar('news_konten'),
            'news_gambar' => 'assets/berita/images/' . $img->getName(),
        ]);

        $artikel_id = $this->artikelModel->getInsertID();
        $this->beritaModel->insert([
            'id_kategori' => $this->request->getVar('id_kategori'),
            'id_artikel' => $artikel_id,
            'id' => user_id()
        ]);

        // if (! $img->hasMoved()) {
        //     // $filepath = WRITEPATH . 'uploads/' . $img->store('images/');
        //     // $data = ['uploaded_flleinfo' => new File($filepath)];


        // }

        return redirect()->to('author/create_artikel');
    }

    public function update_data_artikel()
    {
        $db      = \Config\Database::connect();
        $tblBerita = $db->table('tblberita');
        
        if($this->request->getMethod() !== 'post') {
            return redirect()->to(base_url('author/create_artikel?msg=Method Salah'));
        }

        $validationRule = [
            'news_gambar' => [
                'label' => 'Image File',
                'rules' => 'uploaded[news_gambar]'
                    . '|is_image[news_gambar]'
                    . '|mime_in[news_gambar,image/jpg,image/jpeg,image/gif,image/png,image/webp]'
                    . '|max_size[news_gambar,2048]',
            ],
        ];

        if (! $this->validate($validationRule)) {
            $data = ['errors' => $this->validator->getErrors()];

            return redirect()->to(base_url('author/dashboard?msg=Format Salah'));
        }
        $data_file = $this->artikelModel->where('id_artikel', $this->request->getVar('id_artikel'))->findColumn('news_gambar');
        unlink(WRITEPATH . '../public/' . $data_file[0]);

        $img = $this->request->getFile('news_gambar');
        $img->move(WRITEPATH . '../public/assets/berita/images');

        $dataArtikel = [
            'news_judul' => $this->request->getVar('news_judul'),
            'news_konten' => $this->request->getVar('news_konten'),
            'news_gambar' => 'assets/berita/images/' . $img->getName(),
        ];
        // Update data tabel artikel
        $this->artikelModel->update($this->request->getVar('id_artikel'), $dataArtikel);

        // Update data kategori di tabel berita
        $dataBerita = [
            'id_kategori' => $this->request->getVar('id_kategori'),
        ];
        $tblBerita->where('id_artikel', $this->request->getVar('id_artikel'))->update($dataBerita);
        
        return redirect()->to('author/manageArtikel');
    }

    public function update_artikel($id) {
        $data = [
            'title' => 'Membuat Artikel',
            'dataArtikel' => $this->artikelModel->find($id),
            'dataNewsKategori' => $this->newsKategoriModel->findAll(),
        ];

        return view('author/update_artikel', $data);
    }

    public function delete_artikel($id) {
        $this->beritaModel->where('id_artikel', $id)->delete();
        $this->komenModel->where('id_artikel', $id)->delete();

        $data_file = $this->artikelModel->where('id_artikel', $id)->findColumn('news_gambar');
        unlink(WRITEPATH . '../public/' . $data_file[0]);
        
        $this->artikelModel->where('id_artikel', $id)->delete();
        
        return redirect()->to('author/manageArtikel');
    }

    public function delete_komen($id) {
        $this->komenModel->where('id_komen', $id)->delete();
        
        return redirect()->to('author/manageKomen');
    }

    public function update_status_artikel($id) {
        if($this->request->getVar('button_status') == 'OFF') {
            $data = [
                'news_status' => 1,
            ];
            $this->artikelModel->update($id, $data);
        }else{
            $data = [
                'news_status' => 0,
            ];
            $this->artikelModel->update($id, $data);
        }
        return redirect()->to('author/manageArtikel');
    }

    public function update_status_komen($id) {
        if($this->request->getVar('button_status') == 'OFF') {
            $data = [
                'komen_status' => 1,
            ];
            $this->komenModel->update($id, $data);
        }else{
            $data = [
                'komen_status' => 0,
            ];
            $this->komenModel->update($id, $data);
        }
        return redirect()->to('author/manageKomen');
    }

    public function artikel_sorted_all($sort_by, $sort_order)
    {
        $db      = \Config\Database::connect();
        $sort_order = ($sort_order == 'DESC') ? 'DESC' : 'ASC';
        $sort_columns = array('id_artikel', 'news_judul', 'news_konten', 'news_status', 'news_gambar', 'news_video', 'news_traffic', 'created_at');
        $sort_by = (in_array($sort_by, $sort_columns)) ? '`' . $sort_by . '`' : '`id_berita`';
        $sql = 'SELECT * FROM tblartikel ORDER BY ' . $sort_by . ' ' . $sort_order;
        $query = $db->query($sql);

        return $query->getResult();
    }

    public function getBerita_all($sort)
    {
        $db      = \Config\Database::connect();
        $tblArtikel = $db->table('tblartikel');
        $tblKategori = $db->table('tblnewskategori');
        $tblBerita = $db->table('tblberita');
        $dataArtikel_view_DESC = json_decode(json_encode($this->artikel_sorted_all($sort, 'DESC')), true);

        $cek = [];
        $i = 0;
        foreach ($dataArtikel_view_DESC as $dataArtikel) {
            $x = $i-1;
            $data_berita = $tblBerita->where('id_artikel', $dataArtikel['id_artikel'])->get()->getRow();
            $data_news_kategori = $tblKategori->where('id_kategori', $data_berita->id_kategori)->get()->getRow();

            $data = [
                'artikel' => $dataArtikel,
                'kategori' => (array) $data_news_kategori,
            ];
            if($cek == []) {
                $cek[0] = array_merge($cek, $data);
            }else{
                $cek[$i] = array_merge($cek[$x], $data);
            }
            $i++;
        }
        return $cek;
    }

    public function profile_user() {
        $data = [
            'title' => 'Dashboard',
        ];
        return view('author/profile_user', $data);
    }

    public function profile_setting() {
        $data = [
            'title' => 'Dashboard',
        ];
        return view('author/profile_setting', $data);
    }

    public function save_profile() {

    }
}
