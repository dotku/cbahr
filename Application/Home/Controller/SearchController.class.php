<?php
namespace Home\Controller;
use Think\Controller;
class SearchController extends Controller {
	public function index(){
		//$fields = array('title', 'company', 'location', 'content', 'publisher', 'publisher_company');
		$fields = 'title|company|location|content|publisher|publisher_company';
		$list_job = array();
		
		if ($_GET['keywords']) {
			$model_job = D('job');
			$keywords = explode(' ', $_GET['keywords']);
			foreach ($keywords as $key => $val) {
				$keywords[$key] = '%'.$val.'%';
			}
			$map[$fields] = array('like', $keywords, 'OR');
			$list_job = $model_job->where($map)->select();
		} else {
			$model_job = D('job');
			$list_job = $model_job->select();
		}
		
		if (!empty($list_job)) {
			$output['list_job'] = $list_job;
			$this->output = $output;
		}
		
		$this->display();
	}
}