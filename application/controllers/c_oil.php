<?php
class C_oil extends CI_Controller{

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
}
?>