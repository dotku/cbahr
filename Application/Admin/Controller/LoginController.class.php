<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function index(){
		if ($_SESSION['role'] == 'admin') {
			$this->redirect('/index');
		}
		if ($_POST) {
			$model_user = D('user');
			$data['email'] = $_POST['email'];
			$data['password'] = md5($_POST['password']);
			$info_user = $model_user->where($data)->find();
			if ($info_user) {
				$_SESSION['user'] = $info_user;
				$_SESSION['role'] = $info_user['role'];
				$this->success('欢迎回来', U('/index'));
			}
		} else {
			$this->display();
		}
    }
}