 图书网站
 ===
 
一、环境<br>
服务器：Apache2.4<br>
后台语言：PHP7.2<br>
数据库：Mysql5.6.26<br>


二、功能设计<br>
1、该图书网站实现以下功能：<br>
（1）登录/注册功能<br>
（2）用户信息显示功能<br>
（3）书籍信息显示功能<br>
（4）书籍排行榜功能<br>
（5）书籍分类功能<br>
（6）书籍搜索功能<br>
（7）借书/还书功能<br>
2、根据需要实现的功能，得出网站设计思维导图：<br>
![image](https://github.com/cxbing1/BookWebsite/blob/master/readme-image/%E5%9B%BE%E7%89%871.png)

三、测试用例

下面测试一个从新用户注册到该用户借阅书籍到书架的过程
1、注册
![image](https://github.com/cxbing1/BookWebsite/blob/master/readme-image/%E5%9B%BE%E7%89%872.png)
2、登录 
![image](https://github.com/cxbing1/BookWebsite/blob/master/readme-image/%E5%9B%BE%E7%89%873.png)
3、个人中心
![image](https://github.com/cxbing1/BookWebsite/blob/master/readme-image/%E5%9B%BE%E7%89%874.png)
4、从书城或主页进入书籍详情界面
![image](https://github.com/cxbing1/BookWebsite/blob/master/readme-image/%E5%9B%BE%E7%89%875.png)
5、点击加入书架借阅一本书籍，借阅成功后跳转值个人中心
书架中显示刚加入的书籍，同时历史借阅数目加一。
![image](https://github.com/cxbing1/BookWebsite/blob/master/readme-image/%E5%9B%BE%E7%89%876.png)
6、点击删除归还该书籍，书架中该书籍删除，但历史借阅数目不变
![image](https://github.com/cxbing1/BookWebsite/blob/master/readme-image/%E5%9B%BE%E7%89%877.png)
