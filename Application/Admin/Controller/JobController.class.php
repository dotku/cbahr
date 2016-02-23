<?php
namespace Admin\Controller;
use Think\Controller;
class JobController extends Controller {
    public function delete(){
		if (I('path.2')) {
			$model_job = D('job');
			if ($model_job->delete($_GET['id'])) {
				$this->success('删除成功', U('/index'));
			} else {
				$this->error('删除失败');
			};
		}
    }
	public function edit(){
		$id = I('path.2');
		var_dump($id);
	}
}