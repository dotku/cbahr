<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        // display all job list 
		$model = D('job');
		$output['list_job'] = $model->select();
		$this->output = $output;
		$this->display();
		// add job by verification
		
    }
	public function add() {
		if ($_POST) {
			$model = D('job');
			$verify = new \Think\Verify();
			if (!$verify->check($_POST['vcode'], 1)) {
				$this->error('验证码错误');
				return;
			}
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
	public function logout() {
		unset($_SESSION);
	}
	public function vCode($id = 1) {
		$config =    array(
			'length'		=>    4,     // 验证码位数
			'useNoise'	=>    false, // 关闭验证码杂点
			'fontSize'		=> 18
		);
		$Verify = new \Think\Verify($config);
		$Verify->entry($id);
	}
	public function detail(){
		$model_job = D('job');
		$data['id'] = intval(I('path.2'));
		// 浏览量
		$info = $model_job->where($data)->find();
		$info['view']++;
		$model_job->save($info);
		if ($info) {
			$output['info'] = $info;
			$this->output = $output;
			$this->display();
		} else {
			$this->error('无此页面', U('/index'));
		}
	}
}