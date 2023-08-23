<?php 
// $connection=mysqli_connect('localhost','root','','distances');
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Origin: *');
$connection= mysqli_connect("localhost","admin_root","admin_distance","admin_distances");
if(@$_POST['formName']=='insert_location'){
    $org_name=$_POST['org_name'];
    $sub_urb=$_POST['sub_urb'];
    $address=$_POST['address'];
    $facility=$_POST['facility'];
    $latitude=$_POST['latitude'];
    $longitude=$_POST['longitude'];
    mysqli_query($connection,"INSERT INTO `locations`(`loc_org_name`,`loc_sub_urb`,`loc_address`,`loc_facility`,`loc_latitude`,`loc_longitude`) values('$org_name','$sub_urb','$address','$facility','$latitude','$longitude')");
    $last_inserted_id=mysqli_insert_id($connection);
    if($last_inserted_id!=''){
        echo 1;
    }else{
        echo 0;
    }
}

if(@$_POST['formName']=='delete_location'){

$location_id=$_POST['location_id'];
if(mysqli_query($connection,"UPDATE `locations` SET loc_status=1 WHERE loc_id=$location_id")){    
    echo 1;
}else{
    echo 0;
}

}

if(@$_POST['formName']=='api_setting'){

    $api_setting=$_POST['setting'];
    
    if(mysqli_query($connection,"UPDATE `application_settings` SET setting_content=$api_setting WHERE setting_type='api_setting'")){    
        echo 1;
    }else{
        echo 0;
    }

}


if(@$_POST['formName']=='location_switch'){

$switched=$_POST['switched'];
$location_id=$_POST['location_id'];

if(mysqli_query($connection,"UPDATE `locations` SET loc_status=$switched WHERE loc_id=$location_id")){    
    echo 1;
}else{
    echo 0;
}

}
if(@$_POST['formName']==''){

    $locations['data']=[];
    $locationQry=mysqli_query($connection,"SELECT * FROM locations where loc_status!=1");

    while($locationQryRes=mysqli_fetch_array($locationQry)){

            if($locationQryRes['loc_status']==2){                
                $checked="";
                $switchVal=0;
            }else{
                $checked="checked";
                $switchVal=2;
            }

        $switch='<input class="form-check location_switch" type="checkbox" data="'.$locationQryRes["loc_id"].'" id="location_switch'.$locationQryRes["loc_id"].'" switch="none" value="'.$switchVal.'" '.$checked.'><label class="form-label" for="location_switch'.$locationQryRes["loc_id"].'" data-on-label="Yes" data-off-label="No"></label>';

        $view='<button onclick="delete_loc('.$locationQryRes["loc_id"].')" type="button" class="btn btn-outline-danger btn-sm">Delete</button>';

        array_push($locations['data'],array('org_name'=>$locationQryRes['loc_org_name'], 'sub_urb'=>$locationQryRes['loc_sub_urb'],'address'=>$locationQryRes['loc_address'],'facility'=>$locationQryRes['loc_facility'],'latitude'=>$locationQryRes['loc_latitude'],'longitude'=>$locationQryRes['loc_longitude'],'option'=>$switch,'action_btn'=>$view));

    }

    header("Content-Type: application/json");
    echo json_encode($locations);
}

if(@$_POST['formName']=='get_locations'){
    $locations=array();
    $data=array();
    $getLocations=mysqli_query($connection,'Select * from locations where loc_status!=1 AND 2');
    while($getLocationsRes=mysqli_fetch_array($getLocations)){
        array_push($locations,array('loc_id'=>$getLocationsRes["loc_id"],'org_name'=>$getLocationsRes["loc_org_name"],'sub_urb'=>$getLocationsRes["loc_sub_urb"],'address'=>$getLocationsRes["loc_address"],'facility'=>$getLocationsRes["loc_facility"],'latitude'=>$getLocationsRes["loc_latitude"],'longitude'=>$getLocationsRes["loc_longitude"]));
    }
    
    $apiSetting=mysqli_fetch_array(mysqli_query($connection,"SELECT setting_content from application_settings where setting_type='api_setting'"));    

    echo json_encode($locations).'||'.$apiSetting['setting_content'];

}

if(@$_POST['formName']=='api_setting_enable'){
     $apiSettingQry=mysqli_fetch_array(mysqli_query($connection,"SELECT setting_content from application_settings where setting_type='api_setting'"));
     echo $apiSettingQry['setting_content'];
}
?>