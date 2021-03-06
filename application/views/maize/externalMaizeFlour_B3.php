<form name="externalMaizeFlour_B3" id="externalMaizeFlour_B3" method="post" action="<?php echo base_url()?>submit/c_form_maize/form_externalFort_B3">
	<h3>FORTIFIED MAIZE FLOUR- AUDITS AND INSPECTION TABLE- B-3</h3>
	<p align="center">PRELIMINARY REPORT- TECHNICAL AUDIT AND INSPECTION VISITS</p>
	<section class="block">
		<section class="column">
			<section class="row">
				<section class="left">
					<label for="inspection_registry">Inspection Registry:</label>
				</section>
				<section class = "right">
					<input id="inspection_registry" name="inspectionRegistry" type="text" placeholder=""  required />
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="inspection_date">Date of Inspection:</label>
				</section>
				<section class = "right">
					<input id="inspections_date" name="inspectionDate" type="text" readonly="true" placeholder="click for date" />
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="factory_rep">Factory Representative:</label>
				</section>
				<section class = "right">
					<input id="factory_rep" name="factoryRepresentative" type="text" placeholder=""  required />
				</section>
			</section>
		</section>
		<section class="column">

			<section class="row">
				<section class="left">
					<label for="address">Address:</label>
				</section>
				<section class = "right">
					<input id="address" name="address" type="text" placeholder=""  />
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="telephone">Telephone:</label>
				</section>
				<section class = "right">
					<input id="telephone" name="telephone" type="text" placeholder=""  />
				</section>
			</section>
		</section>
	</section>
	<section class="block">
		<section class="column-wide">
			<section class="row-title">
				PRELIMINARY REPORT <p></p>
				1. Areas Visited(Check where applicable)
			</section>
			<section class="row">
				<section class="col-x4">
					<label for="production">Production</label>
					<input type="checkbox" name="cbo_production" id="cbo_production" value="production">
				</section>
				<section class="col-x4">
					<label for="packaging">Packaging</label>
					<input type="checkbox" name="cbo_packaging" id="cbo_packaging" value="packaging">
				</section>
				<section class="col-x4">
					<label for="fortification_site">Fortification site</label>
					<input type="checkbox" name="cbo_fortification_site" id="cbo_fortification_site" value="fortification_site">
				</section>
				<section class="col-x4">
					<label for="labaratory">Laboratory</label>
					<input type="checkbox" name="cbo_labaratory" id="cbo_labaratory" value="labaratory">
				</section>
			</section>
			<section class="row">
				<section class="col-x4">
					<label for="maizeWarehouse">Maize Warehouse</label>
					<input type="checkbox" name="cbo_warehouse" id="cbo_cbo_warehouse" value="maizeWarehouse">
				</section>
				<section class="col-x4">
					<label for="rm_maize_warehouse">Raw Material Warehouse</label>
					<input type="checkbox" name="cbo_rm_maize_warehouse" id="cbo_rm_maize_warehouse" value="rmMaizeWarehouse">
				</section>
				<section class="col-x4">
					<label for="other">Other:</label>
					<input type="checkbox" name="cbo_other" id="cbo_other" value="other">
				</section>
			</section>
		</section>
		<section class="column-wide">
			<input type="hidden" name="areas_visited" id="areas_visited" value=""/>

			<section class"row-title">
				2. Non-Compliances
			</section>

			<section class="row">

				<section class="left-wide">
					List of the non-compliances found
					<textarea id="nonCompliances" name="nonCompliances" type="text" placeholder=""  required></textarea>
				</section>

				<section class="right-wide">
					Suggestions for Improvement
					<textarea id="suggestionsForImprovement" name="suggestionsForImprovement" type="text" placeholder=""  required></textarea>
				</section>
			</section>
		</section>
	</section>
	<section class="column">
		<section class="row">
			<label for="health_officer" >Public Health Officer:</label>
			<input type="text" id="publicHealthOfficer" name="publicHealthOfficer" value=""  required/>
		</section>
		<label for="ho_signature_date" >Date:</label>
		<input type="text" id="inspectorDate" name="inspectorDate" value="" class="autoDate" readonly="true" placeholder="click for date"/>
	</section>
	<section class="column">
		<section class="row">
			<label for="factory_rep" >Received by (Factory Representative:)</label>
			<input type="text" id="receivedBy" name="receivedBy" value=""  required/>
		</section>
		<section class="row">
			<label for="ro_signature_date" >Date:</label>
			<input type="text" id="receivedDate" name="receivedDate" value="" class="autoDate" placeholder="click for date"  required/>
		</section>
	</section>
	<section class="column">
		<section class="row">
			<label for="supervisor_name" >Supervisor(Name/Signature)</label>
			<input type="text" id="supervisor_name" name="supervisorName" value=""  required/>
		</section>
	</section>
	<section class="column">
		<section class="row">
			<label for="s_signature_date" >Date</label>
			<input type="text" id="supervisorSignatureDate" name="supervisorSignatureDate" value=""  class="autoDate" readonly="true" placeholder="click for date"/>
		</section>
	</section>
</form>