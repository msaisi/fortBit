<?php 
$sel_compid=1;
if($sessionEmail!="admin")
		{
		 $sel_compid= $this ->session -> userdata('companyID');
		}
?>
<?php if($chart_data){?>
<script>
$(function () {
		console.log(<?php echo $chart_data;?>);
        $('#chart-section').highcharts(<?php echo $chart_data;?>);
    });
	   
	   
	  /*   $('#chart-section').highcharts({"title":{"text":"Monthly fortified Maize Production","x":"20"},
	   "legend":{"layout":"horizontal","align":"right","verticalAlign":"middle","borderWidth":0},
	   "xAxis":{"categories":["February","March","April","May","June","July","August","September","October","November","December"]},
	   "yAxis":{"title":{"text":"Fortified Production"},"plotLines":{"value":0,"width":1,"color":"#808080"}},
	   "series":{"type":"bar","name":"Maize Production",
	   "data":["1922.826","2590.549","2776.492","3638.342","2572.788","2296.973","1800","2257","2655","2994","3172"]}});
    });*/
</script>
<div id=chart-section></div>
<?php }else{?>
<label for="viewCompany">Company: </label>
<input name="maizeFactory1" id="maizeFactory1" type="hidden" value="<?php echo $sel_compid?>" />
            <select name="vehicleFactory" id="vehicleFactory" <?php if($sel_compid>1){?>disabled="disabled"	<?php }?>>

                    <option value="">Select One</option>
                   <?php foreach($this->company_list as $row):?>
                    <option value="<?php echo $row->company_id?>" <?php if (!(strcmp("$row->company_id", "$sel_compid"))) {echo "selected=\"selected\"";} ?>><?php echo $row->company_name?></option>
                <?php endforeach;?>
                </select>
</select>

<label for="harvestYear">Year: </label>
<select name="harvestYear" id="harvestYear"></select>
</select>

<label for="viewMonth">Month: </label>
<select name="viewMonth" id="viewMonth">
 <option value="">Select month</option>
                <?php foreach(listMonths() as $row):?>
                    <option value="<?php echo $row?>"><?php echo $row?></option>
                <?php endforeach;?>
</select>
<?php } ?>