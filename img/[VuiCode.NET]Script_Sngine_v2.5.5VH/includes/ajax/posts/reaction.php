<?php
/**
 * ajax -> posts -> reaction
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// user access
user_access(true);

// valid inputs
if($_POST['do'] != "add_product" && (!isset($_POST['id']) || !is_numeric($_POST['id']))) {
	_error(400);
}

// reaction
try {

	// initialize the return array
	$return = array();

	switch ($_POST['do']) {

		case 'share':
			$user->share($_POST['id']);
			break;

		case 'delete_post':
			$refresh = $user->delete_post($_POST['id']);
			if($refresh) {
				$return['refresh'] = true;
			}
			break;

		case 'sold_post':
			$user->sold_post($_POST['id']);
			break;

		case 'unsold_post':
			$user->unsold_post($_POST['id']);
			break;

		case 'save_post':
			$user->save_post($_POST['id']);
			break;

		case 'unsave_post':
			$user->unsave_post($_POST['id']);
			break;

		case 'boost_post':
			$user->boost_post($_POST['id']);
			break;

		case 'unboost_post':
			$user->unboost_post($_POST['id']);
			break;

		case 'pin_post':
			$user->pin_post($_POST['id']);
			break;

		case 'unpin_post':
			$user->unpin_post($_POST['id']);
			break;

		case 'like_post':
			$user->like_post($_POST['id']);
			break;

		case 'unlike_post':
			$user->unlike_post($_POST['id']);
			break;

		case 'hide_post':
			$user->hide_post($_POST['id']);
			break;

		case 'unhide_post':
			$user->unhide_post($_POST['id']);
			break;

		case 'delete_comment':
			$user->delete_comment($_POST['id']);
			break;

		case 'like_comment':
			$user->like_comment($_POST['id']);
			break;

		case 'unlike_comment':
			$user->unlike_comment($_POST['id']);
			break;

		case 'like_photo':
			$user->like_photo($_POST['id']);
			break;

		case 'unlike_photo':
			$user->unlike_photo($_POST['id']);
			break;

		case 'add_product':
			// valid inputs
			/* filter product */
			if(isset($_POST['product'])) {
				$_POST['product'] = _json_decode($_POST['product']);
				if(!is_object($_POST['product'])) {
					_error(400);
				}
				/* check product name */
				if(is_empty($_POST['product']->name)) {
					modal(MESSAGE, __("Product Name Needed"), __("Add a name so people know what you are selling"));
				}
				/* check product price */
				if(is_empty($_POST['product']->price)) {
					modal(MESSAGE, __("Product Price Needed"), __("Please add your product price"));
				}
				if(!is_numeric($_POST['product']->price) || $_POST['product']->price <= 0) {
					modal(MESSAGE, __("Product Price Needed"), __("Please add valid product price"));
				}
				/* check product category */
				if(!in_array($_POST['product']->category_id, $user->get_market_categories_ids())) {
					modal(MESSAGE, __("Product Category Needed"), __("Please add valid product category"));
				}
			}
			/* filter photos */
			$photos = array();
			if(isset($_POST['photos'])) {
				$_POST['photos'] = _json_decode($_POST['photos']);
				if(!is_object($_POST['photos'])) {
					_error(400);
				}
				/* filter the photos */
				foreach($_POST['photos'] as $photo) {
					$photos[] = $photo;
				}
				if(count($photos) == 0) {
					_error(400);
				}
			}
			/* prepare inputs */
			$inputs['handle'] = "me";
			$inputs['privacy'] = "public";
			$inputs['message'] = $_POST['message'];
			$inputs['product'] = $_POST['product'];
			$inputs['photos'] = $photos;
			$inputs['feeling_action'] = $_POST['feeling_action'];
			$inputs['feeling_value'] = $_POST['feeling_value'];
			/* publish */
			$post = $user->publisher($inputs);
			$return['callback'] = "window.location = '".$system['system_url']."/posts/".$post['post_id']."';";
			break;

		case 'add_vote':
			$user->add_vote($_POST['id']);
			break;

		case 'delete_vote':
			$user->delete_vote($_POST['id']);
			break;

		case 'change_vote':
			// valid inputs
			if(!isset($_POST['checked_id']) || !is_numeric($_POST['checked_id'])) {
				_error(400);
			}
			$user->change_vote($_POST['id'], $_POST['checked_id']);
			break;

		case 'hide_announcement':
			$user->hide_announcement($_POST['id']);
			break;

		case 'hide_daytime_message':
			$expire = time()+21600; /* expire after 6 hours */
			setcookie('dt_msg', 'true', $expire, '/');
			break;
	}

	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}

?>