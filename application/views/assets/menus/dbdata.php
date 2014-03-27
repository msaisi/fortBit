<li>
						<a href="#" id="prent" class="dropdown-toggle">
							<i class="icon-desktop"></i>
							<span class="menu-text"> Production Data </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
             <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Oil"){?>           
			<li>
				<a id="prent" href="<?php echo base_url()?>prodOil"><i class="icon-double-angle-right"></i>Oil</a>
			</li>
            <?php }?>
             <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Sugar"){?> 
			<li>
				<a id="prent" href="#"><i class="icon-double-angle-right"></i>Sugar</a>
			</li>
             <?php }?>
             <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Maize"){?> 
			<li>
				<a id="prent" href="<?php echo base_url()?>prodMaize"><i class="icon-double-angle-right"></i>Maize</a></li>
            <?php }?>
            <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Wheat"){?> 
            <li>
				<a id="prent" href="<?php echo base_url()?>prodWheat"><i class="icon-double-angle-right"></i>Wheat</a></li>
             <?php }?>
             <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Salt"){?>     
            <li>
				<a id="prent" href="#"><i class="icon-double-angle-right"></i>Salt</a></li>
             <?php }?>
            </ul>
	</li>
<li>
						<a href="#" id="prent" class="dropdown-toggle">
							<i class="icon-desktop"></i>
							<span class="menu-text"> Reports </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
             <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Oil"){?>              
			<li>
				<a id="prent" href="<?php echo base_url()?>reports/oil"><i class="icon-double-angle-right"></i>Oil</a>
			</li> <?php }?>
             <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Sugar"){?>  
			<li>
				<a id="prent" href="#"><i class="icon-double-angle-right"></i>Sugar</a>
			</li> <?php }?>
             <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Maize"){?>  
			<li>
				<a id="prent" href="<?php echo site_url()?>reports/maize"><i class="icon-double-angle-right"></i>Maize</a></li> <?php }?>
                 <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Wheat"){?>  
            <li>
				<a id="prent" href="<?php echo site_url()?>reports/wheat"><i class="icon-double-angle-right"></i>Wheat</a></li> <?php }?>
                 <?php if($this->userVehicle==="MOPHS" || $this->userVehicle==="Salt"){?>  
            <li>
				<a id="prent" href="#"><i class="icon-double-angle-right"></i>Salt</a></li> <?php }?>
            </ul>
	</li>