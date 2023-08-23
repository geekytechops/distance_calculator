<?php 
$url = 'https://maps.googleapis.com/maps/api/distancematrix/json?destinations='.$_POST['destination'].'&origins='.$_POST['coordinates'].'&units=imperial&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch, CURLOPT_TIMEOUT,10);
$output = curl_exec($ch);
$data=json_decode($output,true);
echo json_encode($data['rows'][0]['elements']);
// echo number_format(str_replace('mi','',$data['rows'][0]['elements'][0]['distance']['text'])* 1.609344,2);
curl_close($ch); 
?>