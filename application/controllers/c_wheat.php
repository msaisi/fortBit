<?php
class C_Wheat extends MY_Controller {
public $company_list;
	public function __construct() 
	{
        parent::__construct();
		$this->is_logedIn();
		$this->load->model("CompanyModel",'c');
		$filter=array('affiliation' => 'Wheat');
   	  	$this->company_list=$this->c->get_details($filter);
    }
	public function productionWheat()
	{
		$data['sub_title']="add to database";
	    $data['main_title']="FORTIFIED WHEAT PRODUCTION FORMS";
		$data['company_list']=$this->company_list;
		$data['form'] = 'wheat/productionWheat';
		$data['form_id'] = 'productionWheat';
		$this -> load -> view('form', $data);
	}
	
	public function externalWheatFlour_B1() 
	{
		$data['form'] = 'wheat/externalWheatFlour_B1';
		$data['form_id'] = 'externalWheatFlour_B1';
		$this -> load -> view('form', $data);
	}

	public function externalWheatFlour_B2() 
	{
		$data['form'] = 'wheat/externalWheatFlour_B2';
		$data['form_id'] = 'externalWheatFlour_B2';
		$this -> load -> view('form', $data);
	}

	public function externalWheatFlour_B3() 
	{
		$data['form'] = 'wheat/externalWheatFlour_B3';
		$data['form_id'] = 'externalWheatFlour_B3';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_A1() 
	{
		$data['form'] = 'wheat/internalWheatFlour_A1';
		$data['form_id'] = 'internalWheatFlour_A1';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_A2() 
	{
		$data['form'] = 'wheat/internalWheatFlour_A2';
		$data['form_id'] = 'internalWheatFlour_A2';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_B1() 
	{
		$data['form'] = 'wheat/internalWheatFlour_B1';
		$data['form_id'] = 'internalWheatFlour_B1';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_B2() 
	{
		$data['form'] = 'wheat/internalWheatFlour_B2';
		$data['form_id'] = 'internalWheatFlour_B2';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_C1() 
	{
		$data['form'] = 'wheat/internalWheatFlour_C1';
		$data['form_id'] = 'internalWheatFlour_C1';
		$this -> load -> view('form', $data);
	}
	
function addAnother()
	{
		$this->data['form']='';
		$this->data['return_page']=1;
		$this->data['page']='Front-End';
		$this->data['content'] = 'Vehicles';
		$this->data['title']='Vehicles';
		$this -> load -> view('template_loggedin', $this->data);
	}
	 public function Market_level_wheat()
    {
		$data['sub_title']="add to database";
        $data['main_title']="FORTIFIED WHEAT MARKET LEVEL FORMS";
        $data['form'] = 'wheat/market_level_wheat';
        $data['form_id'] = 'market_level_wheat';
        $this -> load -> view('form', $data);
    }
//====================================================== Take to relevant comntroller wheat==================
 public function wheatData()
    {
		$filter=array('affiliation' => 'Wheat');
   	  	$this->company_list=$this->c->get_details($filter);
		
		$category = trim($this -> session -> userdata('vehicle'));
		$c_name="Production data";		
		if($category!=="MOPHS" || $category!=="KEBS")
		{
		 $id= $this ->session -> userdata('companyID');
		 
		 $filter=array('company_id'=>$id);
       	 $result= $this->c->get_details($filter);
	   	 foreach($result as $row):
	    	 $c_name=strtoupper(trim($row->company_name));
	     endforeach;	   
		}
		
             $data['h_title']="Stored data - (Wheat)";
             $data['mh_title']=$c_name;
             $data['content_page'] = 'production/wheat';
             $tmpl = array ( 'table_open'  => '<table id="big_table" border="0" cellpadding="0" cellspacing="0" class="mytable" style="font-size:12px; width:100%">' );
             $this->table->set_template($tmpl);
             $this->table->set_heading('# ID','Year','Month','Opening Bal','QTY Delivered','Sup/Man','QTY Rejected','QTY Issued','Closing Bal','D/ Rate','Theoretical Prod','Actual Prod','Prod Un-fort','Fort Exp');
	         $data['content']="Vehicles";
   			 $data['company_list']=$this->company_list;
             $this -> load -> view('template_loggedin', $data);
    }
    function getwheatData($id)
        {
		if($id>1)
		{
			$this->datatables->select('WheatProductionID,year,prod_month,opening_balance,qty_delivered,supplier,qty_rejected,qty_issued,closing_balance,dosage_rate,theoretical_prod,actual_prod,production_unfort,exp_fort')
					->where('company_id', $id)
                    ->from('wheat_productiontable');
                    echo $this->datatables->generate();	   
		}
		else
		{
			$this->datatables->select('WheatProductionID,year,prod_month,opening_balance,qty_delivered,supplier,qty_rejected,qty_issued,closing_balance,dosage_rate,theoretical_prod,actual_prod,production_unfort,exp_fort')
                    ->from('wheat_productiontable');
                    echo $this->datatables->generate();
		}
	}	
}
?>