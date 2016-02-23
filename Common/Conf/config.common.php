<?php 
$config['common'] = array(
	// Web
	'WEB_TITLE' => 'HR',
	
	// MySQL
    'DB_TYPE'      =>  'mysql',     // 数据库类型  
    'DB_HOST'     =>  'localhost',     // 服务器地址  
    'DB_NAME'    =>  'thinkphp_cbajob',     // 数据库名  
    'DB_USER'      =>  'root',     // 用户名  
    'DB_PWD'       =>  'admin123',     // 输入安装MySQL时设置的密码  
    'DB_PORT'      =>  '3306',     // 端口  
    'DB_PREFIX'    =>  'cba_',     // 数据库表前缀  
    'DB_DSN'       =>  '',     // 数据库连接DSN 用于PDO方式  
	
	// ThinkPHP Config
	'MODULE_ALLOW_LIST'    =>    array('Home','Admin','User'),
	'DEFAULT_MODULE'       =>    'Home',
	'URL_HTML_SUFFIX'	=> '',
	'URL_CASE_INSENSITIVE'=>true,
	'TMPL_ENGINE_TYPE' =>'PHP'
);