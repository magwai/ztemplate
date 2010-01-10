<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
	protected function _initDoctype() {
		$this->bootstrap('view');
		$view = $this->getResource('view');
        $view->doctype('HTML5');
       	$view->addBasePath(SITE_PATH . '/lib/application/views');
       	$view->addHelperPath(SITE_PATH . '/lib/application/views/helpers', 'View_Helper');
       	Zend_Controller_Action_HelperBroker::addPath(SITE_PATH . '/lib/application/helpers', 'Helper');
       	Zend_Controller_Action_HelperBroker::addPath(SITE_PATH . '/application/helpers', 'Helper');
    }

	protected function _initAutoload() {
		$autoloader = new Zend_Application_Module_Autoloader(array(
			'namespace' => 'Site_',
			'basePath'  => SITE_PATH . '/application',
		));
		return $autoloader;
	}

	protected function _initRouter() {
		$this->bootstrap('db');
		$um = new Site_Model_Curl();
		$result = $um->fetchAll();
		$router = Zend_Controller_Front::getInstance()->getRouter();
		if ($result) {
			foreach ($result as $n => $el) {
				$map = array();
				if ($el->map) {
					$t = explode(',', $el->map);
					if ($t) foreach ($t as $n => $m) $map[$n + 1] = $m;
				}
				$route = new Zend_Controller_Router_Route_Regex(
					$el->url,
					array(
						'controller' => $el->controller,
						'action'     => $el->action ? $el->action : 'index'
					),
					$map
				);
				$router->addRoute($n, $route);
			}
		}
		$route = new Zend_Controller_Router_Route_Regex(
			'(.*)\.(js|css)$',
			array(
				'controller' => 'minify',
				'action'     => 'index'
			),
			array('', 'path', 'ext')
		);
		$router->addRoute($n + 1, $route);
	}
}
