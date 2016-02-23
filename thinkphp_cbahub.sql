-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2016 at 01:53 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thinkphp_cbahub`
--

-- --------------------------------------------------------

--
-- Table structure for table `cba_bz`
--

CREATE TABLE IF NOT EXISTS `cba_bz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) NOT NULL,
  `company_description` text NOT NULL,
  `company_location` varchar(100) NOT NULL,
  `company_found_year` year(4) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `publisher_company` varchar(11) NOT NULL,
  `created_time` timestamp NOT NULL,
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cba_bz`
--

INSERT INTO `cba_bz` (`id`, `company_name`, `company_description`, `company_location`, `company_found_year`, `publisher_name`, `publisher_company`, `created_time`, `updated_time`) VALUES
(2, '微软', '微软，是一家总部位于美国的跨国科技公司，是世界PC（Personal Computer，个人计算机）机软件开发的先导，由比尔·盖茨与保罗·艾伦创办于1975年，公司总部设立在华盛顿州的雷德蒙德市（Redmond，邻近西雅图）。以研发、制造、授权和提供广泛的电脑软件服务业务为主。', '华盛顿州', 1973, 'Jay', '蘑菇科技', '2015-12-20 01:16:47', '2015-12-19 17:16:47'),
(3, 'Plenry', 'Plenry is a social platform for people to host, join, and explore fun activities. Whether a last minute gathering, or an adventure that lets you step out of your comfort zone, Plenry connects you to unique social experiences that create friendships and help build new communities.', '', 2015, 'Jay', '蘑菇科技', '2015-12-20 01:56:04', '2015-12-19 17:56:04'),
(4, 'Maguma', 'Maguma 的 Founder, Tobias Ratschiller, 搭建了著名的 PHP 开源软件 phpMyAdmin', 'Italy', 2000, '', '', '0000-00-00 00:00:00', '2015-12-19 18:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `cba_bz_cate`
--

CREATE TABLE IF NOT EXISTS `cba_bz_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cba_et`
--

CREATE TABLE IF NOT EXISTS `cba_et` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cba_job`
--

CREATE TABLE IF NOT EXISTS `cba_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `publisher_company` varchar(100) DEFAULT NULL,
  `publish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `cba_job`
--

