<?php
    $host='localhost:3306';
    $user='root';
    $pass='';
    $db='job@eepl';
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $age=$_POST['age'];
    $gender=$_POST['gender'];
    $salary=$_POST['salary'];
    $address1=$_POST['address1'];
    $address2=$_POST['address2'];
    $city=$_POST['city'];
    $state=$_POST['state'];
    $pincode=$_POST['pincode'];
    $country=$_POST['country'];
    $father=$_POST['father'];
    $mother=$_POST['mother'];
    $id1=$_POST['id1'];
    $id2=$_POST['id2'];
    $email=$_POST['email'];
    $maratial=$_POST['maratial'];
    $education=$_POST['education'];
    $techskill=$_POST['techskill'];
    $ntechskill=$_POST['ntechskill'];
    $language=$_POST['language'];
    $hobbies=$_POST['hobbies'];
    $experience=$_POST['experience'];
    $location=$_POST['location'];
    $position=$_POST['position'];
    $conn=mysqli_connect($host, $user, $pass, $db);
        if(!$conn)
{
    die('could not connect: '. mysqli_error());
}
echo 'connected successfully';
$sql= "INSERT INTO job_post(uid,post,post_description,company_name,contact_details,salary,job_location,experience,skills,min_education,language) VALUES ('$uid','$post','$postDescription','$cName','$contact','$salary','$jobLocation','$exp','$skill','$minEd','$lang')";
if(mysqli_query($conn,$sql))
{
    echo"record insert record:". mysqli_error($conn);
}
mysqli_close($conn);
?>

