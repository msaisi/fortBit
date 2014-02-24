<?php
class C_maize extends MY_Controller{
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
}
?>