<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct(){
		 parent::__construct(); // Construct CI's core so that you can use it

	header("Access-Control-Allow-Origin: *");

		$this->load->database();

	}


	public function index()
	{
		$this->load->view('welcome_message');
	}

	public function get_initial_data(){

		$products = $this->db->query("select *,ifNull(( SELECT name FROM brands b WHERE b.id = p.brand),'') AS brand_name from products p order by id DESC")->result();	
		$categories = $this->db->get('categories')->result();
		$brands = $this->db->get('brands')->result();

	
		echo json_encode((object)['success' => 'true', 'products'=>$products, 'categories' => $categories, 'brands' =>$brands ]);
		die;
	
	}

	public function get_products(){
		
	$this->db->where('price >= ', (int) $_REQUEST['price_start']);
	$this->db->where('price <= ', (int) $_REQUEST['price_end']);


	$where = '';

	if($_REQUEST['category'] != '0'){
		$where .= " and category = '".$_REQUEST['category']."'";		

	}

	if($_REQUEST['brand'] != '0'){
		$where .= " and brand = '".$_REQUEST['brand']."'";		

	}	


	
	$products = $this->db->query("select *,ifNull(( SELECT name FROM brands b WHERE b.id = p.brand),'') AS brand_name from products p where price >= '".$_REQUEST['price_start']."' and price <= '".$_REQUEST['price_end']."'".$where." order by id DESC")->result();		




	echo json_encode((object)['success' => 'true', 'products'=>$products]);
		die;

 
	

	}
}
