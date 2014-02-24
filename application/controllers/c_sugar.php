<?php
class C_Sugar extends CI_Controller {

	public function internalSugar_A1() 
	{
		$data['form'] = 'sugar/internalSugar_A1';
		$data['form_id'] = 'internalSugar_A1';
		$this -> load -> view('form', $data);
	}

	public function internalSugar_A2() 
	{
		$data['form'] = 'sugar/internalSugar_A2';
		$data['form_id'] = 'internalSugar_A2';
		$this -> load -> view('form', $data);
	}

	public function internalSugar_A3() 
	{
		$data['form'] = 'sugar/internalSugar_A3';
		$data['form_id'] = 'internalSugar_A3';
		$this -> load -> view('form', $data);
	}

	public function internalSugar_B1() 
	{
		$data['form'] = 'sugar/internalSugar_B1';
		$data['form_id'] = 'internalSugar_B1';
		$this -> load -> view('form', $data);
	}

	public function internalSugar_C1() 
	{
		$data['form'] = 'sugar/internalSugar_C1';
		$data['form_id'] = 'internalSugar_C1';
		$this -> load -> view('form', $data);
	}

	public function internalSugar_C2() 
	{
		$data['form'] = 'sugar/internalSugar_C2';
		$data['form_id'] = 'internalSugar_C2';
		$this -> load -> view('form', $data);
	}

	public function internalSugar_C3() 
	{
		$data['form'] = 'sugar/internalSugar_C3';
		$data['form_id'] = 'internalSugar_C3';
		$this -> load -> view('form', $data);
	}

	public function internalSugar_D1() 
	{
		$data['form'] = 'sugar/internalSugar_D1';
		$data['form_id'] = 'internalSugar_D1';
		$this -> load -> view('form', $data);
	}

	public function externalSugar_B1() 
	{
		$data['form'] = 'sugar/externalSugar_B1';
		$data['form_id'] = 'externalSugar_B1';
		$this -> load -> view('form', $data);

	}

	public function externalSugar_B2() 
	{
		$data['form'] = 'sugar/externalSugar_B2';
		$data['form_id'] = 'externalSugar_B2';
		$this -> load -> view('form', $data);
	}

	public function externalSugar_B3() 
	{
		$data['form'] = 'sugar/externalSugar_B3';
		$data['form_id'] = 'externalSugar_B3';
		$this -> load -> view('form', $data);
	}

	public function qualityAssurance_A1() 
	{
		$data['form'] = 'sugar/qualityAssurance_A1';
		$data['form_id'] = 'equalityAssurance_A1';
		$this -> load -> view('form', $data);
	}

	public function qualityAssurance_B1() 
	{
		$data['form'] = 'sugar/qualityAssurance_B1';
		$data['form_id'] = 'qualityAssurance_B1';
		$this -> load -> view('form', $data);
	}

	public function qualityAssurance_B2() 
	{
		$data['form'] = 'sugar/qualityAssurance_B2';
		$data['form_id'] = 'qualityAssurance_B2';
		$this -> load -> view('form', $data);
	}

	public function qualityAssurance_C1() 
	{
		$data['form'] = 'sugar/qualityAssurance_C1';
		$data['form_id'] = 'qualityAssurance_C1';
		$this -> load -> view('form', $data);
	}

}
?>