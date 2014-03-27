<?php
class C_oil extends  MY_Controller {
public $company_list;
	public function __construct() 
	{
        parent::__construct();
		$this->is_logedIn();		
		$this->load->model("CompanyModel",'c');
		$filter=array('affiliation' => 'Oil');
   	  	$this->company_list=$this->c->get_details($filter);
		
    }
public function fortifiedOil_A1()
{
   $data['form'] = 'oil/fortifiedOil_A1';
   $data['form_id'] = 'fortifiedOil_A1';
   $this -> load -> view('form', $data);
}
public function fortifiedOil_B1()
{
   $data['form'] = 'oil/fortifiedOil_B1';
   $data['form_id'] = 'fortifiedOil_B1';
   $this -> load -> view('form', $data);
}
public function fortifiedOil_B1_1()
{
   $data['sub_title']="add to database";
   $data['main_title']="FORTIFIED OIL PRODUCTION FORMS";
   $data['company_list']=$this->company_list;
   $data['form'] = 'oil/fortifiedOil_B1_1';
   $data['form_id'] = 'fortifiedOil_B1_1';
   $this -> load -> view('form', $data);
}
public function fortifiedOil_B2()
{
   $data['form'] = 'oil/fortifiedOil_B2';
   $data['form_id'] = 'fortifiedOil_B2';
   $this -> load -> view('form', $data);
}
public function fortifiedOil_C1()
{
	$data['form'] = 'oil/fortifiedOil_C1';
	$data['form_id'] = 'fortifiedOil_C1';
	$this -> load -> view('form', $data);
}

    public function Market_level_oil()
    {
		$data['sub_title']="add to database";
        $data['main_title']="FORTIFIED OIL MARKET LEVEL FORMS";
        $data['form'] = 'oil/market_level_oil';
        $data['form_id'] = 'market_level_oil';
        $this -> load -> view('form', $data);
    }
	public function productionOil()
	{
	   $data['sub_title']="add to database";
	   $data['main_title']="FORTIFIED OIL PRODUCTION FORMS";
	   $data['company_list']=$this->company_list;
	   $data['form'] = 'oil/productionOil';
	   $data['form_id'] = 'productionOil';
	   $this -> load -> view('form', $data);
	}

	public function production(){
		$series = array(20, 45, 60, 22, 6, 36);
		$title = "Production";
		$series_name = "Production";
		$data['h_title']="Line Chart ";
		 $data['mh_title']="COMPANIES";
		 $data['chart'] = $this->line_chart($series,$series_name,$title);
		 $data['content_page'] = "production-reports";//$data['chart'];
		$this -> load -> view('template_loggedin', $data);  
	}
//====================================================== Take to relevant controller oil==================
 public function oilData()
    {
		$filter=array('affiliation' => 'Oil');
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
		
             $data['h_title']="Stored data - (Oil)";
             $data['mh_title']=$c_name;
             $data['content_page'] = 'production/oil';
             $tmpl = array ( 'table_open'  => '<table id="big_table" border="0" cellpadding="0" cellspacing="0" class="mytable" style="font-size:12px; width:100%">' );
             $this->table->set_template($tmpl);
             $this->table->set_heading('# ID','Year','Month','Opening Bal','QTY Delivered','Sup/Man','QTY Rejected','QTY Issued','Closing Bal','D/ Rate','Theoretical Prod','Actual Prod','Prod Un-fort','Local Sales Fort','Exp Sales Fort');
	         $data['content']="Vehicles";
   			 $data['company_list']=$this->company_list;
             $this -> load -> view('template_loggedin', $data);
    }
    function getoilData($id)
        {
		if($id>1)
		{
			$this->datatables->select('OilProductionID,year,prod_month,opening_balance,qty_delivered,supplier,qty_rejected,qty_issued,closing_balance,dosage_rate,theoretical_prod,actual_prod,production_unfort,exp_fort,exp_unfort')
					->where('company_id', $id)
                    ->from('oil_productiontable1');
                    echo $this->datatables->generate();	   
		}
		else
		{
			$this->datatables->select('OilProductionID,year,prod_month,opening_balance,qty_delivered,supplier,qty_rejected,qty_issued,closing_balance,dosage_rate,theoretical_prod,actual_prod,production_unfort,exp_fort,exp_unfort')
                    ->from('oil_productiontable1');
                    echo $this->datatables->generate();
		}
}
	/***
	  pie chart 
	
	*/

	

	/*
function addAnother()
	{
		$this->data['form']='';
		$this->data['return_page']=1;
		$this->data['page']='Front-End';
		$this->data['content'] = 'Vehicles';
		$this->data['title']='Vehicles';
		$this -> load -> view('template_loggedin', $this->data);
	}*/

}
?>