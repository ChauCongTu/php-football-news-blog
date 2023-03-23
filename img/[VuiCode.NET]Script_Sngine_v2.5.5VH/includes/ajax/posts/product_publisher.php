<?php
/**
 * ajax -> posts -> product publisher
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

try {

	// initialize the return array
	$return = array();

	// prepare publisher
	$smarty->assign('market_categories', $user->get_market_categories());
	$smarty->assign('feelings', get_feelings());
	$smarty->assign('feelings_types', get_feelings_types());
	/* return */
	$return['product_publisher'] = $smarty->fetch("ajax.product_publisher.tpl");
	$return['callback'] = "$('#modal').modal('show'); $('.modal-content:last').html(response.product_publisher);";

	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal(ERROR, __("Error"), $e->getMessage());
}


?>