///@param dialog;
///@param Continue;
///@param Avatar;
///@param left_facing;

var dialogPart = [];
var dialogText = "";
var dialogContinue = false;
var dialogAvatar = "";
var dialogLeft = true;

//overwrites defaults based on amount of Params
if(argument_count >= 1)
{
	dialogText = argument[0];
}
if(argument_count >= 2)
{
	dialogContinue = argument[1];
}
if(argument_count >= 3)
{
	dialogAvatar = argument[2];
}
if(argument_count >= 4)
{
	dialogLeft = argument[3];
}
//actual text
dialogPart[0] = dialogText;
//continues text
dialogPart[1] = dialogContinue;
//avatar being displayed
dialogPart[2] = dialogAvatar;
//side avatar is on
dialogPart[3] = dialogLeft;

//stores to object array
dialog[dialogLine] = dialogPart;
dialogLine++;

return dialogLine - 1;
