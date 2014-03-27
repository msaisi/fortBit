<?php

class CompanyType extends MY_Model {


    function add_type($details=""){
        if(isset($_POST)){
            $details = array(
                'company_type_name'=>$this->input->post('company_type_name')
            );
        }
        if($this->db->insert("company_type",$details)){
            return TRUE;
        }else{
            return FALSE;
        }
    }
	
	 function get_companyName($filter=""){
        $this->db->select('company_type_name');
        if(!empty($filter)){
            $this->db->where('company_type_id',$filter);
        }
        $this->db->from("company_type");
		return $this->db->get()->result();
    }
	
    function get_details($filter=""){
        $this->db->select('*');
        if(is_array($filter)){
            $this->db->where($filter);
        }
        $this->db->from("company_type");
        return $this->db->get()->result();
    }
	  function get_Typedetails($filter=""){
        $this->db->select('*');
        if(is_array($filter)){
            $this->db->where($filter);
        }
        $this->db->from("foodtype");
        return $this->db->get()->result();
    }

    function update($id,$details=""){
        if(isset($_POST)){
            $details = array(
                'company_type_name'=>$this->input->post('company_name'),

            );
        }
        $this->db->where("company_type_id", $id);
        $this->db->update("company_type", $details);

    }

}