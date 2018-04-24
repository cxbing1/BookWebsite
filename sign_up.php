<!DOCTYPE HTML>
<html>
<head>
    <title>注册</title>
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
                        <a href="sign_in.php" >登录</a>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <div class='h_btm'>
                <div class='cssmenu'>
                    <ul>
                        <li><a href='index.php'><span>主页</span></a></li>
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
if(!empty($_POST['sign'])) {


    $num = $_POST['num'];
    $name = $_POST['name'];
    $pass = $_POST['password'];

    $sql_sel = "select * from user where  number=$num";
    $result = mysqli_query($db, $sql_sel);
    $num_row = $result->fetch_row();
    if ($num_row != 0)
        echo "<script>alert('用户已存在！')</script>";

    else {
        $his=0;
        $sql_ins = "insert into user values('$num','$name','$pass','$his')";

        mysqli_query($db, $sql_ins);
        echo "<script>alert('注册成功！');location.href='sign_in.php'</script>";

    }


}

?>
<div class="grids_1_of_3">
    <div class="grid_1_of_3">
        <img src="images/banner11.jpg">


    </div>

    <div class="grid_1_of_3 images_1_of_3">


        <div class="col span_2_of_4">
            <div class="contact-form">
                <h2 class="style">注册</h2>
                <form action="sign_up.php" method="post">
                    账号<input type="text" name="num"><br>
                    用户名<input type="text" name="name"><br>
                    密码<input type="text" name="password"><br>
                    <input type="submit" name="sign" value="注册">

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