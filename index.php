<?php

defined('SITE_PATH') || define('SITE_PATH', realpath(dirname(__FILE__).'/'));
defined('APPLICATION_ENV') || define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'production'));

set_include_path(implode(PATH_SEPARATOR, array(
    realpath(SITE_PATH.'/lib/class'),
    get_include_path(),
)));

require_once 'Zend/Application.php';

$application = new Zend_Application(
    APPLICATION_ENV,
    SITE_PATH.'/application/configs/application.ini'
);
$application	->bootstrap()
            	->run();