<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
// $.ajax({
//     type:'get',
//     url:'https://maps.googleapis.com/maps/api/distancematrix/json?destinations=17.742337696575696,83.30721467858723&origins=18.57289162420735,%2083.35442727266735&units=imperial&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto',
//     success:function(data){
//         console.log( data);
//         // console.log( data.rows.elements.distance.text * 1.609344);
//     }
// })
// $.ajax({
//     type:'get',
//     url:'https://api.distancematrix.ai/maps/api/distancematrix/json?origins=17.751493270310128,%2083.30309480564969&destinations=18.57289162420735,%2083.35442727266735&key=thVqINnKb2YOcRpZrbqgH38DzM8Yn',
//     success:function(data){
//         console.log( data);
//         // console.log( data.rows.elements.distance.text * 1.609344);
//     }
// })
</script>

<!DOCTYPE html>
<html>
<head>
    <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
</head>
<body>

<script>
// $(document).ready(function() {
    var url = 'https://maps.googleapis.com/maps/api/distancematrix/json?destinations=17.742337696575696,83.30721467858723&origins=18.57289162420735,%2083.35442727266735&units=imperial&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto';

    $.ajax({
        url: url,
        method: 'GET',
        headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
        },
        dataType: 'json',
        success: function(data) {
            // Handle the data here
            console.log(data);
            console.log(data.rows[0].elements[0].distance.text.replace("mi",'')*1.609344);
        },
        error: function(xhr, status, error) {
            // Handle errors here
            console.error(error);
        }
    });
// });
</script>

</body>
</html>


<?php 
// header('Content-Type: application/json;charset=utf-8');
$url = 'https://maps.googleapis.com/maps/api/distancematrix/json?destinations=17.742337696575696,83.30721467858723&origins=18.57289162420735,%2083.35442727266735&units=imperial&key=AIzaSyDaa0FdAfpQzAF1c7Twg7QyIZZ_iFHthto';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
// curl_setopt($ch, CURLOPT_HEADER, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch, CURLOPT_TIMEOUT,10);
$output = curl_exec($ch);
$data=json_decode($output,true);
echo '<br>';
echo 'google api';
// print_r($data);
echo '<br>';
echo ($data['rows'][0]['elements'][0]['distance']['text'])* 1.609344;
// $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
// $myfile = fopen("newfiles.log", "a");
// $data=json_decode($output,true);
// fwrite($myfile, $data['data'][0]['id'].'/n/n/n');
// fwrite($myfile, $data['data'][1]['id']);
// fclose($myfile);
curl_close($ch); 

// $url = 'https://api.distancematrix.ai/maps/api/distancematrix/json?origins=17.751493270310128,%2083.30309480564969&destinations=18.57289162420735,%2083.35442727266735&key=thVqINnKb2YOcRpZrbqgH38DzM8Yn';
// $ch = curl_init($url);
// curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
// curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
// curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json','Authorization: Bearer Bearer '.$json_decoded['token']]);
// // curl_setopt($ch, CURLOPT_HEADER, true);
// curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
// curl_setopt($ch, CURLOPT_TIMEOUT,10);
// $output = curl_exec($ch);
// // var_dump($output);
// // $httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
// // $myfile = fopen("newfiles.log", "a");
// $data=json_decode($output,true);
// echo '<br>';
// echo 'Other api';
// // print_r($data);
// echo '<br>';
// echo $data['rows'][0]['elements'][0]['distance']['text'];
// // fwrite($myfile, $data['data'][0]['id'].'/n/n/n');
// // fwrite($myfile, $data['data'][1]['id']);
// // fclose($myfile);
// curl_close($ch); 
?>