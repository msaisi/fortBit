<?php

class Foodtypes extends MY_Model {


    function add($details=""){
        if(isset($_POST)){
            $details = array(
                'food_type_name'=>$this->input->post('food_type_name')
            );
        }
        if($this->db->insert("food_types",$details)){
            return TRUE;
        }else{
            return FALSE;
        }
    }

    function get_details($filter=""){
        $this->db->select('*');
        if(is_array($filter)){
            $this->db->where($filter);
        }
        $this->db->from("food_types");
        return $this->db->get()->result();
    }



    function update($id,$details=""){
        if(isset($_POST)){
            $details = array(
                'food_type_name'=>$this->input->post('food_type_name'),

            );
        }
        $this->db->where("foodtype_Id", $id);
        $this->db->update("user_rolers", $details);

    }

}