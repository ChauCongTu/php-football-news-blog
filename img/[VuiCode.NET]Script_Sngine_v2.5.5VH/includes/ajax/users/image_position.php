<?php
/**
 * ajax -> users -> image position
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

// validate inputs
if(!isset($_POST['id']) || !is_numeric($_POST['id'])) {
    _error(403);
}
if(!isset($_POST['position'])) {
    _error(403);
}

// crop (user|page|group) picture
try {

	switch ($_POST['handle']) {
		case 'user':
            /* prepare update query */
            $_POST['id'] = $user->_data['user_id'];
            $table_name = "users";
            $table_position_field = "user_cover_position";
            $table_id_field = "user_id";
			break;

        case 'page':
            /* check if the user is the page admin */
            if(!$user->check_page_adminship($user->_data['user_id'], $_POST['id'])) {
                _error(403);
            }
            /* prepare update query */
            $table_name = "pages";
            $table_position_field = "page_cover_position";
            $table_id_field = "page_id";
            break;

        case 'group':
            /* check if the user is the group admin */
            if(!$user->check_group_adminship($user->_data['user_id'], $_POST['id'])) {
                _error(403);
            }
            /* prepare update query */
            $table_name = "groups";
            $table_position_field = "group_cover_position";
            $table_id_field = "group_id";
            break;

        case 'event':
            /* check if the user is the event admin */
            if(!$user->check_event_adminship($user->_data['user_id'], $_POST['id'])) {
                _error(403);
            }
            /* prepare update query */
            $table_name = "events";
            $table_position_field = "event_cover_position";
            $table_id_field = "event_id";
            break;

		default:
			_error(400);
			break;
	}

    // update cover position
    $db->query(sprintf("UPDATE %s SET %s = %s WHERE %s = %s", $table_name, $table_position_field, secure($_POST['position']), $table_id_field, secure($_POST['id'], 'int') )) or _error(SQL_ERROR_THROWEN);

	// return & exit
    return_json();

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}

?>