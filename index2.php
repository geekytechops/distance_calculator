<!doctype html>
<html lang="en">
    <head>        
        <meta charset="utf-8" />
        <title>Distance Calculator</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
        <!-- App favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />

<!-- Bootstrap Css -->
<link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
<!-- Icons Css -->
<link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<!-- App Css-->
<link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<!-- DataTables -->
    </head>

    <body data-sidebar="dark">
    
    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">                    
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

<div data-simplebar class="h-100">

    <!--- Sidemenu -->
    <div id="sidebar-menu">
        <!-- Left Menu Start -->
        <ul class="metismenu list-unstyled" id="side-menu">
            <li class="menu-title">MENU</li>                
            <li>
                <a href="index.html" class="waves-effect">
                    <i class="ri-user-location-fill"></i>                                    
                    <span>Distance Calculator</span>
                </a>
            </li>                           
            <li>
                <a href="add_location.html" class="waves-effect">
                    <i class="ri-pin-distance-fill"></i>                                    
                    <span>Add Location</span>
                </a>
            </li>                           
            <li>
                <a href="settings.html" class="waves-effect">
                    <i class="ri-settings-4-fill"></i>                                    
                    <span>Settings</span>
                </a>
            </li>                                       
        </ul>
    </div>
    <!-- Sidebar -->
</div>
</div>
<!-- Left Sidebar End -->
<style>
.vertical-menu{
    top:0;
}
.page-content{
    padding:calc(20px + 24px) calc(24px / 2) 60px calc(24px / 2);
}
.form-invalid{        
border-color: #ff3d60;
padding-right: calc(1.5em + .94rem);
background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 12' width='12' height='12' fill='none' stroke='%23ff3d60'%3e%3ccircle cx='6' cy='6' r='4.5'/%3e%3cpath stroke-linejoin='round' d='M5.8 3.6h.4L6 6.5z'/%3e%3ccircle cx='6' cy='8.2' r='.6' fill='%23ff3d60' stroke='none'/%3e%3c/svg%3e");
background-repeat: no-repeat;
background-position: right calc(.375em + .235rem) center;
background-size: calc(.75em + .47rem) calc(.75em + .47rem);
}
.form-valid{
    border-color: #0ac074;
padding-right: calc(1.5em + .94rem);
background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%230ac074' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e");
background-repeat: no-repeat;
background-position: right calc(.375em + .235rem) center;
background-size: calc(.75em + .47rem) calc(.75em + .47rem);
}
.toast{
    width: 350px;
max-width: 100%;
font-size: .875rem;
pointer-events: auto;
background-color:unset !important;
background-clip: unset !important;
border: unset !important;
-webkit-box-shadow: unset !important;
box-shadow: unset !important;
border-radius: unset !important;
}

.dataTables_filter {
display: none;
}
</style>

<div style="z-index: 11">
<div id="borderedToast1" class="toast overflow-hidden position-absolute p-3 top-0 end-0" role="alert" aria-live="assertive" aria-atomic="true">
<div class="align-items-center text-white bg-primary border-0">
    <div class="d-flex">
        <div class="toast-body" id="toast-text">
            Hello, world! This is a toast message.
        </div>
        <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
</div>
</div>
</div>
            <div class="main-content">            

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0">Distance Calculator</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Distance Calculator</a></li>
                                            <li class="breadcrumb-item active">Calculator</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body row d-flex align-items-end">                                                
                                        <div class="row">
                                            <label for="example-text-input" class="col-form-label">Location Coordinates</label>
                                            <div class="col-md-4">
                                                <input class="form-control" type="text" value="" id="coordinates" placeholder="Enter Coordinates">
                                                <div class="invalid-feedback">Please enter the coordinates</div>
                                            </div>
                                            <div class="col-md-2">
                                                <input class="form-control btn btn-primary" type="button" value="Submit" id="distance_fetch">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->                                                                     

                        <div class="row">
                            <div class="col-12">
                            <div class="card">
                            <div class="card-body">
                            <div class="card-title">Results</div>
                            <table id="datatable" class="table dt-responsive nowrap" data-order="[[ 6, &quot;asc&quot; ]]" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th class="no-sort">Organisation Name</th>
                                                <th class="no-sort">Sub Urb</th>
                                                <th class="no-sort">Address</th>
                                                <th class="no-sort">Facility</th>
                                                <th class="no-sort">Longitude</th>
                                                <th class="no-sort">Latitude</th>
                                                <th class="no-sort">Distance(Kms)</th>
                                            </tr>
                                            </thead>
        
        
                                            <tbody id="distance_result">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->                                                                     
                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->
<!-- JAVASCRIPT -->
<script src="assets/libs/jquery/jquery.min.js"></script>
<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/libs/metismenu/metisMenu.min.js"></script>
<script src="assets/libs/simplebar/simplebar.min.js"></script>
<script src="assets/libs/node-waves/waves.min.js"></script>


<script src="assets/js/pages/bootstrap-toasts.init.js"></script>

<script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
<!-- <script src="assets/js/pages/datatables.init.js"></script> -->

<script src="assets/js/app.js"></script>

<script>
var locations=[];
var setting='';
$(document).ready(function(){
    $.ajax({
        type:'post',
        // url:'includes/data_control.php',
        url:'https://geekytechops.000webhostapp.com/data_control.php',
        data:{formName:'get_locations'},
        success:function(data){
            locations=JSON.parse(data.split('||')[0]);     
            // console.log(locations);
            setting=data.split('||')[1];
        }
    })
})    

function toRad(v){return v * Math.PI / 180;}
function kmToMiles(km) {return (km * 0.62137).toFixed(2);}

