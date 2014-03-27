<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
/**
 *model to SystemUser entity
 */
use application\models\Entities\e_systemuser;

class M_SystemUser extends MY_Model {
	var $isUser,$email,$userRights,$affiliation,$vehicle,$user_id,$companyID;

	function __construct() {
		parent::__construct();
		$this->isUser=FALSE;
		$this->email='';$this->userRights='';$this->affiliation='';
		$this->vehicle='';
		$this->user_id='';
		$this->companyID='';

	}

	function getUser() {
        $s=microtime(true); /*mark the timestamp at the beginning of the transaction*/
		
		if ($this -> input -> post()) {//check if a post was made
			
       //Working with an object of the entity
		$user = $this->em->getRepository('models\Entities\e_systemuser')->findOneBy(array('username' => $this -> input -> post('username'), 'password' => md5($this -> input -> post('secret')), 'is_active' =>1, 'activationcode' =>'y'));
	
	// print_r($user); 
	// echo "<br />";
//	 print_r($this->em->getRepository('models\Entities\e_systemuser')->findAll());
	// die();
	    if($user){
	    	$this->email = $user -> getUsername();
			$this->userRights=$user->getUserRights();
			$this->affiliation=$user->getAffiliation();
			$this->user_id=$user->getId();
			$this->companyID=$user->getcompany_id();
			return $this->isUser=TRUE;
	    }else{
	    	return $this -> isUser = FALSE;
	    }
		
		}//close the this->input->post
		$e=microtime(true);
		$this->executionTime=round($e-$s,'4');
		
	} /*end of getUser()*/
	
	/*used by controllers/C_Auth */
	public function getVehicleNameByUser($affiliation)
	{
		try{
			//using DQL
	      $query = $this->em->createQuery('SELECT m.vehicleName FROM models\Entities\E_ManufacturerFortified m WHERE m.manufactuerFortName
	                                      IN (SELECT f.manufacturerFortName FROM models\Entities\E_Factories f WHERE f.factoryName= :name)');
		  $query->setParameter('name', $affiliation);
          $this->vehicle = $query->getResult();
		
			}catch(exception $ex){
				//ignore
				die($ex->getMessage());
			}
			
			return $this->vehicle;
	}
	function my_Vehicles($id)
	{
		$my=array();
        $this->db->where('company_id',$id);
        $this->db->from("company");
		$q = $this->db->get();
		if($q->num_rows()>0)
			{				
				foreach ($q->result() as $row)
				 {
				   $name = $row->company_name;				   
				   $this->db->like('company_name', $name);
			       $this->db->from('company');
				   $qr = $this->db->get();
					if($qr->num_rows()>0)
					{
						foreach ($qr->result() as $r)
				 		{
							$my[]=$r;
			     		}
					}
			     }
				return $my; 
			}
	}
	
	
	function addUser(){
		
	}
	
	function deactivateUser(){
		
	}
	
	function activateUser(){
		
	}
	
	function listUsers(){
		
	}

}//end of class M_SystemUser
