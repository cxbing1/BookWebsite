<?php
include "conn.php";

if(!empty($_GET['id']))
{


        $b_num=$_GET['id'];
        $u_num=$_SESSION['uid'];

        $sql="delete from usbk where unumber=$u_num and bnumber=$b_num ";
        $query=$db->query($sql);



            echo "<script>alert('删除成功');location.href='reader.php'</script>";






}



?>