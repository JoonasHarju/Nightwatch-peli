package com.pelikansio
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class ohjeetnappi extends SimpleButton
	{
		public function ohjeetnappi(DisplayOject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);	
		}
	}
}