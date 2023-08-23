<?php 
// $url = 'https://geocode.maps.co/search?q='.$_POST['address'];
$array=array('/','\/');
$url='https://maps.googleapis.com/maps/api/geocode/json?address='.str_replace(" ","%20",str_replace(', ',',',str_replace($array,"",$_POST['address']))).'&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch, CURLOPT_TIMEOUT,10);
$output = curl_exec($ch);
$data=json_decode($output,true);
echo json_encode($data['results'][0]['geometry']['location']);
// echo number_format(str_replace('mi','',$data['rows'][0]['elements'][0]['distance']['text'])* 1.609344,2);
curl_close($ch); 
?>