
<!DOCTYPE HTML>
<html>
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Quattrocento+Sans' rel='stylesheet' type='text/css'>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="btm_border">
    <div class="h_bg">
        <div class="wrap">
            <div class="header">
                <div class="logo">
                    <h1><a href="index.html"><img src="images/logo.png" alt=""></a></h1>
                </div>
                <div class="social-icons">
                    <ul>
                        <a href="sign_up.php" >注册</a>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <div class='h_btm'>
                <div class='cssmenu'>
                    <ul>
                        <li><a href='index.php '><span>主页</span></a></li>
                        <li><a href='bookcity.php'><span>书城</span></a></li>
                        <li  class='active'><a href='reader.php'><span>我的</span></a></li>

                        <div class="clear"></div>
                    </ul>
                </div>
                <div class="search">
                    <form>
                        <input type="text" name="keys" value="">
                        <input type="submit" name="subs" value="">
                    </form>

                </div>

                <?php

                     if(!empty($_GET['keys']))
                     {
                         $name=$_GET['keys'];
                         echo "<script>location.href='search.php?name=$name'</script>";
                     }




                ?>

                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
<!--main-->

<?php
include ("conn.php");
if(!empty($_POST['sign']))
{
    $num=$_POST['num'];
    $pass=$_POST['password'];

    $sql="select * from user where number=$num  ";

    $result=$db->query($sql);

    $num_row=mysqli_num_rows($result);
    if($num_row==0)
        echo "<script>alert('用户不存在！')</script>";
    else
    {
        $rs=$result->fetch_array();
        if($rs['password']==$pass)
        {
            $_SESSION["uid"]=$rs['number'];
            echo "<script>alert('登录成功！');location.href='reader.php'</script>";
        }

        else
            echo "<script>alert('用户名或密码错误！')</script>";

    }


}

?>
<div class="grids_1_of_3">
    <div class="grid_1_of_3 ">
        <img src="images/banner11.jpg">


    </div>

    <div class="grid_1_of_3 images_1_of_3">


        <div class="col span_2_of_4">
            <div class="contact-form">
                <h2 class="style">欢迎登录</h2>
                <form action="sign_in.php" method="post">
                    账号<input type="text" name="num"><br>

                    密码<input type="text" name="password"><br>
                    <input type="submit" name="sign" value="登录">

                </form>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>

<div class="ftr-bg">
    <div class="wrap">
        <div class="footer">
            <div class="copy">
                <p class="w3-link">&copy; Copyright &copy; 2013.Company name All rights reserved.</p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>

</body>
</html>