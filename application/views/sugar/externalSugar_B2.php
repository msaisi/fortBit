<form name="externalSugar_B2" id="externalSugar_B2" method="post" action="<?php echo base_url()?>submit/c_form_sugar/form_externalFort_B2" >
	<h3>FORTIFIED SUGAR- AUDITS AND INSPECTION TABLE B-2</h3>
	<p align="center">
		CHECKLIST OF TECHNICAL AUDIT AND INSPECTION VISIT TO SUGAR FACTORIES
	</p>
	<section class="block">
		<section class="column">
			<section class="row">
				<section class="left">
					<label for="inspectionRegistry">Inspection Registry:</label>
				</section>
				<section class="right">
					<input id="inspectionRegistry" name="inspectionRegistry" type="text" placeholder=""  required>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="inspection_date">Date of Inspection:</label>
				</section>
				<section class="right">
					<input id="inspectionDate" name="inspectionDate" type="text" placeholder="datepicker"  required>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="inspectionOfficer">Public Health Officers Name:</label>
				</section>
				<section class="right">
					<input id="inspectionOfficer" name="inspectionOfficerName" type="text" placeholder="Surname, Other Names"  required>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="address">Address:</label>
				</section>
				<section class="right">
					<input id="address" name="address" type="text" placeholder=""  required>
				</section>
			</section>
			<!--section class="row">
			<section class="left">
			<label for="factory_name">Factory name:</label>
			</section>
			<section class="right">
			<input id="factoryName" name="factoryName" type="text" placeholder=""  required>
			</section>
			</section-->
		</section>
		<section class="column" style="margin-bottom:10px">

			<section class="row">
				<section class="left">
					<label for="telephone">Telephone:</label>
				</section>
				<section class="right">
					<input id="telephone" name="telephone" type="text" placeholder=""  required>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="fax">Fax:</label>
				</section>
				<section class="right">
					<input id="fax" name="fax" type="text" placeholder=""  required>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label for="email">Email:</label>
				</section>
				<section class="right">
					<input id="email" name="email" type="text" placeholder=""  required>
				</section>
			</section>
		</section>
	</section>
	<section class="block">
		<section class="column">
			<section class="row-title">
				<section class="left">
					ASPECTS
				</section>
				<section class="right" style="float:right">
					<section class="col">
						YES
					</section>
					<section class="col">
						NO
					</section>
					<section class="col">
						N/A
					</section>
				</section>
			</section>
			<section class="row-title">
				1.1 Cleaning and sanitation:
			</section>
			<section class="row">
				<section class="left">
					<label> 1.1.1 Production area </label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="productionArea" id="pda_y" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="productionArea" id="pda_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="productionArea" id="pda_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.1.2 Packaging area</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="packagingArea" id="pga_y" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="packagingArea" id="pga_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="packagingArea" id="pga_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.1.3 Warehouse</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="warehouse" id="wh_y" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="warehouse" id="wh_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="warehouse" id="wh_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.1.4 Staff facilities and toilettes</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="staffFacilities" checked="checked" id="staff_f_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="staffFacilities" id="staff_f_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="staffFacilities" id="staff_f_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row-title">
				1.2 Personnel:
			</section>
			<section class="row">
				<section class="left">
					<label> 1.2.1 Hygiene as required in regulations</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="hygiene" id="hygiene_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="hygiene" id="hygiene_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="hygiene" id="hygiene_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.2.2 Wearing protective clothing</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="protectiveClothing" id="protective_clothing_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="protectiveClothing" id="protective_clothing_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="protectiveClothing" id="protective_clothing" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.2.3 Trained in the tasks they perform</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="trainedInTask" id="trained_y" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="trainedInTask" id="trained_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="trainedInTask" id="trained_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row-title">
				<label> 1.3 Written procedures or instructions for:</label>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.3.1 Receipt and storage of premix</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="receiptAndStorage" checked="checked" id="rsp_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="receiptAndStorage" id="rsp_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="receiptAndStorage" id="rsp_na" value="n/a" />
					</section>
				</section>
			</section>

			<section class="row">
				<section class="left">
					<label> 1.3.2 Feeder verification</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="feederVerification" id="feeder_verification_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="feederVerification" id="feeder_verification_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="feederVerification" id="feeder_verification_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.3.3 Sampling of sugar for QC</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="samplingSugar" checked="checked" id="sampling_sugar_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="samplingSugar" id="sampling_sugar_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="samplingSugar" id="sampling_sugar_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 1.3.4 Vitamin A assay for fortified sugar</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="vitaminAAssay" checked="checked" id="vitaminAAssay" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="vitaminAAssay" id="vitaminAAssay" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="vitaminAAsay" id="vitaminAAssay" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row-title">
				2.0 Vitamin A premix:
			</section>
			<section class="row">
				<section class="left">
					<label> 2.1 Premix inventory is upto date</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="premixInventoryUpToDate" checked="checked" id="premix_inventory_uptodate_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="premixInventoryUpToDate" id="premix_inventory_uptodate_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="premixInventoryUpToDate" id="premix_inventory_uptodate_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 2.2 Stored under adequate conditions</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="storedAdequate" id="storedAdequate" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="storedAdequate" id="storedAdequate" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="storedAdequate" id="storedAdequate" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 2.3 "First-in, first-out" system </label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="fifoSystem" id="fifo_system_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="fifoSystem" id="fifo_system_na" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="fifoSystem" id="fifo_system_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 2.4 Adequately delivered to fortification site</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="adequatelyDelivered" id="adequatelyDelivered" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="adequatelyDelivered" id="adequatelyDelivered" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="adequatelyDelivered" id="adequatelyDelivered" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 2.5 Verification of retinol levels in premix</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="retinolLevels" id="retinolLevels" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="retinolLevels" id="retinolLevels" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="retinolLevels" id="retinolLevels" value="n/a" />
					</section>
				</section>
			</section>
		</section>
		<section class="column">
			<section class="row-title">
				<section class="left">
					ASPECTS
				</section>
				<section class="right" style="float:right">
					<section class="col">
						YES
					</section>
					<section class="col">
						NO
					</section>
					<section class="col">
						N/A
					</section>
				</section>
			</section>
			<section class="row-title">
				3.0 Sugar Fortification with vitamin A:
			</section>
			<section class="row">
				<section class="left">
					<label> 3.1 Feeder flow is verified at least every shift</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="feederFlow" id="feederFlow" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="feederFlow" id="feederFlow" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="feederFlow" id="feederFlow" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 3.2 Records of feeder verification are available</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="feederRecordsAvailable" id="feeder_records_available_y" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="feederRecordsAvailable" id="feeder_records_available_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="feederRecordsAvailable" id="feeder_records_available_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 3.3 Feeder is adjusted when needed</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="feederAdjusted" id="feederAdjusted" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="feederAdjusted" id="feederAdjusted" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="feederAdjusted" id="feederAdjusted" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 3.4 Premix level in feeder was adequate during visit</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="premixLevelAdequate" id="premixLevelAdequate" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="premixLevelAdequate" id="premixLevelAdequate" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="premixLevelAdequate" id="premixLevelAdequate" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 3.5 Evidence of maintenance of the feeder</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="feederMaintenance" id="feederMaintenance" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="feederMaintenance" id="feederMaintenance" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="feederMaintenance" id="feederMaintenance" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 3.6 Records of sugar/premix up to date</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="sugarPremix" id="sugarPremix" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="sugarPremix" id="sugarPremix" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="sugarPremix" id="sugarPremix" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 3.7 Sugar samples taken for analysis in every shift</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="shiftSamplesTaken" id="shift_samples_taken_y" checked="checked" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="shiftSamplesTaken" id="shift_samples_taken_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="shiftSamplesTaken" id="shift_samples_taken_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row-title">
				3.8 Corrective action taken when:
			</section>
			<section class="row">
				<section class="left">
					<label> 3.8.1 Ratio sugar produced/premix is not right</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="ratioAction" id="ratio_action_y" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="ratioAction" id="ratio_action_n" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="ratioAction" id="ratio_action_na" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 3.8.2 Results show retinol <5 mg/kg </label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="retinolResults" id="retinolResults" value="yes" />
					</section>
					<section class="col">
						<input type="radio" name="retinolResults" id="retinolResults" value="no" />
					</section>
					<section class="col">
						<input type="radio" name="retinolResults" id="retinolResults" checked="checked" value="n/a" />
					</section>
				</section>
			</section>
			<section class="row-title">
				4.0 Quality of fortified sugar:
			</section>
			<section class="row">
				<section class="left">
					<label> 4.1 Records of sugar samples analyzed using:</label>
					<!--/section>
					<section class="right">
					<section class="col">
					<input type="radio" name="sugarSamplesAnalyzed" id="sugar_samples_analyzed_y" value="yes" />
					</section>
					<section class="col">
					<input type="radio" name="sugarSamplesAnalyzed" id="sugar_samples_analyzed_n" value="no" />
					</section>
					<section class="col">
					<input type="radio" name="sugarSamplesAnalyzed" id="sugar_samples_analyzed_na" value="n/a" />
					</section>
					</section-->
				</section>
				<section class="row">
					<section class="left">
						<label> 4.1.1 Semi quantitative method</label>
					</section>
					<section class="right">
						<section class="col">
							<input type="radio" name="semiQuantitative" id="semiQuantitative" value="yes" />
						</section>
						<section class="col">
							<input type="radio" name="semiQuantitative" id="semiQuantitative" value="no" />
						</section>
						<section class="col">
							<input type="radio" name="semiQuantitative" id="semiQuantitative" value="n/a" />
						</section>
					</section>
				</section>
				<section class="row">
					<section class="left">
						<label> 4.1.2 Quantitative Method (internal lab.)</label>
					</section>
					<section class="right">
						<section class="col">
							<input type="radio" name="internalLab" id="internal_lab_y" value="yes" />
						</section>
						<section class="col">
							<input type="radio" name="internalLab_n" id="internal_lab_n" value="no" />
						</section>
						<section class="col">
							<input type="radio" name="internalLab" id="internal_lab_na" checked="checked" value="n/a" />
						</section>
					</section>
				</section>
				<section class="row">
					<section class="left">
						<label> 4.1.3 Quantitative Method V(external lab.)</label>
					</section>
					<section class="right">
						<section class="col">
							<input type="radio" name="externalLab" id="external_lab_y" value="yes" />
						</section>
						<section class="col">
							<input type="radio" name="externalLab" id="external_lab_n" value="no" />
						</section>
						<section class="col">
							<input type="radio" name="externalLab" id="external_lab_na" checked="checked" value="n/a" />
						</section>
					</section>
				</section>
				<section class="row">
					<section class="left">
						<label> 4.2 Daily composite samples are prepared</label>
					</section>
					<section class="right">
						<section class="col">
							<input type="radio" name="dailyCompPrepared" id="daily_compo_prepared_y" checked="checked" value="yes" />
						</section>
						<section class="col">
							<input type="radio" name="dailyCompPrepared" id="daily_compo_prepared_n" value="no" />
						</section>
						<section class="col">
							<input type="radio" name="dailyCompPrepared" id="daily_compo_prepared_na" value="n/a" />
						</section>
					</section>
				</section>
				<section class="row">
					<section class="left">
						<label>4.3 Last 30 samples are stored and available</label>
					</section>
					<section class="right">
						<section class="col">
							<input type="radio" name="lastSamplesStored" id="last_samples_stored_y" checked="checked" value="yes" />
						</section>
						<section class="col">
							<input type="radio" name="lastSamplesStored" id="last_samples_stored_n" value="no" />
						</section>
						<section class="col">
							<input type="radio" name="lastSamplesStored" id="last_samples_stored_na" value="n/a" />
						</section>
					</section>
				</section>
				<section class="row">
					<section class="left">
						<label>4.4 Labeling meets specifications</label>
					</section>
					<section class="right">
						<section class="col">
							<input type="radio" name="goodLabeling" id="good_labeling_y" checked="checked" value="yes" />
						</section>
						<section class="col">
							<input type="radio" name="goodLabeling" id="good_labeling_n" value="no" />
						</section>
						<section class="col">
							<input type="radio" name="goodLabeling" id="good_labeling_na" value="n/a" />
						</section>
					</section>
				</section>
				<section class="row">
					<section class="left">
						<label> 4.5 Fortified sugar is stored adequately</label>
					</section>
					<section class="right">
						<section class="col">
							<input type="radio" name="fortifiedSugarStored" id="fortifiedSugarStored_y" checked="checked" value="yes" />
						</section>

						<section class="col">
							<input type="radio" name="fortifiedSugarStored" id="fortifiedSugarStored_n" value="no" />
						</section>

						<section class="col">
							<input type="radio" name="fortifiedSugarStored" id="fortifiedSugarStored_na" value="n/a" />
						</section>
					</section>
				</section>
			</section>
			<section class="row">
				<section class="left">
					<label> 4.6 "First-in, first out" system applied to dispatch</label>
				</section>
				<section class="right">
					<section class="col">
						<input type="radio" name="fifoSystemDispatched" id="fifoSystem_y" checked="checked" value="yes" />
					</section>

					<section class="col">
						<input type="radio" name="fifoSystemDispatched" id="fifoSystem_n" value="no" />
					</section>

					<section class="col">
						<input type="radio" name="fifoSystemDispatched" id="fifoSystem_na" value="n/a" />
					</section>
				</section>
			</section>
		</section>
	</section>
	<section class="block">
		<section class="column-wide">
			<section class="row-title">
				Actions taken from recommendations of last technical auditing and inspection visit (Table B-2)
			</section>
			<section class="row">
				<section class="col-x4">
					Recommendations
					<textarea id="auditRecommendations" name="auditRecommendations"></textarea>
				</section>
				<section class="col-x4">
					Corrective actions taken
					<textarea id="correctiveActionTaken" name="correctiveActionTaken"></textarea>
				</section>
				<section class="right-wide">
					Assessment of corrective action(2)
					<section class="left-wide">
						<select name="assessmentCorrectiveAction" id="assessmentCorrectiveAction" >
							<option>Adequate</option>
							<option>Inadequate</option>
						</select>
					</section>
					<section class="right-wide">
						Comments
						<textarea id="auditComments" name="auditComments"></textarea>
					</section>
				</section>
			</section>
			<section class="row-title">
				New Recommmendations
			</section>
			<section class="row">
				<section class="left-wide">
					Non-compliances
					<textarea id="nonCompliancesIdentified" name="nonCompliancesIdentified"></textarea>
				</section>
				<section class="right-wide">
					Suggestions for improvement
					<textarea id="suggestionsForImprovement" name="suggestionsForImprovement"></textarea>																																																																																										
			           Type of Vitamin Flortificant:
 <input type="text" id="vitaminFortificant" name="vitaminFortificant" value="" placeholder="" />
				</section>

			</section>
		</section>
	</section>
	<table>
		<tr>
			<td width="144">ID Composite</td>
			<td width="144">Factory estimation[Vitamin A](mg/kg)</td>
			<td width="144">Results from inspection[Vitamin A](mg/kg)</td>
			<td width="144">ID other samples</td>
			<td width="144">Estimated average[Vitamin A](mg/kg)</td>
			<td width="144">Results from inspection[Vitamin A](mg/kg)</td>
		</tr>
		<tr class="clonable">
			<td width="144">
			<input type="text"  name="IDComposite" id="IDComposite"/>
			</td>
			<td width="144">
			<input type="text"  name="estimatedAverage0" />
			</td>
			<td width="144">
			<input type="text"  name="inspectionResults0" id="inspectionResults0"/>
			</td>
			<td width="144">
			<input type="text"  name="IDOther" id="iodineLot"/>
			</td>
			<td width="144">
			<input type="text"  name="estimatedAverage1" id="estimatedAverage"/>
			</td>
			<td width="144">
			<input type="text" name="inspectionResults1" id="inspectionResults1"/>
			</td>
		</tr>
		<tr id="formbuttons" class="clonable">
			<input title="Adds a new row after the last" type="button" class="awesome myblue medium" id="clonetrigger" value="Add a row"/>
			<input title="Removes the last row" type="button" class="awesome myblue medium" id="cloneremove" value="Remove Row"/>
		</tr>
	</table>

	<section class="row">
		<!--section class="left-wide">
		Public Health Officer (Name)
		<input id="inspection_officer" name="inspectionOfficerName" type="text" placeholder="Surname, Other Names"  required>
		</section-->
		<!--section class="right-wide">
		Date
		<input id="inspection_date" name="inspectionDate" type="text" placeholder="datepicker"  required>
		</section-->
	</section>
	<section class="column-wide">
		<section class="row">
			<section class="left-wide">
				Supervisor (Name)
				<input id="supervisor_name" name="supervisorName" type="text" placeholder="Surname, Other Names"  required>
			</section>
			<section class="right">
				Date
				<input id="supervision_date" name="supervisionDate" type="text" placeholder="datepicker"  required>
			</section>
		</section>
	</section>

</form>