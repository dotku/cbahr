<?php
namespace Api\Controller;
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
	public function getJobList() {
		$model = D('job');
		$output['data'] = $model->order('publish_date desc')->limit(100)->select();
		foreach($output['data'] as $key=>$val){
			$output['data'][$key]['publish_date'] =  date('Y-m-d', strtotime($val['publish_date']));
		}
		echo json_encode($output);
	}
	public function readFeed(){
		$xml=("http://www.offerhacks.us/feed/");
		$xmlDoc = new DOMDocument();
		$xmlDoc->load($xml);

		//get elements from "<channel>"
		$channel=$xmlDoc->getElementsByTagName('channel')->item(0);
		$channel_title = $channel->getElementsByTagName('title')
		->item(0)->childNodes->item(0)->nodeValue;
		$channel_link = $channel->getElementsByTagName('link')
		->item(0)->childNodes->item(0)->nodeValue;
		$channel_desc = $channel->getElementsByTagName('description')
		->item(0)->childNodes->item(0)->nodeValue;

		//output elements from "<channel>"
		echo("<p><a href='" . $channel_link
		  . "'>" . $channel_title . "</a>");
		echo("<br>");
		echo($channel_desc . "</p>");

		//get and output "<item>" elements
		$x=$xmlDoc->getElementsByTagName('item');
		for ($i=0; $i<=2; $i++) {
		  $item_title=$x->item($i)->getElementsByTagName('title')
		  ->item(0)->childNodes->item(0)->nodeValue;
		  $item_link=$x->item($i)->getElementsByTagName('link')
		  ->item(0)->childNodes->item(0)->nodeValue;
		  $item_desc=$x->item($i)->getElementsByTagName('description')
		  ->item(0)->childNodes->item(0)->nodeValue;
		  echo ("<p><a href='" . $item_link
		  . "'>" . $item_title . "</a>");
		  echo ("<br>");
		  echo ($item_desc . "</p>");
		}
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
			'fontSize'		=> 14
		);
		$Verify = new \Think\Verify($config);
		$Verify->entry($id);
	}
	public function detail(){
		$model_job = D('job');
		$data['id'] = intval(I('path.2'));
		$info = $model_job->where($data)->find();
		if ($info) {
			$output['info'] = $info;
			$this->output = $output;
			$this->display();
		} else {
			$this->error('无此页面', U('/index'));
		}
	}
}