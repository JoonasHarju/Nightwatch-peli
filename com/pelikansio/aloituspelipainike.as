package com.pelikansio
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class aloituspelipainike extends SimpleButton
	{
		public function aloituspelipainike(DisplayOject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);	
		}
		}
	}