<form name="internalFortified_A1" id="internalFortified_A1" method="POST" action="<?php echo base_url()?>submit/c_form_salt/form_internalFort_A1" >
	<!-- form for internal salt fortification. 1-a -->
	<h3 align="center"> FORTIFIED SALT-TABLE A-1</h3>
	<p align="center">
		INSPECTION FORM FOR INCOMING IODINE COMPOUNDS
	</p>
	<section class="block">
		<section class="column">
			<section class="row2">
				<section class="left">
					<label>PRODUCT TYPE:</label>
				</section>
				<section class="right">
					<select name="productType" id="productType">
						<option value="" selected="selected">Select One</option>
						<?php echo  $this -> selectPremixType ?>
					</select>
				</section>
			</section>
			<section class="row2">
				<section class="left">
					<label>Manufacturer:</label>
				</section>
				<section class="right">
					<select name="manufacturer" id="manufacturer">

						<option value="" selected="selected">Select One</option>
						<?php echo $this -> selectCompManufacturers ?>
					</select>
				</section>
			</section>
			<section class="row2">
				<section class="left">
					<label>Inspected by:</label>
				</section>
				<section class="right">
					<select name="inspectedBy" id="inspectedBy">

						<option value="" selected="selected">Select One</option>
						<option value="Port Official">Port Official</option>
						<option value="Quality Manager">Quality Manager</option>
					</select>
				</section>
			</section>
		</section>
		<section class="column" style="margin-bottom:30px">
			<section class="row2">
				<section class="left">
					<label>Purchase Order #:</label>
				</section>
				<section class="right">
					<input type="text" name="purchaseOrder" id="purchaseOrder"/>
				</section>
			</section>
			<section class="row2">
				<section class="left">
					<label>Date:</label>
				</section>
				<section class="right">
					<input type="date" name="date" id="date" readonly="true" placeholder="click for date"/>
				</section>
			</section>
		</section>
	</section>
	<section class="column-wide">
		<section class="row">
			<section class="row-title">
				<section class="left-wide">
					SPECIFICATIONS
				</section>
				<section class="right-wide">
					OBSERVATIONS
				</section>
			</section>
		</section>
		<section class="row">
			<section class="left">
				<label>Quantity</label>
			</section>
			<section class="center">
				<input type="number" name="quantity" id="quantity"/>
			</section>
		</section>

		<section class="row">
			<section class="left">
				<label for="lotObservation">Lot number:</label>
			</section>
			<section class="center">
				<input type="checkbox" name="lotNumber" id="lotNumber" value="yes"/>
				<input type="hidden" id="lotNumber_cb" name="lotNumber" value=""/>
			</section>
			<section class="right">
				<input type="text" name="lotObservation" id="lotObservation" />
			</section>
		</section>
		<section class="row">
			<section class="left">
				<label for="productionDate"> Production Date:</label>
			</section>
			<section class="center">
				<input type="checkbox" name="productionDate" id="productionDate" value="yes" />
				<input type="hidden" id="productionDate_cb" name="productionDate" value=""/>
			</section>
			<section class="right">
				<input type="text" name="productObservation" id="productObservation" class="autoDate"/>
			</section>
		</section>
		<section class="row">
			<section class="left">
				<label for="expirationDate">Expiration Date:</label>
			</section>
			<section class="center">
				<input type="checkbox" name="expirationDate" id="expirationDate" value="yes" />
				<input type="hidden" id="expirationDate_cb" name="expirationDate" value=""/>
			</section>
			<section class="right">
				<input type="text" name="expirationObservation" id="expirationObservation" class="futureDate"/>
			</section>
		</section>

		<section class="row">
			<section class="left">
				<label for="contentClaimed">Content claimed in label</label>
			</section>
			<section class="center">
				<input type="checkbox" name="contentClaimed" id="contentClaimed" value="yes"/>
				<input type="hidden" id="contentClaimed_cb" name="contentClaimed" value=""/>
			</section>
			<section class="right">
				<input type="text" name="contentObservation" id="contentObservation"/>
			</section>
		</section>
		<section class="row">
			<section class="left">
				<label for="certOfanalysis">Certificate of Analysis(result for every micronutrient)</label>
			</section>
			<section class="center">
				<input type="checkbox" name="certOfanalysis" id="certOfanalysis" value="yes"/>
				<input type="hidden" id="certOfanalysis_cb" name="certOfanalysis" value=""/>
			</section>
			<section class="right">
				<input type="text" name="certificateObservation" id="certificateObservation" />
			</section>
		</section>
		<section class="row">
			<section class="left">
				<label for="otherObservation">Other:</label>

			</section>
			<section class="center">
				<input type="text" name="other" id="other"/>
			</section>
			<section class="right">
				<input type="text" name="otherObservation" id="otherObservation" />
			</section>
		</section>
	</section>
	<section class="column-wide">
		<section class="row2">
			<section class ="left-wide">
				Accepted:
				<input type="radio" name="accepted" id="accepted_a" value="1" />
			</section>
			<section class ="right-wide">
				Rejected:
				<input type="radio" name="accepted" id="accepted_r" value="0"/>
			</section>
		</section>
		<section class="row-title">
			<label>REASONS FOR REJECTION/ACTIONS TAKEN:</label>
		</section>
		<section class="row">
			<textarea name="actionsTaken" id="actionsTaken"></textarea>
		</section>
		<section class="row2">
			<section class ="left-wide">
				<label>Received By:</label>
				<input type="text" name="receivedBy" id="receivedBy"/>
			</section>
			<section class ="right-wide">
				<label>Date:</label>
				<input type="date" name="inputDate" id="inputDate" readonly="true" placeholder="click for date"/>
			</section>
		</section>
	</section>
</form>