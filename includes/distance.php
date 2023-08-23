<?php 
error_reporting(0);
function sign($n) {
    return ($n > 0) - ($n < 0);
}

$destinations=explode('|',$_POST['destination']);
$count= count($destinations);
$shiftDesArray=array();
$loop=0;
$whileCount=0;

if($count>=25){
    while($loop<=$count){
        $shiftDesArray[$whileCount]=array();    
        $shiftDesArray[$whileCount]=array_slice($destinations, $loop, 25);
        $loop+=25;
        $whileCount++;        
    }
}
$jsonArray=[];
for($i=0;$i<count($shiftDesArray);$i++){
    $desinationVar='';
    $desinationVar=implode('|',$shiftDesArray[$i]);


$url = 'https://maps.googleapis.com/maps/api/distancematrix/json?destinations='.$desinationVar.'&origins='.$_POST['coordinates'].'&units=imperial&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch, CURLOPT_TIMEOUT,10);
$output = curl_exec($ch);
$data=json_decode($output,true);
$jsonArray[$i]=$data['rows'][0]['elements'];
curl_close($ch); 

if($i==count($shiftDesArray)-1){
    echo json_encode($jsonArray);
}

}
?>