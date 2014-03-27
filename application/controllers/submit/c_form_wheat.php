<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
#processes form data before committing to the data-layer
class C_Form_Wheat extends MY_Controller {

	public function __construct() {
		parent::__construct();
	}

	public function form_internalFort_A1() {
		$this -> load -> model('models_wheat/m_wheat_internalfort_a1');
		$this -> m_wheat_internalfort_a1 -> addRecord();

		if ($this -> m_wheat_internalfort_a1 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_wheat_internalfort_a1 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_wheat_internalfort_a1 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

	public function form_internalFort_A2() {
		$this -> load -> model('models_wheat/m_wheat_internalfort_a2');
		$this -> m_wheat_internalfort_a2 -> addRecord();

		if ($this -> m_wheat_internalfort_a2 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_wheat_internalfort_a2 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_wheat_internalfort_a2 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

	public function form_internalFort_B1() {
		$this -> load -> model('models_wheat/m_wheat_internalfort_b1');
		$this -> m_wheat_internalfort_b1 -> addRecord($this->session->userdata('affiliation'));

		if ($this -> m_wheat_internalfort_b1 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_wheat_internalfort_b1 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_wheat_internalfort_b1 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

	public function form_internalFort_B2() {
		$this -> load -> model('models_wheat/m_wheat_internalfort_b2');
		$this -> m_wheat_internalfort_b2 -> addRecord($this->session->userdata('affiliation'));

		if ($this -> m_wheat_internalfort_b2 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_wheat_internalfort_b2 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_wheat_internalfort_b2 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

	public function form_internalFort_C1() {
		$this -> load -> model('models_wheat/m_wheat_internalfort_c1');
		$this -> m_wheat_internalfort_c1 -> addRecord($this->session->userdata('affiliation'));

		if ($this -> m_wheat_internalfort_c1 -> response = 'ok') {
			//notify user of success
			$this->$data['form_id'] = "";
			$this->$data['form'] = '<p><b>' . $this -> m_wheat_internalfort_c1 -> rowsInserted . '</b> record(s) submitted successfully in 
			approximately <b>' . $this -> m_wheat_internalfort_c1 -> executionTime . '</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();

		} else {
			//notify user of error/failure
		}

	}

public function form_externalFort_B1(){
		$this->load->model('models_wheat/m_wheat_externalfort_b1');
		$this->m_wheat_externalfort_b1->addRecord();
		
		
		
		if($this->m_wheat_externalfort_b1->response=='ok'){
			//notify user of success
			$this->$data['form_id']="";
			$this->$data['form']='<p><b>'.$this->m_wheat_externalfort_b1->rowsInserted.'</b> record(s) submitted successfully in 
			approximately <b>'.$this->m_wheat_externalfort_b1->executionTime.'</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();
			
		}else{
			//notify user of error/failure
		}
		
	}//close form_externalFort_B1()
	
	public function form_externalFort_B2(){
		$this->load->model('models_wheat/m_wheat_externalfort_b2');
		$this->m_wheat_externalfort_b2->addRecord($this->session->userdata('affiliation'));
		
		if($this->m_wheat_externalfort_b2->response=='ok'){
			//notify user of success
			$this->$data['form_id']="";
			$this->$data['form']='<p><b>'.$this->m_wheat_externalfort_b2->rowsInserted.'</b> record(s) submitted successfully in 
			approximately <b>'.$this->m_wheat_externalfort_b2->executionTime.'</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();
			
		}else{
			//notify user of error/failure
		}
		
	}//close form_externalFort_B1()

		public function form_externalFort_B3(){
		$this->load->model('models_wheat/m_wheat_externalfort_b3');
		$this->m_wheat_externalfort_b3->addRecord($this->session->userdata('affiliation'));
		
		if($this->m_wheat_externalfort_b3->response=='ok'){
			//notify user of success
			$this->$data['form_id']="";
			$this->$data['form']='<p><b>'.$this->m_wheat_externalfort_b3->rowsInserted.'</b> record(s) submitted successfully in 
			approximately <b>'.$this->m_wheat_externalfort_b3->executionTime.'</b> seconds.</p>';
			//redirect(base_url() . 'front/vehicles/index', 'location');
			//$this -> load -> view('pages/vehicles/index', $data);
			$this->load_template_view();
			
		}else{
			//notify user of error/failure
		}
		
	}//close form_externalFort_B1()
	
    public function productionWheat($id) 
	{
		if ($this -> input -> post()) 
		{//check if a post was made
			if($_POST['wheatFactory'])
			{
				$_POST['wheatFactory1']=$_POST['wheatFactory'];
			}
		}
		
		$rec_count=$this->checkDB("wheatFactory1","wheat_productiontable");
		
		if($rec_count==0)
		{
		$frm_id="productionWheat";
	    $this -> load -> model('models_wheat/m_wheat_production');
		$this -> m_wheat_production -> addRecord($this -> session -> userdata('affiliation'));
//
		if($this->m_wheat_production->response=='ok') {
			//notify user of success		
			if($id==1)	
			{
			 // $this->data['link_id'] ="fortifiedOil_B1_1_li";
			  $newdata = array('link_id' =>"productionWheat_li");
			  $this -> session -> set_userdata($newdata);		  
			  redirect('c_redirect/addEntry/1');
			}
			else
			{
				$this->data['form_id'] ="";
		    	$this->data['form'] = '<p><b>' . $this -> m_wheat_production -> rowsInserted . '</b> record(s) submitted successfully in approximately <b>' . $this -> m_wheat_production -> executionTime . '</b> seconds.</p>';
				$this->load_template_view();
			}
			
		} 
		else 
		{
		//notify user of error/failure
		}
	}
	else
	{
		$newdata = array('link_id' =>"productionWheat_li",'update_msg' =>$this->update_e_msg);
		$this -> session -> set_userdata($newdata);		  
		redirect('c_redirect/addEntry');
	}

	}
	
	public function fortifiedWheat_market($id) 
	{	
	    $this -> load -> model('models_wheat/m_wheat_market');
		$this -> m_wheat_market -> addRecord($this -> session -> userdata('affiliation'));
		if($this->m_wheat_market->response=='ok') 
		{
			//notify user of success		
			if($id==1)	
			{
			  $newdata = array('link_id' =>"Market_level_wheat_li");
			  $this -> session -> set_userdata($newdata);		  
			  redirect('c_redirect/addEntry');
			}
			else
			{
				$this->data['form_id'] ="";
		    	$this->data['form'] = '<p><b>' . $this -> m_wheat_market -> rowsInserted . '</b> record(s) submitted successfully in approximately <b>' . $this -> m_wheat_market -> executionTime . '</b> seconds.</p>';
				$this->load_template_view();
			}			
		} 
		else 
		{
	//		//notify user of error/failure
		}
	}	
}
