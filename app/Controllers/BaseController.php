<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;
use App\Models\ArtikelModel;
use App\Models\BeritaModel;
use App\Models\KomenModel;
use App\Models\NewsKategoriModel;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */
abstract class BaseController extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = ['auth', 'filesystem', 'text'];

    protected $artikelModel;
    protected $beritaModel;
    protected $komenModel;
    protected $newsKategoriModel;
    protected $trending = "news_traffic";
    protected $latest = "created_at";
    /**
     * Constructor.
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        // E.g.: $this->session = \Config\Services::session();
    }

    public function __construct()
    {
        $this->artikelModel = new ArtikelModel();
        $this->beritaModel = new BeritaModel();
        $this->komenModel = new KomenModel();
        $this->newsKategoriModel = new NewsKategoriModel();
        $pager = \Config\Services::pager();
    }

    // public function berita_sorted($sort_by, $sort_order)
    // {
    //     $db      = \Config\Database::connect();
    //     $sort_order = ($sort_order == 'DESC') ? 'DESC' : 'ASC';
    //     $sort_columns = array('id_berita', 'id_artikel', 'id_kategori', 'id');
    //     $sort_by = (in_array($sort_by, $sort_columns)) ? '`' . $sort_by . '`' : '`id_berita`';
    //     $sql = 'SELECT * FROM tblberita ORDER BY ' . $sort_by . ' ' . $sort_order;
    //     $query = $db->query($sql);

    //     return $query->getResult();
    // }

    public function artikel_sorted($sort_by, $sort_order)
    {
        $db      = \Config\Database::connect();
        $sort_order = ($sort_order == 'DESC') ? 'DESC' : 'ASC';
        $sort_columns = array('id_artikel', 'news_judul', 'news_konten', 'news_status', 'news_gambar', 'news_video', 'news_traffic', 'created_at');
        $sort_by = (in_array($sort_by, $sort_columns)) ? '`' . $sort_by . '`' : '`id_berita`';
        $sql = 'SELECT * FROM tblartikel WHERE news_status="1" ORDER BY ' . $sort_by . ' ' . $sort_order;
        $query = $db->query($sql);

        return $query->getResult();
    }

    public function getBerita($sort)
    {
        $db      = \Config\Database::connect();
        $tblArtikel = $db->table('tblartikel');
        $tblKategori = $db->table('tblnewskategori');
        $tblBerita = $db->table('tblberita');
        $dataArtikel_view_DESC = json_decode(json_encode($this->artikel_sorted($sort, 'DESC')), true);

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

    public function imagePathExtract($path)
    {
        $image = $path;
        $path = explode('/', $image);
        $extension = explode('.', $image);

        $imageType = $path[count($path) - 2] . '/' . $extension[count($extension) - 1];
        return $imageType;
    }

    public function getUserIpAddr(){
        if(!empty($_SERVER['HTTP_CLIENT_IP'])){
            //ip from share internet
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
            //ip pass from proxy
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        }else{
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }
}
