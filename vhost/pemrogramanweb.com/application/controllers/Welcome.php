<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {//nama class diawali huruf besar, dan harus sama dengan folder

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_datadiri','mself');
	}

	public function index() //nama method harus huruf kecil
	{
		$data=[
			'data'=>$this->mself->getdatadiri(),
  		'dataorganisasi'=>$this->mself->getdataorganisasi()->result(),
  		'datakeahlian'=>$this->mself->getdatakeahlian()->result()
		];

		// echo json_encode($data);

		//untuk menampilkan data yang ada pada kolom
		// echo $data['data']->sandi;

		$this->load->view('utama',$data);
	}

	public function home_dua()
	// http://pemrogramanweb.com/index.php/welcome/home_dua
	{
		$this->load->view('template/header');
		$this->load->view('template/content');
		$this->load->view('template/footer');
	}
}
