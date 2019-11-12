<?php 

	$conn = new mysqli("localhost", "root", "", "help");

	//Parent Category
	$parent = "SELECT id, name FROM category where pid = 0";
    $get_parent = $conn->query($parent);
    $row = $get_parent->fetch_assoc();
    $parent_array = array();
    while($row = $get_parent->fetch_assoc()){
    	$parent_array[] = $row;
    }

    // Child Category
	$child = "SELECT id, name, pid FROM category where pid != 0";
    $get_child = $conn->query($child);
    $row = $get_child->fetch_assoc();

    $child_array = array();
    while($row = $get_child->fetch_assoc()){
    	$child_array[] = $row;
    }

    // Final Category
	$categories = array();
	
	foreach ($parent_array as $parent) {
		$categories[$parent['id']]['main_categories'] = $parent['name'];
		$sub_cats  = array();
		if (!empty($child_array)) {
			foreach ($child_array as $sub) {
				if ($sub['pid'] == $parent['id']) {
					$sub_cats[] = $sub;
				}
			}
		}
		$categories[$parent['id']]['sub_categories'] = $sub_cats;
	}

	print_r($categories);
  
?>