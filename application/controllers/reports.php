<?php 
Class Reports extends MY_Controller {
	
	public function reports(){
		parent::__construct();
		$this->load->model("CompanyModel",'c');
		
	}

	public function filter(){
	
	}

	 public function maize()
    {	
		if($_POST){
			$report_filter = array(); 
			if(isset($_POST['prod_month'])){
				//$report_filter['prod_month'] = $_POST['prod_month'];
			}
			if(isset($_POST['year'])){
				$report_filter['year'] = $_POST['year'];
			}
			if(isset($_POST['company_id'])){
				$report_filter['company_id'] = $_POST['company_id'];
			}
			$query = $this->db->select('prod_month ,actual_prod,production_unfort')
			->where($report_filter)
			->from('maize_productiontable')
			->get();		
			//chart parameters
			if($query->num_rows()>=1){
				$chart_data = array();
				$chart_data['title'] = array('text'=>"Monthly fortified Maize Production",'x'=>"20") ;
				$chart_data['legend'] = array('layout'=>"horizontal",
										'align'=>"right",
										'verticalAlign'=>'middle',
										'borderWidth'=> 0) ;
				$months= array();
				$fortified = array();
				$unfortified = array();
				//print_r(json_encode($query->result()));
				foreach($query->result() as $q){
				  array_push($months, $q->prod_month); 
				  array_push($fortified, $q->actual_prod * 1); 
				  array_push($unfortified, $q->production_unfort * 1); 
				}
				//print_r($query->result()); exit;
				$chart_data['series'] = array();
				$chart_data['xAxis'] = array('categories'=>$months);
				$chart_data['yAxis'] = array('title'=>array("text"=>"Fortified Production"),
							'plotLines'=>array(array('value'=>0,'width'=>1,'color'=>'#808080')));
				array_push($chart_data['series'], array('type'=>'column', 'name'=>'Fortified Production','data'=>$fortified));
				array_push($chart_data['series'], array('type'=>'column', 'name'=>'Unfortified Maize','data'=>$unfortified));
				$this->data['chart_data'] =json_encode($chart_data,JSON_PRETTY_PRINT) ;
			}else{
				$this->data['chart_data'] = false;
			}
			//exit;
		}else{
			$this->data['chart_data'] = false;
		}
		$filter=array('affiliation' => 'Maize');
   	  	$this->company_list=$this->c->get_details($filter);
		 $this->data['page']='Front-End';
			$this->data['content'] = 'Vehicles';
			$this->data['title']='chart';
			$this->data['content_page'] = "reports/charts";
		
		
		$this -> load -> view('template_loggedin', $this->data);
    }
	 public function wheat()
    {	
		if($_POST){
			$report_filter = array(); 
			if(isset($_POST['prod_month'])){
				//$report_filter['prod_month'] = $_POST['prod_month'];
			}
			if(isset($_POST['year'])){
				$report_filter['year'] = $_POST['year'];
			}
			if(isset($_POST['company_id'])){
				$report_filter['company_id'] = $_POST['company_id'];
			}
			$query = $this->db->select('prod_month ,actual_prod,production_unfort')
			->where($report_filter)
			->from('wheat_productiontable')
			->get();		
			//chart parameters
			if($query->num_rows()>=1){
				$chart_data = array();
				$chart_data['title'] = array('text'=>"Monthly fortified Maize Production",'x'=>"20") ;
				$chart_data['legend'] = array('layout'=>"horizontal",
										'align'=>"right",
										'verticalAlign'=>'middle',
										'borderWidth'=> 0) ;
				$months= array();
				$fortified = array();
				$unfortified = array();
				//print_r(json_encode($query->result()));
				foreach($query->result() as $q){
				  array_push($months, $q->prod_month); 
				  array_push($fortified, $q->actual_prod * 1); 
				  array_push($unfortified, $q->production_unfort * 1); 
				}
				//print_r($query->result()); exit;
				$chart_data['series'] = array();
				$chart_data['xAxis'] = array('categories'=>$months);
				$chart_data['yAxis'] = array('title'=>array("text"=>"Fortified Production"),
							'plotLines'=>array(array('value'=>0,'width'=>1,'color'=>'#808080')));
				array_push($chart_data['series'], array('type'=>'column', 'name'=>'Fortified Production','data'=>$fortified));
				array_push($chart_data['series'], array('type'=>'column', 'name'=>'Unfortified Wheat','data'=>$unfortified));
				$this->data['chart_data'] =json_encode($chart_data,JSON_PRETTY_PRINT) ;
				//exit;
			}else{
				$this->data['chart_data'] = false;
			}
		}else{
			$this->data['chart_data'] = false;
		}
		$filter=array('affiliation' => 'Wheat');
   	  	$this->company_list=$this->c->get_details($filter);
		$this->data['page']='Front-End';
		$this->data['content'] = 'Vehicles';
		$this->data['title']='chart';
		$this->data['content_page'] = "reports/wheat_chart";
		$this -> load -> view('template_loggedin', $this->data);
    }
	public function oil()
    {	
		if($_POST){
			$report_filter = array(); 
			if(isset($_POST['prod_month'])){
				//$report_filter['prod_month'] = $_POST['prod_month'];
			}
			if(isset($_POST['year'])){
				$report_filter['year'] = $_POST['year'];
			}
			if(isset($_POST['company_id'])){
				$report_filter['company_id'] = $_POST['company_id'];
			}
			if(isset($_POST['oil_type']) && $_POST['oil_type']=="oil"){
				$foor_type ="actual_prod_oil";
			}else{
				$foor_type ="actual_prod_fats";
				
			}
			$query = $this->db->select('*')
				->where($report_filter)
				->from('oil_productiontable')
				->get();
			//chart parameters
			//echo $query->num_rows(); exit;
			if($query->num_rows()>=1){
				$chart_data = array();
				$chart_data['title'] = array('text'=>"Monthly fortified Oil Production",'x'=>"20") ;
				$chart_data['legend'] = array('layout'=>"horizontal",
										'align'=>"right",
										'verticalAlign'=>'middle',
										'borderWidth'=> 0) ;
				$months= array();
				$fortified = array();
				$unfortified = array();
				//print_r(json_encode($query->result()));
				foreach($query->result() as $q){
				  array_push($months, $q->prod_month); 
				  if($foor_type =="actual_prod_oil"){
					 array_push($fortified, $q->actual_prod_oil * 1); 
				  }else{
					array_push($fortified, $q->actual_prod_fats * 1); 
				  }
				  array_push($unfortified, $q->production_unfort * 1); 
				}
				//print_r($query->result()); exit;
				$chart_data['series'] = array();
				$chart_data['xAxis'] = array('categories'=>$months);
				$chart_data['yAxis'] = array('title'=>array("text"=>"Fortified Production"),
							'plotLines'=>array(array('value'=>0,'width'=>1,'color'=>'#808080')));
				array_push($chart_data['series'], array('type'=>'column', 'name'=>'Fortified Production','data'=>$fortified));
				array_push($chart_data['series'], array('type'=>'column', 'name'=>'Unfortified OIl','data'=>$unfortified));
				$this->data['chart_data'] =json_encode($chart_data,JSON_PRETTY_PRINT) ;
				//exit;
			}else{
				$this->data['chart_data'] = false;
			}
		}else{
			$this->data['chart_data'] = false;
		}
		$filter=array('affiliation' => 'Oil');
   	  	$this->company_list=$this->c->get_details($filter);
		$this->data['page']='Front-End';
		$this->data['content'] = 'Vehicles';
		$this->data['title']='chart';
		$this->data['content_page'] = "reports/oil_chart";
		$this -> load -> view('template_loggedin', $this->data);
    }
}