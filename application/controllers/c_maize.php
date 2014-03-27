<?php
class C_maize extends MY_Controller{
	public $company_list;
	public function __construct() 
	{
        parent::__construct();
		$this->is_logedIn();
		$this->load->model("CompanyModel",'c');
		$filter=array('affiliation' => 'Maize');
   	  	$this->company_list=$this->c->get_details($filter);		
    }
	
	public function productionMaize()
	{
		$data['sub_title']="add to database";
	    $data['main_title']="FORTIFIED MAIZE PRODUCTION FORMS";		
		$data['form'] = 'maize/productionMaize';
		$data['form_id'] = 'productionMaize';
		$this -> load -> view('form', $data);
	}
	
	public function externalMaizeFlour_B1()
	{
		$data['form'] = 'maize/externalMaizeFlour_B1';
		$data['form_id'] = 'externalMaizeFlour_B1';
		$this -> load -> view('form', $data);
	}
	
	public function externalMaizeFlour_B2()
	{
		$data['form'] = 'maize/externalMaizeFlour_B2';
		$data['form_id'] = 'externalMaizeFloyr_B2';
		$this -> load -> view('form', $data);
	}


public function externalMaizeFlour_B3()
{
	$data['form'] = 'maize/externalMaizeFlour_B3';
	$data['form_id'] = 'externalMaizeFlour_B3';
	$this -> load -> view('form', $data);
}
public function internalMaizeFlour_A1(){
	$data['form'] = 'maize/internalMaizeFlour_A1';
	$data['form_id'] = 'internalMaizeFlour_A1';
	$this -> load -> view('form', $data);
}
public function internalMaizeFlour_A2()
{
	$data['form'] = 'maize/internalMaizeFlour_A2';
	$data['form_id'] = 'internalMaizeFlour_A2';
	$this -> load -> view('form', $data);
}
public function internalMaizeFlour_B1()
{
	$data['form'] = 'maize/internalMaizeFlour_B1';
	$data['form_id'] = 'internalMaizeFlour_B1';
	$this -> load -> view('form', $data);
}
public function internalMaizeFlour_B2()
{
	$data['form'] = 'maize/internalMaizeFlour_B2';
	$data['form_id'] = 'internalMaizeFlour_B2';
	$this -> load -> view('form', $data);	
}
public function internalMaizeFlour_C1()
{
	$data['form'] = 'maize/internalMaizeFlour_C1';
	$data['form_id'] = 'internalMaizeFlour_C1';
	$this -> load -> view('form', $data);
}
   public function Market_level_maize()
    {
		$data['sub_title']="add to database";
        $data['main_title']="FORTIFIED MAIZE MARKET LEVEL FORMS";
        $data['form'] = 'maize/market_level_maize';
        $data['form_id'] = 'market_level_maize';
        $this -> load -> view('form', $data);
    }
//================================================== Take to relevant comntroller maize==================
 public function maizeData()
    {
		$filter=array('affiliation' => 'Maize');
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
		
             $data['h_title']="Stored data - (Maize)";
             $data['mh_title']=$c_name;
             $data['content_page'] = 'production/maize';
             $tmpl = array ( 'table_open'  => '<table id="big_table" border="0" cellpadding="0" cellspacing="0" class="mytable" style="font-size:12px; width:100%">' );
             $this->table->set_template($tmpl);
             $this->table->set_heading('# ID','Year','Month','Opening Bal','QTY Delivered','Sup/Man','QTY Rejected','QTY Issued','Closing Bal','D/ Rate','Theoretical Prod','Actual Prod','Prod Un-fort','Fort Exp');
	         $data['content']="Vehicles";
   			 $data['company_list']=$this->company_list;
             $this -> load -> view('template_loggedin', $data);
    }
    function getmaizeData($id)
        {
			if($id>1)
			{
				$this->datatables->select('MaizeProductionID,year,prod_month,opening_balance,qty_delivered,supplier,qty_rejected,qty_issued,closing_balance,dosage_rate,theoretical_prod,actual_prod,production_unfort,exp_fort')
						->where('company_id', $id)
						->from('maize_productiontable');
						echo $this->datatables->generate();	   
			}
			else
			{
				$this->datatables->select('MaizeProductionID,year,prod_month,opening_balance,qty_delivered,supplier,qty_rejected,qty_issued,closing_balance,dosage_rate,theoretical_prod,actual_prod,production_unfort,exp_fort')
						->from('maize_productiontable');
						echo $this->datatables->generate();
			}	
        }
	
	public function reports(){
			
			$chart_data = array();
			$chart_data['title'] = array('text'=>"Monthly fortified Maize Production",'x'=>"20") ;
			$chart_data['legend'] = array('layout'=>"horizontal",
									'align'=>"right",
									'verticalAlign'=>'middle',
									'borderWidth'=> 0) ;
			$data['page']='Front-End';
			$data['content'] = 'Vehicles';
			$data['title']='Vehicles';
			$data['title']='chart';
			$query = $this->db->select('prod_month, actual_prod')
				->from('maize_productiontable')
				->where('company_id', $this->session->userdata("companyID"))
				->get();
			$months= array();
			$fortified = array();
			//print_r(json_encode($query->result()));
			foreach($query->result() as $q){
			  array_push($months, $q->prod_month); 
			  array_push($fortified, $q->actual_prod * 1); 
			}
			$chart_data['series'] = array();
			$chart_data['xAxis'] = array('categories'=>$months);
			$chart_data['yAxis'] = array('title'=>array("text"=>"Fortified Production"),
						'plotLines'=>array(array('value'=>0,'width'=>1,'color'=>'#808080')));
			array_push($chart_data['series'], array('type'=>'column', 'name'=>'Maize Production','data'=>$fortified));
			$data['chart_data'] =json_encode($chart_data,JSON_PRETTY_PRINT) ;
			//print_r($data['chart_data']);exit;
		 $data['content_page'] = "chart";//$data['chart'];
		$this -> load -> view('template_loggedin', $data);  
	}
}
?>