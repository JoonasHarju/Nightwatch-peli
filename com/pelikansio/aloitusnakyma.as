package com.pelikansio
{
	import com.pelikansio.Engine;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	
	public class aloitusnakyma extends MovieClip
	{
		public var mainClass:Engine;
		public var button:aloituspelipainike;
		public var button1:ohjeetnappi;
		public function aloitusnakyma(passedClass:Engine)
		{
			button = new aloituspelipainike();
			mainClass = passedClass
			button.addEventListener(MouseEvent.CLICK, aloituspelipainikePainettu)
				
			button1 = new ohjeetnappi();
			mainClass = passedClass
			button.addEventListener(MouseEvent.CLICK, ohjeetnappipainettu)
		}
		public function aloituspelipainikePainettu(event:MouseEvent)
		{
			
		}
		public function ohjeetnappipainettu(event:MouseEvent)
		{
		}
	}
}