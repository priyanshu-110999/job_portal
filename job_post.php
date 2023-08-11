<html>
    <body>
        <?php
        $host='localhost:3306';
        $user='root';
        $pass='';
        $db='job@eepl';
        $uid=$_POST['uid'];
        $post=$_POST['post'];
        $postDescription=$_POST['post_description'];
        $cName=$_POST['company_name'];
        $contact=$_POST['contact_details'];
        $salary=$_POST['salary'];
        $jobLocation=$_POST['job_location'];
        $exp=$_POST['experience'];
        $skill=$_POST['skills'];
        $minEd=$_POST['min_education'];
        $lang=$_POST['language'];
        $conn=mysqli_connect($host, $user, $pass, $db);
        if(!$conn)
{
    die('could not connect: '. mysqli_error());
}
echo 'connected successfully';
$sql= "INSERT INTO job_post(uid,post,post_description,company_name,contact_details,salary,job_location,experience,skills,min_education,language) VALUES ('$uid','$post',$postDescription','$cName','$contact','$salary','$jobLocation','$exp','$skill','$minEd','$lang')";
if(mysqli_query($conn,$sql))
{
    echo"record insert record:". mysqli_error($conn);
}
mysqli_close($conn);
?>

        
        
        
        
        