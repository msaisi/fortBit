<?php
$category = $this -> session -> userdata('vehicle');
if($content=="Vehicles"){			?>
    <div class="sidebar" id="sidebar">
        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                <button class="btn btn-small btn-success">
                    <i class="icon-signal"></i>
                </button>

                <button class="btn btn-small btn-info">
                    <i class="icon-pencil"></i>
                </button>

                <button class="btn btn-small btn-warning">
                    <i class="icon-group"></i>
                </button>

                <button class="btn btn-small btn-danger">
                    <i class="icon-cogs"></i>
                </button>
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>

                <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span>

                <span class="btn btn-danger"></span>
            </div>
        </div><!--#sidebar-shortcuts-->

        <ul class="nav nav-list">
            <li class="active">
                <a href="<?php echo base_url()?>">
                    <i class="icon-dashboard"></i>
                    <span class="menu-text"> Dashboard </span>
                </a>
            </li>
            <?php #if($affiliation !="KEBS" || $affiliation !="MOPHS" ){
            switch($category){
                case "Oil":
                    $this->load->view('assets/menus/oil_menu');
                    break;
                case "Sugar":
                    $this->load->view('assets/menus/sugar_menu');
                    break;
                case "Maize":
                    $this->load->view('assets/menus/maize_menu');
                    break;
                case "Wheat":
                    $this->load->view('assets/menus/wheat_menu');
                    break;
                case "Salt":
                    $this->load->view('assets/menus/salt_menu');
                    break;
                case "N/A":
                    $this->load->view('assets/menus/all_menus');
                    break;
            }
            ?>


        </ul><!--/.nav-list-->

        <div class="sidebar-collapse" id="sidebar-collapse">
            <i class="icon-double-angle-left"></i>
        </div>
    </div>
    <!--End sidebar-->
<?php } ?>