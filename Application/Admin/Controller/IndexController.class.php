<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
	public function _initialize() {
		if ($_SESSION['role'] != 'admin') {
			$this->redirect('/login');
		}
	}
    public function index(){
        // display all job list 
		$model = D('job');
		$output['list_job'] = $model->select();
		$this->output = $output;
		$this->display();
		//var_dump($_SESSION);
		// add job by verification
		
    }
	public function login() {
		$this->display();
	}
	public function logout() {
		session_destroy();
		$this->redirect('/login');
	}

	public function add() {
		if ($_POST) {
			$model = D('job');
			if ($model->add($_POST)) {
				$this->success('提交成功');
			} else {
				$this->error('提交失败');
			}
		} else {
			$this->display();
		}
	}
	public function job() {
		$this->display();
	}
	public function getVCode($id = 1) {
		$config =    array(
			'length'      =>    4,     // 验证码位数
			'useNoise'    =>    false, // 关闭验证码杂点
		);
		$Verify = new \Think\Verify($config);
		$Verify->entry($id);
	}
}