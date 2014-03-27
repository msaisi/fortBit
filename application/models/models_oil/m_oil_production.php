<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
/**
 *model to IntFortifiedA2 entity
 */
use application\models\Entities\entities_oil\e_oil_production;

class M_Oil_Production  extends MY_Model {
	var $id, $attr, $frags, $elements, $theIds, $noOfInserts, $batchSize;

	function __construct() {
		parent::__construct();
	}

	function addRecord($iodizationCentre) {
        $s=microtime(true); /*mark the timestamp at the beginning of the transaction*/
		
		if ($this -> input -> post()) {//check if a post was made
		
	        if($_POST['brandname'])
			{
				$_POST['brandname']=convertArray($_POST['brandname']);
			}
			//print_r($_POST);
			$this->elements = array();
			$this->theIds=array();
			foreach ($this -> input -> post() as $key => $val) {//For every posted values
		   //print(($key." ".$val)).'<br \>';
			   
			//check if posted value is among the cloned ones   
			 if(!strpos("_",$key)){//useful to keep all the  non-cloned elements in the loop
			 	$key=$key."_1";
			 }
			  		//we separate the attribute name from the number
				$this->frags = explode("_", $key);				   
				$this->id = $this->frags[1];  // the id	
				$this->attr = $this->frags[0];//the attribute name
				$this->theIds[$this->attr]=$this->id;
			//print($this->attr."  ".$this->id."  ".$val).'<br />';
			   if (!empty($val)) 
				//We then store the value of this attribute for this element.
			  $this->elements[$this->id][$this->attr]=htmlentities($val);
					
			} //close foreach($_POST)
			
			
			//print_r($this->elements);
			
			//exit;
			
			//get the highest value of the array that will control the number of inserts to be done
			$this->noOfInsertsBatch=max($this->theIds);
			
			//iodization centre name obtained from the session variable => 'affiliation'
			

		
			 for($i=1; $i<=$this->noOfInsertsBatch;++$i)
			 {			 	
			 $this -> theForm = new \models\Entities\entities_oil\e_oil_production(); //create an object of the model
		  			
$this -> theForm -> setcompany_name($this->elements[$i]["oilFactory1"]);
$this -> theForm -> setyear($this->elements[$i]["harvestYear"]);
$this -> theForm -> setprod_month($this->elements[$i]["prodMonth"]);
$this -> theForm -> setopening_balance($this->elements[$i]["oBal"]);
$this -> theForm -> setqty_delivered($this->elements[$i]["qtyDel"]);
$this -> theForm -> setsupplier($this->elements[$i]["pSup"]);
$this -> theForm -> setqty_rejected($this->elements[$i]["reject"]);
$this -> theForm -> setqty_issued_o_f($this->elements[$i]["QIOF"]);
$this -> theForm -> setqty_issued_m($this->elements[$i]["QIM"]);
$this -> theForm -> setclosing_balance($this->elements[$i]["CBAL"]);
$this -> theForm -> setdosage_rate_o_f($this->elements[$i]["DROF"]);
$this -> theForm -> settheoretical_prod($this->elements[$i]["tProd"]);
$this -> theForm -> setactual_prod_oil($this->elements[$i]["aProdo"]);
$this -> theForm -> setactual_prod_fats($this->elements[$i]["aProdf"]);
$this -> theForm -> setdosage_rate_m($this->elements[$i]["DRM"]);
$this -> theForm -> settheoretical_prod_m($this->elements[$i]["tProdM"]);
$this -> theForm -> setactual_prod_m($this->elements[$i]["aProd"]);
$this -> theForm -> setproduction_unfort($this->elements[$i]["prodU"]);
$this -> theForm -> setexp_fats($this->elements[$i]["exportedFats"]);
$this -> theForm -> setexp_oil($this->elements[$i]["exportedOil"]);
$this -> theForm -> setbrands($this->elements[$i]["brandname"]);
$this -> theForm -> setsignature($this -> session -> userdata('email'));
$this -> theForm -> settime_added("".date('Y-m-d'));
$this -> theForm -> setedited_by("N/A");
$this -> theForm -> settime_edited("0000-00-00");
				
		//		print_r($this -> theForm);
			//	exit;
				
$this -> em -> persist($this -> theForm);
//echo "here";
//die();

        	//now do a batched insert, default at 5
			  $this->batchSize=5;
		if($i % $this->batchSize==0){
		try{
					
				$this -> em -> flush();
				$this->em->clear(); //detactes all objects from doctrine
				}catch(Exception $ex){
				    die($ex->getMessage());
					/*display user friendly message*/
					
				}//end of catch
				
			} else if($i<$this->batchSize || $i>$this->batchSize || $i==$this->noOfInsertsBatch && 
			$this->noOfInsertsBatch-$i<$this->batchSize){
				 //total records less than a batch, insert all of them
				try{
					
				$this -> em -> flush();
				$this->em->clear(); //detactes all objects from doctrine
				}catch(Exception $ex){
					die($ex->getMessage());
					/*display user friendly message*/
					
				}//end of catch
				 
				
			}//end of batch condition
				
				 } //end of innner loop
		}//close the this->input->post
		$e=microtime(true);
		$this->executionTime=round($e-$s,'4');
        $this->rowsInserted=$this->noOfInsertsBatch;
		return $this -> response = 'ok';
	}

}//end of class InternalFortifiedC1
