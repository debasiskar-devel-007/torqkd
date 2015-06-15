<?php 
$data = $_POST['data'];
$img = time().'.png';

list($type, $data) = explode(';', $data);
list(, $data)      = explode(',', $data);
$data = base64_decode($data);

file_put_contents('img/'.$img, $data);
echo "http://torqkd.com/fbshare/img/".$img;
?>