///@param object
///@param dialogLine

if(!instance_exists(ob_dialog_controller))
{
	instance_create_depth(0,0,-2500, ob_dialog_controller);
	ob_dialog_controller.dialogLines = argument[0].dialog;
	ob_dialog_controller.dialogLine = argument[1];
	ob_dialog_controller.fetch = true;
}