INSERT INTO `cba_job` (`id`, `title`, `company`, `location`, `content`, `publisher`, `publisher_company`, `publish_date`, `view`) VALUES
(3, 'Visual Interaction Designer - 15-02303', '', 'San Francisco, CA', 'The Senior User Experience designer is responsible for creating task flows, fine grain interaction design, and information architecture documentation and deliverables (wireframes, interaction design patterns, clickable prototypes). A firm understanding of user-centered design principles/process and a strong understanding of the latest innovations in interaction design across devices are critical to success in this role. You will be creating design solutions that allow founders and other non-financial startup folks to spend less time banking and allow the more financially-oriented to spend their time banking smartly and efficiently. We''re working in a highly iterative, collaborative, and fast moving team so the combo of perfectionism coupled with adaptability is ideal.\r\n\r\nKey activities include\r\nComprehending the needs, tasks, and goals of an audience made up of startup contributors at different stages of growth and translating them into creative concepts and functional flows\r\nCollaborating with cross-functional teams to produce high-quality task flows and interaction design patterns, from concept to production, for mobile, tablet and desktop web as well as for mobile app experience\r\nAbility to clearly document interaction pattern specifics quickly within an agile team to effectively communicate interaction and design ideas to product management stakeholders and engineering teams\r\n\r\n\r\nPrimary Responsibilities:\r\nWork closely with product, design and engineering teams across multiple locations (Mainly in US and UK) to translate business requirements into meaningful experiences\r\nHave good taste/strong visual skills with a strong eye for intuitive interaction design patterns\r\nExpressing interaction design patterns for complex transactional experiences for web and mobile.\r\nSolid understanding of interaction design patterns related to web and mobile design\r\nStrong sense for user-centered design principles, careful attention to detail, and be able to see the big picture\r\nFacilitating stakeholder interviews, soliciting relevant information, and understanding business objectives\r\nExperience collaborating with research teams to continuously get a better understanding of customers and their needs\r\nSome experience using both quantitative and qualitative data to inform design decisions\r\nHigh familiarity with web development processes\r\nComfort working in pre-existing visual designs for prototyping and presentations. Original visual design system will be created by someone else, but you must be comfortable expressing ideas in both wireframe, whiteboard and higher fidelity of comps\r\nDemonstrated ability to develop big and small ideas for removing friction and transforming cumbersome and complex user activities across devices and platforms\r\nExcellent oral and written communication and presentation skills\r\nHigh familiarity with web development concepts, functionality, processes and implementation\r\nHigh tolerance for ambiguity and complexity matched only by your desire to organize, untangle, and simplify it\r\nStrong familiarity and experience with both consumer and commercial facing software & sites\r\nCreative tactics for managing multiple conflicting priorities in a fast-paced environment\r\nSkills and Requirements\r\n6-8 years experience as an interaction designer, visual designer.\r\nDegree in a design-related field, such as Graphic Design, Human-Computer Interaction, Web Design preferred.\r\nExperience in usability and user experience Mobile and device experience best practices and methodologies\r\nAdvanced proficiency in a variety of design tools such as Photoshop, Sketch, Visio, Omnigraffle, Invision and any other prototyping tools\r\nExperience and/or familiarity with current web technology capabilities: CSS3, HTML5, responsive design, cross-device considerations.\r\nAbility to prioritize and manage work in a fast- paced ambiguous environment\r\nExperience with both consumer and business facing applications or specifically financial experience desired.\r\n\r\nThank you so much for your time, I hope to hear back from you soon!', 'Paula Bryant', 'Global Technical Talent, Inc.', '2015-11-10 08:00:00', 1),
(4, 'Full Stack Developer role in San Francisco for a highly innovative company', '', 'San Francisco, CA', 'Full Stack Developer role in San Francisco for a highly innovative company. Our client [is looking] for someone as soon as early as tomorrow! Thank you and I look forward to hearing from you soon!\r\n\r\nWarm Regards, ', 'Liam Eriksson', 'Insight Global', '2015-11-24 04:22:56', 9),
(5, '玫琳凯招聘全职或兼职', '玫琳凯', '旧金山', '你好,我是 Sally 是Mary kay玫琳凯的专业美容老师.\r\n手把手免费教你们变漂亮( free facial and make up) ，欢迎你和朋友一起来参加我的美丽课堂,再送惊喜小礼物哦！Also business  opportunity , 还有招聘全职或兼职. \r\n歡迎來電：415-819-3838, www. Marykay.com/sallyru 或微信: mksallyru2888, 留言预约 和订购你喜欢的护肤品。                                                    ', 'sallyru', '玫琳凯', '2015-11-24 21:40:00', 7),
(6, '美国金融行业公司招聘agent', 'PFA', '三藩市, LA, NY', '三藩市，LA, NY,招請\r\n美国金融行业公司招聘agent, 要有良好背景，通过考牌照，就可轻松賺錢。佣金丰厚，略懂英文。每周三晚上，周六早上來公司培训，其余时间自由支配。額外收入的好時機。必須要考牌！完成培訓課程有$750 退還！多劳多得。\r\n有任何问题请致电中文服务:1-415-939-3290。加微信号:727429532\r\n成为一名專業agent的门槛是？\r\n你必须年满 18周岁，有綠卡或公民。有保險执照更好！加上有上進的決心，好學，有創業念頭。达到上述要求你就可以成为我們的agent\r\n第二步，你必須要上政府的課程考牌照的，通过 政府的牌照你可以在美國50個州幫助客人\r\n从开始到完成，培訓程序大约需要一到3個月。睇你自己情況\r\n我們最棒的特点是时间自由支配，你想全工也行，半工也可以赚多一点补贴家用。想多赚一些钱时的好時機！\r\n 有興趣請聯絡我', 'Fiona Kuang', '', '2015-11-24 21:46:09', 1),
(7, '小纽团队扩张，诚招两位全职Marketing Specialist 、两位 Social Media Editor以及多名实习生', 'NYIS', 'NY', '小纽团队扩张，诚招两位全职Marketing Specialist 、两位 Social Media Editor以及多名实习生，感兴趣的小伙伴快来秀出你的热情，用简历和Cover Letter把小纽淹没吧！\r\n\r\n如果你学习欲望强、思维活跃、幽默逗比、认真尽责、喜欢team work，那么欢迎你加入小纽的欢乐大家庭！\r\n\r\n有相关从业经历的小伙伴，希望你的宝贵经验能助小纽走得更远；没有工作经历的小伙伴，也欢迎你能为小纽带来充满活力的新鲜血液。\r\n\r\n工作地点在大纽约地区，表现出色申请H-1B那都不是事儿！请发送简历、Cover Letter至hr@nyis.com，邮件标题注明你所申请的职位哟！\r\n\r\n下面是各职位详细要求及描述：\r\nMarketing Specialist\r\nWe are currently searching for two Marketing Specialists, one focusing on design, and the other focus on campaign. You will be part of a team responsible for designing and executing email marketing campaigns. You will win high-value opportunities by joining our rapidly growing global team and working on dynamic projects. This position requires a fast learner and multitasker who desires to jump in and give 100%.\r\nJob Responsibilities:\r\n• Design, create, and execute the day-to-day delivery of email marketing campaigns\r\n• Email editorial and creative content\r\n• Review key aspects of the email design, build and deployment processes to ensure optimal quality\r\n• Prepare campaign reports and analysis\r\nQualifications for the Design-Focused Marketing Specialist:\r\n• Chinese-English bilingual skills (Chinese native speakers preferred)\r\n• Excellent written and verbal communication skills\r\n• Solid understanding of design software including Photoshop.\r\n• Knowledge of HTML a plus.\r\n• Strong computer skills including Microsoft Office (Word, Excel, PowerPoint, etc.)\r\n• Excellent organizational and prioritization skills\r\n• Ability to handle multiple tasks and directives\r\n• Ability to work in a fast-paced environment\r\n• Strong team player with superb professionalism\r\n• BA/BS in Marketing, or related field\r\n• Legally authorized to work in U.S.\r\nQualifications for the Campaign-Focused Marketing Specialist:\r\n• Chinese-English bilingual skills (Chinese native speakers preferred)\r\n• Excellent written and verbal communication skills\r\n• Strong computer skills including Microsoft Office (Word, Excel, PowerPoint, etc.)\r\n• Knowledge of ESP a plus\r\n• Excellent organizational and prioritization skills\r\n• Ability to handle multiple tasks and directives\r\n• Ability to work in a fast-paced environment\r\n• Strong team player with superb professionalism\r\n• Experience with marketing, design a plus\r\n• BA/BS in Marketing, or related field\r\n• Legally authorized to work in U.S.\r\nSocial Media Editor\r\nWe are currently searching for two Social Media Editors, focusing on Weibo and WeChat management and content creation. You will win high-value opportunities by joining our rapidly growing global team and working on dynamic projects. This position requires a fast learner and multitasker who desires to jump in and give 100%.\r\nJob Responsibilities:\r\n• Idea generalization for social media articles\r\n• Draft and edit social media articles\r\n• Measure social media engagement results\r\n• Prepare social media campaign reports and analysis\r\nQualifications:\r\n• Chinese-English bilingual skills (Chinese native speakers strongly preferred)\r\n• Excellent written and verbal communication skills\r\n• Strong sense of current news and industry trends\r\n• Strong computer skills including Microsoft Office (Word, Excel, PowerPoint, etc.)\r\n• Excellent organizational and prioritization skills\r\n• Ability to handle multiple tasks and directives\r\n• Ability to work in a fast-paced environment\r\n• Strong team player with superb professionalism\r\n• BA/BS in Marketing, Public Relations, Communications, or related field\r\n• Legally authorized to work in U.S.', '小纽', 'NYIS', '2015-11-24 21:51:49', 2),
(8, 'DevOps Engineer, 6 month contract to hire', '', 'Hawthorne, CA', 'Job title: DevOps Engineer\r\nLocation: Hawthorne, CA\r\nDuration: 6 month contract to hire\r\nPay Range: Up to $69.50 an hour\r\nSuccessful candidate will design, develop, implement, ensure and facilitate stability, integrity, and efficient operation of all information systems, tools, and processes that support our engineering process.\r\nRequirements:\r\nBS in Computer Science or Information Systems or equivalent experience.\r\nMinimum 5 years of experience in the field of Software Development and/or DevOps.\r\nPrevious experience with Atlassian products a plus.\r\nExperience in C, Python, Bash, Linux, Javascript and other programming Languages.\r\nExperience in Agile Methodologies.\r\nExperience with a version control systems.\r\nExperience with Microsoft Visio a plus.\r\nExperienced in writing detailed build plans.\r\nExperienced in writing Release Notes and Version Description Documents.\r\nExperienced in build automation (Continuous Development/Integration process).\r\nTechnically proficient in MS Office products.\r\n', 'Sakhshi Kanda', 'ConsultNet, LLC ', '2015-11-24 22:20:03', 2),
(9, 'Bay Area Staff Accountant and Tax Accountant', '', 'San Jose', 'CPA firm serving the Bay Area and international clients has opening for Staff Accountant and Tax Accountant\r\n\r\nJob Responsibilities:\r\n\r\n1) Prepare or review individual and business entity tax returns.\r\n2) Accounting write-up work and consultation for business, including general ledger entries, balance sheet, income statement, payroll, bank reconciliation, etc. \r\n3) Prepare or supervise payroll administration work for clients with third party payroll service providers and/or payroll software. \r\n4) Interface with clients over phone/email, provide tax guidance to individual and business. \r\n5) Manage entry level accountants, review staff work products, etc. \r\n6) Tax research using online tax library service and other sources.\r\n7) Provide assistance to CEO or partners.\r\n\r\n\r\nQualifications: \r\n\r\n1) B.S. Degree in Accounting or Taxation, Master degree is preferred. \r\n2) Licensed CPA or candidate.\r\n3) 1 to 3 year Accounting working experience.\r\n4) 1 to 3 year experience of Quickbooks, Peachtree and Lacerte or similar tax software.\r\n5) Three to five year prior supervisory experience.\r\n6) Bilingual in English and Mandarin is preferred.\r\n\r\nmichaelyucpa@gmail.com', 'Michael Yu', '', '2015-11-25 07:27:25', 1),
(10, 'PayPal Devops team 招network engineer(MTS 1 or MTS 2) ', 'PayPal', '', '转：我在的PayPal Devops team 招network engineer(MTS 1 or MTS 2) , with the focus data center networking, command of common data center networking technologies , L2/L3, load-balancing , Cisco nexus and arista switches , F5 LB, palo alto / juniper srx FW, Linux system administration , common web tech such as apache and tomcat , opportunities to work on large scale public and private cloud projects. Base pay $130k to $160k depending on experience, 15% to 20% bonus plus RSU. Company will do H1B transfer . please contact me at weipingli8910@gmail.com if interested . Thanks [抱拳][抱拳]', 'Weiping Li', 'PayPal', '2015-11-25 10:14:32', 6),
(11, 'Paid Intern! SDN network project', '', '', 'Paid Intern！我们客户急需做过 SDN network project 或者研究这个方面的phd 做intern。请联系kacee.chen@intelliprogroup.com', 'kacee chen', '', '2015-11-25 10:17:19', 1),
(12, '招DevOps Engineer！提供h1b！', '', '', '招DevOps Engineer！提供h1b！We are looking for software engineers with hands-on lab experience to work on OPNFV Lab and infrastructure development. The work includes system and networking configuration, system installation, continuous integration (CI), testing, etc. The candidate has to be self-motivated and be able to design and write efficient code with minimum supervision. Required Experience and Skills: \r\nGood knowledge in Linux operating system, with system administration skills desirable. Basic understanding of networking, and L2/L3 configuration of a lab environment. Experience with common continuous integration tools, such as git, gerrit, jenkins, zuul, etc. Familiar with Bash, Python, or other major scripting languages. Excellent communication skills.请适合条件的candidate发简历到kacee.chen@intelliprogroup.com', 'kacee chen', '', '2015-11-25 10:20:23', 10),
(13, '湾区互联网创业公司寻找技术合伙人', '', '', '湾区互联网创业公司寻找技术合伙人。愿意给工资+期权。要求全职+独立开发mobile app. ', 'WeChat: Gs1120', '', '2015-11-25 10:27:03', 4),
(14, '征全职文秘/客服两位', '', '', '借风水宝地发条广告：征全职文秘/客服两位。要求中，英文读写听说流利。有兴趣的请寄简历CocoRealEstateTeam@gmail.com.  谢谢', 'Coco', '', '2015-11-25 20:51:09', 2),
(15, 'UI Engineer (MTS 4)', '', '', 'UI Engineer (MTS 4)\r\n \r\nOur group focuses on software development of cloud-based, user-friendly and large-scale network application platform and application suite that can maximize the value of enterprise and service provider customer’s investment in network infrastructure. As a member in this group, you will have the opportunity to design and implement user interface with amazing user experiences while interacting with backend in the areas of high performance network virtualization, big data analysis and graph-oriented data management, etc.  A key contributor across small, agile software engineering teams, your work will be visible, valued and core to Juniper''s success in the rapidly evolving domain of network virtualization.\r\n \r\nResponsibilities:\r\n \r\n- Business requirement analysis and high level software design;\r\n- Working with UX team to translate mockups into functional specifications\r\n- Coding with Java Scripts, Python or Java\r\n- Writing and executing unit and integration tests;\r\n- Debugging and fixing software defects.\r\n \r\n \r\nRequirements:\r\n \r\n1. BS or MS in Computer Science or EE (BS with 3+ yrs experience)\r\n2. Proficient at front-end engineering using Object-Oriented JavaScript, working with various JavaScript libraries (jQuery, kendoUI, Backbone, underscore, bootstrap etc.), HTML and CSS\r\n3. Ability to design UIs which scale and have good performance\r\n4. Must be a team player and be enthusiastic to learn and explore new technologies\r\n5. Experience with UI testing frameworks -- Selenium, Protractor, Jasmine, PhantomJS, etc. is a plus\r\n6. Experience in networking, security and database areas also a plus.', 'lyihuang@juniper.net', '', '2015-11-25 20:58:02', 7),
(16, 'Test Engineer, 3+ Month contract position', '', 'Mountain View, CA', 'I have an open position for  Test Engineer  role with one of our direct client. These are 3+ Month contract position in Mountain View, CA.\r\nPlease let me know if you are available and interested in this role. Also please let me know when we can connect over the phone to discuss this role in detail.\r\n \r\nWe are only looking for W2 candidates…\r\n \r\nRole: Test Engineer\r\nLocation: Mountain View, CA\r\nDuration: 3 Months (Possible Extension)\r\n \r\n \r\nJob Description:--\r\n \r\nResponsibilities: \r\n•Ability to create test automation from scratch and create concise test plans\r\n•Drive testing effort for multiple projects simultaneously with continuous improvement in test coverage\r\n•Design, implement and maintain all required automation as needed using object-oriented methodologies\r\n•Analyze failures, track them and drive them to resolution\r\n•Set priorities, accommodate requirement and resource changes\r\n•Adept at working as a team as well as solo player\r\n \r\nRequirements: \r\n•5+ years of automation testing experience, ideally testing mobile / web applications\r\n•Minimum 2+ years of mobile testing desired\r\n•Experience with automation tools (Appium - mobile automation, Selenium - web automation, TestNG)\r\n•Proficient in OO programming languages (Ruby or Java)\r\n•Proficient in common scripting languages (Shell or Ruby)\r\n•Ability to quickly adapt to shifting priorities, demands, and timelines through analytical and problem-solving\r\n \r\ncapabilities:\r\n•Must be proactive and self-manageable.\r\n•Able to learn, understand, and apply new technologies.\r\n•Excellent technical, written, and verbal interpersonal communication skills\r\n•Bachelor''s or Master''s Degree in Computer Science \r\n\r\nThanks & Regards\r\nDan\r\nTechnical Recruiter| mailto: dhanaji.sakhre@intelliswift.us\r\nContact No.: (510) 509-9013 \r\nWebsite – www.intelliswift.com', 'Dan', 'intelliswift.us', '2015-11-25 23:01:31', 0),
(17, 'Looking for full stack Senior Engineer ', '', 'Los Gatos', 'The company is creating a next generation of enterprise customer relationship application that will fundamentally change the relationships of customers and their partners.  We are looking for a full stack Senior Engineer to Architect level  candidate to join our product development team and help us make history. In this role, you will design, develop, deploy, manage and support a state of art SaaS product that serves our customers. You will be responsible for developing, deploying and managing a HTML5, Java Script, and Java based application in AWS environment.\r\n \r\nYou will have excellent opportunities to learn, grow, contribute and make an impact. You will work with a team of great people.\r\nResponsibilities\r\n·      Design, develop, test, deploy, configure, manage and support of a HTML5, JavaScript and Java based web applications in AWS environments\r\n·      Developing applications using AWS services, including PostgreSQL RDS, S3, SES, etc.\r\n·      Configure, Deploy, Tune and Monitor applications in AWS environments using Beanstalk, ELB, Route 53, Route 53, etc.\r\n·      Configure and manage continuous integration servers using Jenkins\r\n·      Work with agile development practices\r\nQualifications\r\n·      Expert in HTML5, CSS and JavaScript programming\r\n·      Strong Java, RDBMS, and Servlet programming experience\r\n·      Experience with AWS development, deployment, configuration and monitoring experience\r\n·      Experience with performance tuning experience with one or more relational databases, PostgreSQL is a strong plus.\r\n·      Experience with  Linux scripting and configuration\r\n·      Experience with configuring and managing Jenkins based CI Servers\r\n·      Keen attention to details\r\n·      Performs well with minimal direction\r\n·      Performs well under tight deadlines\r\n·      Outstanding communication skills in all forms: written and verbal\r\n \r\nEducation\r\nBachelor degree in CS or equivalent', 'Weichat: WonderfulHelen', '', '2015-11-25 23:05:51', 3),
(18, '《环球市场》现诚征海外兼职记者（10名）和兼职媒体代理（2名）', '', '', '《环球市场》杂志创刊于1993年，是中国新闻出版总署批准国内外公开发行的泛经济类综合性期刊，隶属于环球新闻实业公司，公司总部设于海口，在上海丶北京丶杭州丶福州设有分站。现公司旗下杂志除《环球市场》外，另有《环球体育-灌篮》丶《环球首映》等期刊。目前《环球市场》杂志有意拓展海外发行渠道和财经深度报道栏目，现诚征海外兼职记者（10名）和兼职媒体代理（2名），工作占时比低，待遇优厚。有相关新闻工作经历者或职场人脉丰富者优先，有意应聘者请投简历（中英文版丶并请来函标题上注明所在城市或地区）至globalshanghai@163.com。', 'globalshanghai@163.com', '', '2015-11-26 00:01:27', 1),
(19, '招募话剧演员，中文剧本', '', '', '《招演员》招募话剧演员，中文剧本，有演出经验者优先，有薪水报酬. Audition时间 本月11月24号---29号.有意者加微信LisaJ__0459', '微信: LisaJ__0459', '', '2015-11-26 00:54:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cba_user`
--

CREATE TABLE IF NOT EXISTS `cba_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cba_user`
--

INSERT INTO `cba_user` (`id`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '44219991@qq.com', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
