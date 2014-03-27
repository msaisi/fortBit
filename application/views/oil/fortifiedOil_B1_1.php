<script type="text/javascript">
function fillVal(cb)
{
	value=cb.value;
	$('#oilFactory1').val(value);
}
</script>
<?php 
$sel_compid=1;
if($sessionEmail!="admin")
		{
		 $sel_compid= $this ->session -> userdata('companyID');
		}
		?>
<form name="fortifiedOil_prod" id="fortifiedOil_prod" method="post"
      action="<?php echo base_url() ?>submit/c_form_oil/fortifiedOil_prod/0" class="form-horizontal">
   <h3 align="center">FORTIFIED OIL QC/QA-TABLE B-1</h3>
   <p align="center">PRODUCTION LOG FOR OIL FORTIFIED WITH VITAMIN A</p>
   <p align="center">&nbsp;</p>
    <div class="row-fluid">
        <div class="span3" >
            <h2 class="blue" style="width:220px; background: transparent; border: none;">Company Details</h2>
            <p>Oil Factory:</p>
			<input name="oilFactory1" id="oilFactory1" type="hidden" value="<?php echo $sel_compid?>" />
            <select name="oilFactory" id="oilFactory" <?php if($sel_compid>1){?>disabled="disabled"	<?php }?> onchange="fillVal(this)">

                    <option value="">Select One</option>
                   <?php foreach($this->company_list as $row):?>
                    <option value="<?php echo $row->company_id?>" <?php if (!(strcmp("$row->company_id", "$sel_compid"))) {echo "selected=\"selected\"";} ?>><?php echo $row->company_name?></option>
                <?php endforeach;?>
                </select>
            <p>Year:</p>
                <select name="harvestYear" id="harvestYear"></select>

           <p>Month</p>

            <select name="prodMonth_1" id="prodMonth_1"  class="cloned">
                <option value="">Select month</option>
                <?php foreach(listMonths() as $row):?>
                    <option value="<?php echo $row?>"><?php echo $row?></option>
                <?php endforeach;?>
            </select>

            <h2 class="blue" style="width:220px; background: transparent; border: none;">Premix Details</h2>
            <p>Opening Balance (kg)</p>

            <input type="number" id="oBal_1" style="width: 220px !important; height: 25px;" name="oBal_1" class="cloned"/>
            <p>Qty Delivered (kg)</p>

            <input type="number" id="qtyDel_1" style="width: 220px !important; height: 25px;" name="qtyDel_1" class="cloned"/>
            <p>Supplier/Manufacturer </p>

            <input type="text" id="pSup_1"  style="width: 220px !important; height: 25px;" name="pSup_1" class="cloned"/>
            <p>Qty Rejected (kg)</p>

            <input type="number" id="reject_1" style="width: 220px !important; height: 25px;" name="reject_1" class="cloned"/>
              </div>
        <div class="span3">

            <p>Opening Issued(Oil and Fats in kg)</p>

            <input type="number" id="QIOF_1" style="width: 220px !important; height: 25px;" name="QIOF_1" class="cloned"/>

            <p>Opening Issued(Margarine in Kg) </p>

             <input type="number" id="QIM_1" style="width: 220px !important; height: 25px;" name="QIM_1" class="cloned"/>

            <p>Closing Balance </p>

            <input type="number" id="CBAL_1" style="width: 220px !important; height: 25px;"  name="CBAL_1" class="cloned"/>
            <h2 class="blue" style="width:220px; background: transparent; border: none;">Production Data</h2>
            <p>Dosage Rate(Oil & Fats)</p>
            <input type="number" id="DROF_1" style="width: 220px !important; height: 25px;" name="DROF_1" class="cloned" />
            <p>Theoretical Production</p>
            <input type="number" id="tProd_1" style="width: 220px !important; height: 25px;" name="tProd_1" class="cloned"/>
            <p>Actual Prodution(in Fats)</p>
            <input type="number" id="aProdf_1" style="width: 220px !important; height: 25px;"  name="aProdf_1" class="cloned"/>

            <p>Actual Prodution(in Oil)</p>
            <input type="number" id="aProdo_1" style="width: 220px !important; height: 25px;" name="aProdo_1" class="cloned"/>
            </div>

    <div class="span3">
            <p>Dosage Rate (in Margarine)</p>
            <input type="number" id="DRM_1" style="width: 220px !important; height: 25px;" name="DRM_1" class="cloned"/>
            <p>Theoretical Production(in Magarine)</p>
            <input type="number" id="tProdM_1" style="width: 220px !important; height: 25px;" name="tProdM_1" class="cloned"/>
            <p>Actual Production (in Margarine)</p>
            <input type="number" id="aProd_1" style="width: 220px !important; height: 25px;" name="aProd_1" class="cloned"/>
            <p> Production (Unfortified)</p>
            <input type="number" id="prodU_1" style="width: 220px !important; height: 25px;" name="prodU_1" class="cloned"/>
            <p>Exported Fats</p>
            <input type="number" id="exportedFats" style="width: 220px !important; height: 25px;" name="exportedFats" class="cloned"/>
        <p>Exported Oil</p>
        <input type="number" id="exportedOil" style="width: 220px !important; height: 25px;" name="exportedOil" class="cloned"/>      
     
  <p>Brands with Fortification logo</p>
   <div id="c_k">
  <label for="brandname">
 
		<?php
		$CI =& get_instance();
		if($CI->radio_boxes() > 0){
		foreach($CI->radio_boxes() as $r):?>
<!-- <label>	-->	
<input  name="brandname[]" type="checkbox" value="<?php echo $r->brand_name?>"><span class="lbl"> <?php echo $r->brand_name?></span><br>
<!--</label>	-->	
		<?php endforeach; }?>
        </label>
        </div>
             <button type="submit" class="btn btn-primary">Save</button>
        <button type="submit" class="btn btn-warning" formaction="<?php echo base_url() ?>submit/c_form_oil/fortifiedOil_prod/1">Save and Continue</button>
        </div>

        </div>

    </div>
</form>