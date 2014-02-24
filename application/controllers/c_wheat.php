<?php
class C_Wheat extends MY_Controller 
{
	public function externalWheatFlour_B1() 
	{
		$data['form'] = 'wheat/externalWheatFlour_B1';
		$data['form_id'] = 'externalWheatFlour_B1';
		$this -> load -> view('form', $data);
	}

	public function externalWheatFlour_B2() 
	{
		$data['form'] = 'wheat/externalWheatFlour_B2';
		$data['form_id'] = 'externalWheatFlour_B2';
		$this -> load -> view('form', $data);
	}

	public function externalWheatFlour_B3() 
	{
		$data['form'] = 'wheat/externalWheatFlour_B3';
		$data['form_id'] = 'externalWheatFlour_B3';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_A1() 
	{
		$data['form'] = 'wheat/internalWheatFlour_A1';
		$data['form_id'] = 'internalWheatFlour_A1';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_A2() 
	{
		$data['form'] = 'wheat/internalWheatFlour_A2';
		$data['form_id'] = 'internalWheatFlour_A2';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_B1() 
	{
		$data['form'] = 'wheat/internalWheatFlour_B1';
		$data['form_id'] = 'internalWheatFlour_B1';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_B2() 
	{
		$data['form'] = 'wheat/internalWheatFlour_B2';
		$data['form_id'] = 'internalWheatFlour_B2';
		$this -> load -> view('form', $data);
	}

	public function internalWheatFlour_C1() 
	{
		$data['form'] = 'wheat/internalWheatFlour_C1';
		$data['form_id'] = 'internalWheatFlour_C1';
		$this -> load -> view('form', $data);
	}
}
?>