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
		public var button2:lopetanappi;
		public var ohje1:ohjeetnakyma;
		
		public function aloitusnakyma(passedClass:Engine)
		{
			trace("aloitusnakyma");
			button = new aloituspelipainike();
			mainClass = passedClass	
			button.addEventListener(MouseEvent.CLICK, aloituspelipainikePainettu)
				
			button1 = new ohjeetnappi();
			mainClass = passedClass
			button1.addEventListener(MouseEvent.CLICK, ohjeetnappipainettu)
			
			button2 = new lopetanappi();
			mainClass = passedClass
			button2.addEventListener(MouseEvent.CLICK, lopetanappipainettu)
				
		}
		public function aloituspelipainikePainettu(event:MouseEvent)
		{
			
		}
		public function ohjeetnappipainettu(event:MouseEvent):void
		{
			trace("ohjeetnappipainettu");
			ohjeetnakyma(this)
		}
		public function lopetanappipainettu(event:MouseEvent)
		{
		}
	}
}