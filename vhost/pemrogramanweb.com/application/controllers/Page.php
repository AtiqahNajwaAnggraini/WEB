<?php

class Page extends CI_Controller
{
	public function index()
	{
		$this->load->view('home');
	}

	public function about()
	{
		$this->load->view('about');
	}

	public function contact()
	{
		$this->load->view('contact');
	}
}