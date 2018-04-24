<?php
include "conn.php";

if(!empty($_GET['id']))
{
    if(empty($_SESSION['uid']))
    {
        echo "<script>alert('请先登录！');location.href='sign_in.php'</script>";
    }
    else
    {
        $b_num=$_GET['id'];
        $u_num=$_SESSION['uid'];

        $sql="select * from usbk where unumber=$u_num and bnumber=$b_num ";
        $query=$db->query($sql);

        $num_row=mysqli_num_rows($query);


        if($num_row==0)
        {
            $sql="insert into usbk values('$u_num','$b_num')";
            $db->query($sql);
            $sql="update book set time=time+1";
            $db->query($sql);
            $sql2="update user set hisnum=hisnum+1";
            $db->query($sql2);

            echo "<script>alert('加入书架成功');location.href='reader.php'</script>";
        }

        else
            echo "<script>alert('书籍已在书架中');location.href='reader.php'</script>";




    }

}



?>