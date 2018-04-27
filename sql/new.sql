-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 new 的数据库结构
CREATE DATABASE IF NOT EXISTS `new` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `new`;


-- 导出  表 new.book 结构
CREATE TABLE IF NOT EXISTS `book` (
  `number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  new.book 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
REPLACE INTO `book` (`number`, `name`, `type`, `writer`, `time`, `text`) VALUES
	('1', '三国演义', '历史', '罗贯中', 42, '	《三国演义》是中国古典四大名著之一，是中国第一部长篇章回体历史演义小说，全名为《三国志通俗演义》（又称《三国志演义》），作者是元末明初的著名小说家罗贯中。《三国志通俗演义》成书后有嘉靖壬午本等多个版本传于世，到了明末清初，毛宗岗对《三国演义》整顿回目、修正文辞、改换诗文。[1] \r\n	《三国演义》描写了从东汉末年到西晋初年之间近百年的历史风云，以描写战争为主，诉说了东汉末年的群雄割据混战和汉、魏、吴三国之间的政治和军事斗争，最终司马炎一统三国，建立晋朝的故事。反映了三国时代各类社会斗争与矛盾的转化，并概括了这一时代的历史巨变，塑造了一群叱咤风云的三国英雄人物。\r\n	全书可大致分为黄巾起义、董卓之乱、群雄逐鹿、三国鼎立、三国归晋五大部分。在广阔的历史舞台上，上演了一幕幕气势磅礴的战争场面。作者罗贯中将兵法三十六计融于字里行间，既有情节，也有兵法韬略。'),
	('2', '红楼梦', '历史', '曹雪芹', 37, '	《红楼梦》，中国古典四大名著之首，清代作家曹雪芹创作的章回体长篇小说[1]  ，又名《石头记》《金玉缘》。此书分为120回“程本”和80回“脂本”两种版本系统。\r\n	《红楼梦》新版通行本前80回据脂本汇校，后40回据程本汇校，署名“曹雪芹著，无名氏续，程伟元、高鹗整理”[2]  。后40回作者尚有争议。\r\n小说以贾、史、王、薛四大家族的兴衰为背景，以贾府的家庭琐事、闺阁闲情为脉络，以贾宝玉、林黛玉、薛宝钗的爱情婚姻故事为主线，刻画了以贾宝玉和金陵十二钗为中心的正邪两赋有情人的人性美和悲剧美。通过家族悲剧、女儿悲剧及主人公的人生悲剧，揭示出封建末世危机[3]  。\r\n	《红楼梦》是一部具有世界影响力的人情小说作品[4]  ，举世公认的中国古典小说巅峰之作，中国封建社会的百科全书，传统文化的集大成者。小说以“大旨谈情，实录其事”自勉，只按自己的事体情理，按迹循踪，摆脱旧套，新鲜别致[1]  ，取得了非凡的艺术成就。“真事隐去，假语村言”的特殊笔法更是令后世读者脑洞大开，揣测之说久而遂多[4]  。围绕《红楼梦》的品读研究形成了一门显学——红学。'),
	('3', '西游记', '神话', '吴承恩', 88, '	《西游记》是中国古代第一部浪漫主义章回体长篇神魔小说。现存明刊百回本《西游记》均无作者署名。清代学者吴玉搢等首先提出《西游记》作者是明代吴承恩  。这部小说以“唐僧取经”这一历史事件为蓝本，通过作者的艺术加工，深刻地描绘了当时的社会现实。全书主要描写了孙悟空出世及大闹天宫后，遇见了唐僧、猪八戒和沙僧三人，西行取经，一路降妖伏魔，经历了九九八十一难，终于到达西天见到如来佛祖，最终五圣成真的故事。\r\n	《西游记》自问世以来在民间广为流传，各式各样的版本层出不穷，明代刊本有六种，清代刊本、抄本也有七种，典籍所记已佚版本十三种。鸦片战争以后，大量中国古典文学作品被译为西文，《西游记》渐渐传入欧美，被译为英、法、德、意、西、手语、世（世界语）、斯（斯瓦西里语）、俄、捷、罗、波、日、朝、越等文种。中外学者发表了不少研究论文和专著，对这部小说作出了极高的评价。\r\n	《西游记》是中国神魔小说的经典之作，达到了古代长篇浪漫主义小说的巅峰，与《三国演义》《水浒传》《红楼梦》并称为中国古典四大名著。'),
	('4', '水浒传', '武侠', '施耐庵', 43, '	《水浒传》，是中国四大名著之一，是一部描写宋江起义的长篇小说。明朝万历二十二年（1594）福建建阳余象斗双峰堂刊本《京本增补校正全像忠义水浒志传评林》[1]  题罗贯中编集，明万历四十二年（1614）袁无涯刊《忠义水浒全传》一百二十回本署名是“施耐庵集撰、罗贯中纂修”，与之相近的还有明万历三十年（1602）前后容与堂刻本《水浒传》署名是“施耐庵撰，罗贯中纂修”。[2] \r\n全书通过描写北宋末年以宋江为首的108位好汉在梁山聚义，以及聚义之后接受招安、四处征战的故事，艺术地反映了中国历史上宋江起义从发生、发展直至失败的全过程，深刻揭示了起义的社会根源，满腔热情地歌颂了起义英雄的反抗斗争和他们的社会理想，也具体揭示了起义失败的内在历史原因。\r\n	《水浒传》是中国历史上最早用白话文写成的章回小说之一，也是汉语文学中最具备史诗特征的作品之一。[3]  早期版本有“繁本”和“简本”之分，而“繁本”又分七十回本、一百回本和一百二十回本三个系统，其中以百回本为最古，容与堂本《李卓吾先生批评忠义水浒传》一百卷叙事详尽，内容完整，是百回本中现存最早的繁本[4]  ，杨定见序、袁无涯刻本《水浒全传》则是该书众多版本中内容最全的一百廿回本[5]  。\r\n	《水浒传》流传极广，脍炙人口，对中国乃至东亚的叙事文学都有极其深远的影响。'),
	('5', '射雕英雄传', '武侠', '金庸', 72, '	《射雕英雄传》是1957年香港《商报》出版的武侠小说，作者是金庸。该书讲述了郭靖背负着家恨国仇闯入江湖，在红颜知己黄蓉的帮助下通过无数历练，最终成长为“侠之大者”的民族英雄的武林故事。\r\n	《射雕英雄传》的首部英译本将由英国出版社Maclehose Press出版，于2018年2月22日发售第1卷《英雄诞生》（A Hero Born），定价14.99英镑。'),
	('6', '聊斋志异', '恐怖', '蒲松龄', 78, '《聊斋志异》简称《聊斋》，俗名《鬼狐传》，是中国清朝著名小说家蒲松龄创作的文言短篇小说集。《聊斋志异》的意思是在书房里记录奇异的故事，“聊斋”是他的书斋名称，“志”是指记述的意思，“异”是指奇异的故事。全书共有短篇小说491篇（张友鹤《聊斋志异会校会注会评本》）（朱其铠《全本新注聊斋志异》为494篇）。\r\n它们或者揭露封建统治的黑暗，或者抨击科举制度的腐朽，或者反抗封建礼教的束缚，具有丰富深刻的思想内容。描写爱情主题的作品，在全书中数量最多，它们表现了强烈的反封建礼教的精神。其中一些作品，通过花妖狐魅和人的恋爱，表现了作者理想的爱情。'),
	('7', '唐诗三百首', '诗词', '唐代诗人', 44, '《唐诗三百首》是一部流传很广的唐诗选集。唐朝（618年~907年）二百八十九年间，是中国诗歌发展的黄金时代，云蒸霞蔚，名家辈出，唐诗数量多达五万余首。\r\n孙琴安《唐诗选本六百种提要·自序》指出，“唐诗选本经大量散佚，至今尚存三百余种。当中最流行而家传户晓的，要算《唐诗三百首》。”《唐诗三百首》选诗范围相当广泛，收录了77家诗，共310首，在数量以杜甫诗数多，有38首、王维诗29首、李白诗27首、李商隐诗22首。它是中小学生接触中国古典诗歌最好的入门书籍。'),
	('8', '三体', '科幻', '刘慈欣', 43, '《三体》是刘慈欣创作的系列长篇科幻小说，由《三体》、《三体Ⅱ·黑暗森林》、《三体Ⅲ·死神永生》组成，第一部于2006年5月起在《科幻世界》杂志上连载，第二部于2008年5月首次出版，第三部则于2010年11月出版。\r\n说到银河，人们会告诉你，尽管它看上去虚无缥缈，却是我们可以用肉眼看到的最大的物体：一个拥有数千亿颗恒星的星系，恒星靠相互之间的引力跨越数十万光年的距离联结在一起。我们是从内部观看银河系的，因为我们自己就是银河系的一部分。'),
	('9', '哈利波特', '科幻', 'J·K·罗琳', 35, '《哈利·波特》（Harry Potter）是英国作家J·K·罗琳（J. K. Rowling）于1997～2007年所著的魔幻文学系列小说，共7部。其中前六部以霍格沃茨魔法学校（Hogwarts School of Witchcraft and Wizardry）为主要舞台，描写的是主人公——年轻的巫师学生哈利·波特在霍格沃茨前后六年的学习生活和冒险故事；第七本描写的是哈利·波特在第二次巫界大战中在外寻找魂器并消灭伏地魔的故事。\r\n该系列小说被翻译成73种语言，所有版本的总销售量超过4.5亿本（截至2015年），名列世界上最畅销小说系列。英国版由布鲁姆斯伯里出版社（Bloomsbury）出版发行，美国引进后做过部分修正由学者出版社（Scholastic）发行，简体中文版由中国人民文学出版社发行，繁体中文版由皇冠出版社出版。'),
	('10', '山海经', '神话', '不详', 66, '《山海经》是中国志怪古籍，大体是战国中后期到汉代初中期的楚国或巴蜀人所作。也是一部荒诞不经的奇书。该书作者不详，古人认为该书是“战国好奇之士取《穆王传》 , 杂录《庄》、《列》 、《离骚》 、《周书》、《晋乘》以成者” 。现代学者也均认为成书并非一时，作者亦非一人。[1-2] \r\n《山海经》全书现存18篇，其余篇章内容早佚。原共22篇约32650字。共藏山经5篇、海外经4篇、海内经5篇、大荒经4篇。《汉书·艺文志》作13篇，未把晚出的大荒经和海内经计算在内。山海经内容主要是民间传说中的地理知识，包括山川、道里、民族、物产、药物、祭祀、巫医等。保存了包括夸父逐日、女娲补天、精卫填海、大禹治水等不少脍炙人口的远古神话传说和寓言故事。\r\n《山海经》具有非凡的文献价值，对中国古代历史、地理、文化、中外交通、民俗、神话等的研究，均有参考，其中的矿物记录，更是世界上最早的有关文献。[1-2] \r\n《山海经》版本复杂，现可见最早版本为晋代郭璞《山海经传》。但《山海经》的书名《史记》便有提及，最早收录书目的是《汉书·艺文志》。至于其真正作者，前人有认为是禹、伯益、夷坚，经西汉刘向、刘歆编校，才形成传世书籍，现多认为，具体成书年代及作者已无从确证。[1-3] \r\n对于《山海经》的内容性质，古今学者有着不同的认识，如司马迁直言其内容过于荒诞无稽，所以作史时不敢以为参考[4]  ，如鲁迅认为“巫觋、方士之书”。现大多数学者认为，《山海经》是一部早期有价值的地理著作。'),
	('11', '战争与和平', '名著', '列夫·尼古拉耶维奇·托尔斯泰', 43, '《战争与和平》是俄国作家列夫·尼古拉耶维奇·托尔斯泰创作的长篇小说，也是其代表作。该作以1812年的卫国战争为中心，反映从1805到1820年间的重大历史事件。以鲍尔康斯、别祖霍夫、罗斯托夫和库拉金四大贵族的经历为主线，在战争与和平的交替描写中把众多的事件和人物串联起来。[1] '),
	('12', '巴黎圣母院', '名著', '维克多·雨果', 57, '《巴黎圣母院》（港译钟楼驼侠，台译钟楼怪人）是法国文学家维克多·雨果所著小说，在1831年1月14日出版的小说。故事的场景设定在1482年的巴黎圣母院，内容环绕一名吉卜赛少女爱斯梅拉达和由副主教克洛德·弗洛罗养大的圣母院驼背敲钟人卡西莫多。此故事曾多次被改编成电影、电视剧及音乐剧。'),
	('13', '童年', '名著', '马克西姆·高尔基', 42, '《童年》是前苏联作家马克西姆·高尔基以自身经历为原型创作的自传体小说三部曲中的第一部（其他两部分别为《在人间》、《我的大学》）。'),
	('14', '呼啸山庄', '名著', '艾米莉·勃朗特', 51, '《呼啸山庄》是英国女作家勃朗特姐妹之一艾米莉·勃朗特的作品，是19世纪英国文学的代表作之一。'),
	('15', '大卫·科波菲尔', '名著', '查尔斯·狄更斯', 46, '《大卫·科波菲尔》是英国小说家查尔斯·狄更斯创作的长篇小说，被称为他“心中最宠爱的孩子”，于1849至1850年间，分二十个部分逐月发表。'),
	('16', '红与黑', '名著', '司汤达', 57, '《红与黑》是19世纪法国乃至欧洲文学的一座丰碑。小说围绕主人公于连的个人奋斗及两次爱情经历的描写，揭示了复辟王朝时期的波澜的阶级大博斗，反映了政治黑暗、教会腐败，贵族反动和资产阶级利欲熏心的广阔生活画面。于连的两次爱情动机都是以爱情占有为出发点最终要达到自己的政治目的。\r\n通过于连这个文学形象，一方面描述了法国七月革命前夕在人民革命浪潮冲击下的贵族以及中小资产阶级的恐慌情绪；另一方面又塑造了一个出现于社会剧烈变革中的个人野心家的艺术形象，美化了资产阶级的生活观和幸福观。小说的结构严谨匀称，语言简洁流畅，人物形象和人物性格与环境紧密相连，善于揭示人物的内心冲突和思想感情的瞬间变化，以此来突出人的个性特征，这是本书最大的艺术特点。'),
	('17', '悲惨世界', '名著', '维克多·雨果', 36, '《悲惨世界》是由法国作家维克多·雨果在1862年发表的一部长篇小说，其内容涵盖了拿破仑战争和之后的十几年的时间。'),
	('18', '安娜·卡列尼娜', '名著', '列夫·托尔斯泰', 50, '《安娜·卡列尼娜》是俄国著名作家列夫·托尔斯泰的代表作品。本书通过女主人公安娜的追求爱情悲剧，和列文在农村面临危机而进行的改革与探索这两条线索，描绘了俄国从莫斯科到外省乡村广阔而丰富多彩的图景，先后描写了150多个人物，是一部社会百科全书式的作品。'),
	('19', '约翰·克利斯朵夫', '名著', '罗曼·罗兰', 87, '《约翰·克利斯朵夫》（Jean-Christophe）是一部通过主人公一生经历去反映现实社会一系列矛盾冲突，宣扬人道主义和英雄主义的长篇小说。小说描写了主人公奋斗的一生，从儿时音乐才能的觉醒、到青年时代对权贵的蔑视和反抗、再到成年后在事业上的追求和成功、最后达到精神宁静的崇高境界。'),
	('20', '倚天屠龙记', '武侠', '金庸', 117, '《倚天屠龙记》是武侠小说家金庸1961年所著的长篇小说，“射雕三部曲”系列第三部。[1]  故事时间前后跨度一百年，以元末群雄纷起、江湖动荡为广阔背景，剧情围绕两样兵器屠龙刀和倚天剑展开。'),
	('21', '天龙八部', '武侠', '金庸', 77, '《天龙八部》是著名作家金庸的武侠代表作。著于1963年，历时4年创作完成（部分内容曾由倪匡代笔撰写），前后共有三版，并在2005年第三版中经历6稿修订，结局改动较大。'),
	('22', '天涯明月刀', '武侠', '古龙', 65, '《天涯·明月·刀》的故事是古龙另一作品《边城浪子》的后传，书中的'),
	('23', '封神榜', '神话', '许仲琳', 72, '《封神演义》一般俗称《封神榜》，又名《商周列国全传》、《武王伐纣外史》、《封神传》，是一部中国古代神魔小说。[1] '),
	('24', '盗墓笔记', '悬疑', '南派三叔', 42, '《盗墓笔记》是一本最初连载在起点中文网上的小说，后由中国友谊、时代文艺、上海文化于2007年-2011年陆续出版发行，作者南派三叔。[1]  《盗墓笔记捌：大结局（上、下）》于2011年12月19日上市，至此《盗墓笔记》系列完结，共出版实体书九本。《盗墓笔记》系列是南派三叔的代表作，其堪称近年来中国出版界的经典之作，获得百万读者狂热追捧。南派三叔也凭此作名满天下，跻身中国超级畅销书作家行列。'),
	('25', '朝花夕拾', '散文', '鲁迅', 37, '《朝花夕拾》原名《旧事重提》，是现代文学家鲁迅的散文集，收录鲁迅于1926年创作的10篇回忆性散文，[1]  1928年由北京未名社初版，现编入《鲁迅全集》第2卷。');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


-- 导出  表 new.usbk 结构
CREATE TABLE IF NOT EXISTS `usbk` (
  `unumber` varchar(50) DEFAULT NULL,
  `bnumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  new.usbk 的数据：~18 rows (大约)
/*!40000 ALTER TABLE `usbk` DISABLE KEYS */;
REPLACE INTO `usbk` (`unumber`, `bnumber`) VALUES
	('2015214456', '8'),
	('983121062', '2'),
	('983121062', '4'),
	('2015214456', '5'),
	('2015214456', '1'),
	('971508147', '4'),
	('971508147', '3'),
	('2015214456', '22'),
	('2015214456', '20'),
	('2015210798', '22'),
	('2015210798', '5'),
	('2015210945', '3'),
	('111', '21'),
	('2015214456', '4'),
	('2015214456', '19'),
	('2015214456', '10'),
	('2015214456', '18'),
	('2015210785', '4');
/*!40000 ALTER TABLE `usbk` ENABLE KEYS */;


-- 导出  表 new.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `number` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `hisnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  new.user 的数据：~18 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`number`, `name`, `password`, `hisnum`) VALUES
	('111', '111', '111', 1),
	('122121', '1312312', '1312321', 23),
	('123', '小明', '321', 22),
	('123456', '123456', '123456', 16),
	('1234567', '1234567', '123', 37),
	('15871491302', '张三', 'zs123', 1),
	('2015210785', 'Ilooker', '201521', 24),
	('2015210798', 'liuyipei', '123123', 62),
	('2015210945', 'Fall', '123123', 48),
	('2015214456', '小黄', 'cheng123', 59),
	('222', '小刚', 'sd5656', 81),
	('444', '小红', '444', 60),
	('4444', '小亮', '4758838', 27),
	('757', '小志', '255', 103),
	('888888', '小白', '99999', 57),
	('93121062', '小黑', '983654123', 59),
	('971508147', '小玄', 'xuan123', 57),
	('983121062', '小琴', '123456', 16);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;