class_name SignalTriggersHelper
extends Object

static func is_object_class(object: Object, class_string: StringName) -> bool:
	if class_string.is_empty():
		return false

	if object == null:
		return false

	if object.is_class(class_string):
		return true

	var current_script: Script = object.get_script()
	while current_script != null:
		if current_script.get_global_name() == class_string:
			return true
		current_script = current_script.get_base_script()

	return false


static func find_children_of_class(parent: Node, class_string: StringName, include_parent := false) -> Array[Node]:
	if not is_instance_valid(parent) or class_string.is_empty():
		return []
	var children: Array[Node] = []

	if include_parent and is_object_class(parent, class_string):
		children.append(parent)

	for child in parent.get_children():
		if is_object_class(child, class_string):
			children.append(child)

		var grandchildren := find_children_of_class(child, class_string)
		if grandchildren.is_empty():
			continue

		children.append_array(grandchildren)

	return children
