<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
#processes form data before committing to the data-layer
class C_Form_Oil extends MY_Controller {
	
 	public function __construct() {
		parent::__construct();
		$this->data['return_page']=0;
	}

	public function form_Fort_A1() {
		$this -> load -> model('models_oil/m_oil_fortifieda1');
		$this -> m_oil_fortifieda1 -> addRecord($this -> session -> userdata('affiliation'));

		if ($this -> m_oil_fortifieda1 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_oil_fortifieda1 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_oil_fortifieda1 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

	public function form_Fort_B1() {
		$this -> load -> model('models_oil/m_oil_fortifiedb1');
		$this -> m_oil_fortifiedb1 -> addRecord($this -> session -> userdata('affiliation'));

		if ($this -> m_oil_fortifiedb1 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_oil_fortifiedb1 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_oil_fortifiedb1 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

	public function form_Fort_B2() {
		$this -> load -> model('models_oil/m_oil_fortifiedb2');
		$this -> m_oil_fortifiedb2 -> addRecord($this -> session -> userdata('affiliation'));

		if ($this -> m_oil_fortifiedb2 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_oil_fortifiedb2 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_oil_fortifiedb2 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

	public function form_Fort_C1() {
		$this -> load -> model('models_oil/m_oil_fortifiedc1');
		$this -> m_oil_fortifiedc1 -> addRecord($this -> session -> userdata('affiliation'));

		if ($this -> m_oil_fortifiedc1 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_oil_fortifiedc1 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_oil_fortifiedc1 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}
	public function fortifiedOil_prod($id) 
	{
		if ($this -> input -> post()) 
		{//check if a post was made
			if($_POST['oilFactory'])
			{
				$_POST['oilFactory1']=$_POST['oilFactory'];
			}
		}
		
		$rec_count=$this->checkDB("oilFactory1","oil_productiontable1");
				
		if($rec_count==0)
		{	

		$frm_id="fortifiedOil_B1_1";
	    $this -> load -> model('models_oil/m_oil_production');
		$this -> m_oil_production -> addRecord($this -> session -> userdata('affiliation'));
//print
		//echo $this->m_oil_production->response;
		//die();
		if($this->m_oil_production->response=='ok') {
			//notify user of success		
			if($id==1)	
			{
				//print_r($_POST);
		        //die();
		
			 // $this->data['link_id'] ="fortifiedOil_B1_1_li";
			  $newdata = array('link_id' =>"fortifiedOil_B1_1_li");
			  $this -> session -> set_userdata($newdata);		  
			   redirect('c_redirect/addEntry');
			}
			else
			{
				$this->data['form_id'] ="";
		    	$this->data['form'] = '<p><b>' . $this -> m_oil_production -> rowsInserted . '</b> record(s) submitted successfully in approximately <b>' . $this -> m_oil_production -> executionTime . '</b> seconds.</p>';
				$this->load_template_view();
			}
			
		} 
		else 
		{
	//		//notify user of error/failure
		}
		}
	else
	{
		 $newdata = array('link_id' =>"productionOil_li",'update_msg' =>$this->update_e_msg);
		// print_r($newdata );
		 //die();
		 $this -> session -> set_userdata($newdata);		  
		 redirect('c_redirect/addEntry');
	}

	}
		
	public function productionOil($id) 
	{
		if ($this -> input -> post()) 
		{//check if a post was made
			if($_POST['oilFactory'])
			{
				$_POST['oilFactory1']=$_POST['oilFactory'];
			}
		}
		
		$rec_count=$this->checkDB("oilFactory1","oil_productiontable1");
				
		if($rec_count==0)
		{		
		$frm_id="productionOil";
	    $this -> load -> model('models_oil/m_oil_production1');
		$this -> m_oil_production1 -> addRecord($this -> session -> userdata('affiliation'));
//
		if($this->m_oil_production1->response=='ok') {
			//notify user of success		
			if($id==1)	
			{
			 // $this->data['link_id'] ="fortifiedOil_B1_1_li";
			  $newdata = array('link_id' =>"productionOil_li");
			  $this -> session -> set_userdata($newdata);		  
			  redirect('c_redirect/addEntry');
			}
			else
			{
				$this->data['form_id'] ="";
		    	$this->data['form'] = '<p><b>' . $this -> m_oil_production1 -> rowsInserted . '</b> record(s) submitted successfully in approximately <b>' . $this -> m_oil_production1 -> executionTime . '</b> seconds.</p>';
				$this->load_template_view();
			}
			
		} 
		else 
		{
	//		//notify user of error/failure
		}
}
	else
	{
		 $newdata = array('link_id' =>"productionOil_li",'update_msg' =>$this->update_e_msg);
		// print_r($newdata );
		 //die();
		 $this -> session -> set_userdata($newdata);		  
		 redirect('c_redirect/addEntry');
	}
}
	public function fortifiedOil_market($id) 
	{	
	    $this -> load -> model('models_oil/m_oil_market');
		$this -> m_oil_market -> addRecord($this -> session -> userdata('affiliation'));
		if($this->m_oil_market->response=='ok') 
		{
			//notify user of success		
			if($id==1)	
			{
			  $newdata = array('link_id' =>"Market_level_oil_li");
			  $this -> session -> set_userdata($newdata);		  
			   redirect('c_redirect/addEntry');
			}
			else
			{
				$this->data['form_id'] ="";
		    	$this->data['form'] = '<p><b>' . $this -> m_oil_market -> rowsInserted . '</b> record(s) submitted successfully in approximately <b>' . $this -> m_oil_market -> executionTime . '</b> seconds.</p>';
				$this->load_template_view();
			}			
		} 
		else 
		{
	//		//notify user of error/failure
		}
	}	
}
?>