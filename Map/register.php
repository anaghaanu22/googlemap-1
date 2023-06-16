<?php
include 'connect.php';

$name = $_POST['name'];
$email = $_POST['email'];
$mobile = $_POST['mobile'];
$password = $_POST['password'];

$sql = mysqli_query($con,"insert into register(name,email,mobile,password)values('$name','$email','$mobile','$password')");

if ($sql) {

    $myarray['message'] = 'Added';
  
} else {

  $myarray['message'] = 'Failed';
}
echo json_encode($myarray);

?>