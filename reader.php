<!DOCTYPE HTML>
<html>
<head>
<title>Reader</title>
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

                <a href='logout.php'> 退出登录</a>

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
    if(!empty($_SESSION['uid']))
    {
        $sql="select * from user where number='".$_SESSION['uid']."'";
        $result=$db->query($sql);
        $rs=$result->fetch_array();


    }

    else
        echo "<script>location.href='sign_in.php'</script>";


?>
<div class="main_btm">
<div class="main">
    <div class="main_bg">
    <div class="services-header">
        <h3><?php  echo $rs[name]?>的个人书屋</h3>
        <div class="clear"> </div>
    </div>
</div>
</div>
<div class="grids_1_of_3">
    <div class="grid_1_of_3 images_1_of_3">
        <img src="images/icon1.jpg">
        <h3>个人信息</h3>

        <p>账号：<?php  echo $rs[number]?></p>
        <p>用户名：<?php  echo $rs[name]?></p>

    </div>
    <div class="grid_1_of_3 images_1_of_3">
        <img src="images/icon4.jpg">
        <h3>我的书架</h3>
        <?php
        include "conn.php";
        $sql_ub="select * from usbk where unumber=$rs[number] ";
        $result_ub=$db->query($sql_ub);


        while($rs_ub=$result_ub->fetch_array()){

                $sql_b="select *from book where number=$rs_ub[bnumber]";
                $result_b=$db->query($sql_b);
                $rs_b=$result_b->fetch_array();


            ?>

            <h1><a href="book.php?id=<?php echo $rs_b['number']?>"><?php echo "《".$rs_b['name']."》"?></a>    <a href="delete.php?id=<?php echo $rs_b['number']?>">删除</a></h1>

            <?php
        }


        ?>

    </div>
    <div class="grid_1_of_3 images_1_of_3">

        <img src="images/icon3.jpg">
        <h3>已阅书目</h3>
        <?php echo "$rs[hisnum]"; ?>
    </div>
    <div class="clear"></div>
</div>
</div>
</div>
</div>


<div class="main_bg">
    <div class="wrap">
        <div class="main">
            <div class="content">
                <h2>读万卷书，行万里路</h2>
                <h3>Reading ten thousand books is like traveling ten thousand miles.</h3>
                <p><a href="#"><img src="images/pic11.jpg"></a>     多读书，增加一点书卷气，保持心静如水、人淡如菊的心境。书是获取知识的渠道，提高人素质的有效途径，也是涵养静气的摇篮。读书妙处无穷，书香熏染人生。正如莎士比亚所说：“生活里没有书籍，就好像没有阳光；智慧里没有书籍，就好像鸟儿没有翅膀。”读书至少可以滋润心灵，开启心智，由琐碎杂乱的现实提升到一个较为超然的境界，一切日常引为大事的焦虑、烦忧、气恼、悲愁，以及一切把你牵扯在内的扰攘纷争，瞬间云消雾散。读书至少可以增长知识，去除无知；提高素养，除去愚昧；充实生活，丰富精神；滋润心灵，减少空虚；淡定从容，明辨是非。读书能使人时时闪烁着生命的光辉，让人欣赏到不同的生命风景，从而使自己灵魂欢畅，精神饱满而丰盈。<br>   人生之美，美在心灵；书香熏染，完美人生。书是生命的矿物质，她挺起了我们不屈的脊梁；书是人生的维生素，她迸发了我们无穷的力量；书是生活的美容师，她赋予了我们青春的时光；书是最好的调味酒，她滋润了我们气质的芳香。感受生命的喜怒哀乐，咀嚼生活的酸甜苦辣，品味人生的悲欢离合，搏击命运的风霜雨雪，大千世界、芸芸众生从书中得到的启迪、教诲、乐趣，是任何东西所不能替代的。</p>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="main_btm">
        <div class="wrap">
            <div class="main">
                <div class="gallery">
                    <h3>书籍是人类进步的阶梯</h3>
                    <ul>
                        <li><a href="images/gallery1.jpg"><img src="images/gallery1.jpg" alt=""></a><a href="#"></a></li>
                        <li><a href="images/gallery2.jpg"><img src="images/gallery2.jpg" alt=""></a><a href="#"></a></li>
                        <li><a href="images/gallery3.jpg"><img src="images/gallery3.jpg" alt=""></a><a href="#"></a></li>
                        <li><a href="images/gallery4.jpg"><img src="images/gallery4.jpg" alt=""></a><a href="#"></a></li>
                        <li><a href="images/gallery4.jpg"><img src="images/gallery4.jpg" alt=""></a><a href="#"></a></li>
                        <li><a href="images/gallery3.jpg"><img src="images/gallery3.jpg" alt=""></a><a href="#"></a></li>
                        <li><a href="images/gallery5.jpg"><img src="images/gallery5.jpg" alt=""></a><a href="#"></a></li>
                        <li><a href="images/gallery6.jpg"><img src="images/gallery6.jpg" alt=""></a><a href="#"></a></li>
                    </ul>
                </div>
                <script type="text/javascript" src="js/jquery.lightbox.js"></script>
                <link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
                <script type="text/javascript">
                    $(function() {
                        $('.gallery a').lightBox();
                    });
                </script>
                <div class="terminals">
                    <h3>读书格言</h3>
                    <p>旧书不厌百回读，熟读精思子自知。——苏轼</p>
                    <p>书痴者文必工，艺痴者技必良。——蒲松龄</p>
                    <p>读书之乐乐陶陶，起并明月霜天高。——朱熹</p>
                    <p>好读书，不求甚解。每有会意，便欣然忘食。——陶渊明</p>
                    <p>读书好，多读书，读好书。——冰心</p>
                    <p>读书是易事，思索是难事，但两者缺一，便全无用处。——(美国)富兰克林</p>


                </div>
                <div class="clear"> </div>
            </div>
        </div>
    </div>

<!--footer1-->
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