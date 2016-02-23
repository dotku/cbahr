<?php
require_once 'config.common.php';
require_once 'config.dev.php';
require_once 'config.product.php';

$config = array_merge($config['common'], $config['dev']);
return $config;