function LatLong(lat, lon) {
	return {Latitude: lat, Longitude: lon}
}

function haversine(l1, l2) {
	var R = 6371; // km 
	var x1 = l2.Latitude-l1.Latitude;
	var dLat = toRad(x1);  
	var x2 = l2.Longitude-l1.Longitude;
	var dLon = toRad(x2);  
	var a = Math.sin(dLat/2) * Math.sin(dLat/2) + 
			Math.cos(toRad(l1.Latitude)) * Math.cos(toRad(l2.Latitude)) * 
			Math.sin(dLon/2) * Math.sin(dLon/2);  
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
	var d = R * c;
	return d;
}
var orgNames='';
$('#distance_fetch').on('click',function(){
    
    if(setting==0){
    var coordinates=$('#coordinates').val();
    if(coordinates==''){
        $('#coordinates').addClass('form-invalid');
        $('#coordinates').removeClass('form-valid');
        $('#coordinates').parents('div').children('.invalid-feedback').show();
    }else{
        $('#coordinates').addClass('form-valid');
        $('#coordinates').removeClass('form-invalid');
        $('#coordinates').parents('div').children('.invalid-feedback').hide();

        var source=coordinates.split(',');

    for(i=0;i<locations.length;i++){
        l1=LatLong(source[0],source[1]);
        l2=LatLong(locations[i]['latitude'],locations[i]['longitude']);
        orgNames+='<tr><td>'+locations[i]['org_name']+'</td><td>'+locations[i]['sub_urb']+'</td><td>'+locations[i]['address']+'</td><td>'+locations[i]['facility']+'</td><td>'+locations[i]['latitude']+'</td><td>'+locations[i]['longitude']+'</td><td>'+haversine(l1, l2).toFixed(2)+'</td></tr>';        
    }    
    $('#datatable').DataTable().clear();   
    $('#datatable').DataTable().destroy();                

    $('#distance_result').html(orgNames);                                   
    
    $("#datatable").DataTable({lengthChange:!1,language:{paginate:{previous:"<i class='mdi mdi-chevron-left'>",next:"<i class='mdi mdi-chevron-right'>"}},drawCallback:function(){$(".dataTables_paginate > .pagination").addClass("pagination-rounded")}})
    }
}else{    
    var coordinates=$('#coordinates').val();
    if(coordinates==''){
        $('#coordinates').addClass('form-invalid');
        $('#coordinates').removeClass('form-valid');
        $('#coordinates').parents('div').children('.invalid-feedback').show();
    }else{
        $('#coordinates').addClass('form-valid');
        $('#coordinates').removeClass('form-invalid');
        $('#coordinates').parents('div').children('.invalid-feedback').hide();

    demo(locations);
    }

}

})

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}
var coordinates='';
async function demo(locations) {    
    $('#distance_result').html('<tr><td valign="top" colspan="7" class="dataTables_empty" style="text-align: center;">Loading.....</td></tr>');

    orgNames='';
    coordinates=$('#coordinates').val();      
    for (let j = 0; j < locations.length; j++) {


    $.ajax({
            url: 'https://maps.googleapis.com/maps/api/distancematrix/json?destinations=17.742337696575696,83.30721467858723&origins=18.57289162420735,%2083.35442727266735&units=imperial&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto',
            // url: 'https://maps.googleapis.com/maps/api/distancematrix/json?destinations='+locations[j]['latitude']+","+locations[j]['longitude']+'&origins='+coordinates+'&units=imperial&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto',
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            dataType: 'json',
            success: function(data) {            
                // orgNames+='<tr><td>'+locations[j]['org_name']+'</td><td>'+l
            console.log(data);
                // ocations[j]['sub_urb']+'</td><td>'+locations[j]['address']+'</td><td>'+locations[j]['facility']+'</td><td>'+locations[j]['latitude']+'</td><td>'+locations[j]['longitude']+'</td><td>'+(data.rows[0].elements[0].distance.text.replace("mi",'')*1.609344)+'</td></tr>';                 
            },
        error: function(xhr, status, error) {
            // Handle errors here
            console.error(error);
        }
        });

            // $.ajax({
            //     type:'get',
            //     url:'https://api.distancematrix.ai/maps/api/distancematrix/json?origins='+coordinates+'&destinations='+locations[j]['latitude']+","+locations[j]['longitude']+'&key=thVqINnKb2YOcRpZrbqgH38DzM8Yn',
            //     async: true,
            //     success:function(data){                                   
            //         orgNames+='<tr><td>'+locations[j]['org_name']+'</td><td>'+locations[j]['sub_urb']+'</td><td>'+locations[j]['address']+'</td><td>'+locations[j]['facility']+'</td><td>'+locations[j]['latitude']+'</td><td>'+locations[j]['longitude']+'</td><td>'+data.rows[0].elements[0].distance.text.replace(' km','')+'</td></tr>';                            
                            
            //     }
            // })

        // console.log(`Waiting ${i} seconds...`);
        await sleep(j * 1000);
    }
    $('#distance_result').html('');


    $('#datatable').DataTable().clear();   
    $('#datatable').DataTable().destroy();   
    $('#distance_result').html(orgNames);        
    $("#datatable").DataTable({lengthChange:!1,language:{paginate:{previous:"<i class='mdi mdi-chevron-left'>",next:"<i class='mdi mdi-chevron-right'>"}},drawCallback:function(){$(".dataTables_paginate > .pagination").addClass("pagination-rounded")}})
}


$('#coordinates').on('input',function(){
    this.value = this.value.replace(/[^0-9,\.]/g,'');
})

</script>
    </body>

</html>