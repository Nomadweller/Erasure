if(fetch)
{
	dialogOutput = "";
	dialogSpeed = 0;
	var dialogData = dialogLines[dialogLine];
	

	dialogText = dialogData[0];
	dialogContinue = dialogData[1];
	dialogAvatar = dialogData[2];
	dialogLeft = dialogData[3];

	fetch = false;
}
else
{
	if(argument[0])
	{
		if(string_length(dialogText) > string_length(dialogOutput))
		{
			dialogSpeed = 1000;
		}
		else
		{
		if(dialogContinue)
		{
			dialogLine++;
			fetch = true;
		}
		else
			instance_destroy();
		}
	}
	dialogOutput = string_copy(dialogText, 1, dialogSpeed);
	dialogSpeed += .8; 
}