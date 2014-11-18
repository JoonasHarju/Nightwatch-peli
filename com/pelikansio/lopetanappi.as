package com.pelikansio
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class lopetanappi extends SimpleButton
	{
		public function lopetanappi(DisplayOject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);	
		}
	}
}