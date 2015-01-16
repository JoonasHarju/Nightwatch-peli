package com.pelikansio
{
	import com.pelikansio.Engine;
	import com.pelikansio.aloituspelipainike;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.system.fscommand;
	
	
	public class aloitusnakyma extends MovieClip
	{
		public var mainClass:Engine;
		public var ohjeetnappiKaytossa:Boolean;
		public var ohje1:ohjeetnakyma = new ohjeetnakyma;
		
		public function aloitusnakyma(passedClass:Engine)
		{
			trace("aloitusnakyma");
			ohjeetnappiKaytossa = false;
			
			mainClass = passedClass;
			var button:aloituspelipainike = new aloituspelipainike;
			var button1:ohjeetnappi = new ohjeetnappi();
			var button2:lopetanappi = new lopetanappi();
			
			addChild(button);
			button.x = mainClass.stage.stageWidth / 1.25;
			button.y = mainClass.stage.stageHeight / 4;
			button.addEventListener(MouseEvent.CLICK, aloituspelipainikePainettu)
			
			
			addChild(button1);
			button1.x = mainClass.stage.stageWidth / 1.25;
			button1.y = mainClass.stage.stageHeight / 2;
			button1.addEventListener(MouseEvent.CLICK, ohjeetnappipainettu)
			
			
			addChild(button2);
			button2.x = mainClass.stage.stageWidth / 1.25
			button2.y = mainClass.stage.stageHeight / 1.35
			button2.addEventListener(MouseEvent.CLICK, lopetanappipainettu)
			
		}
		public function aloituspelipainikePainettu(event:MouseEvent)
		{
				
				trace("aloituspelipainikepainettu");
				var peli:PeliNakyma = new PeliNakyma(mainClass, stage);
				addChild(peli)
				peli.x = mainClass.stage.stageWidth / 2;
				peli.y = mainClass.stage.stageHeight / 2;
				
		}
		public function ohjeetnappipainettu(event:MouseEvent):void
		{
			trace("ohjeetnappipainettu");
			
			if (ohjeetnappiKaytossa == false){
				ohjeetnappiKaytossa = true;
				
			addChild(ohje1);
			ohje1.x = mainClass.stage.stageWidth / 3.7;
			ohje1.y = mainClass.stage.stageHeight / 1.75;
			
			
			}else{
				removeChild(ohje1)
				ohjeetnappiKaytossa = false;
			}
			
		}
		public function lopetanappipainettu(event:MouseEvent)
		{
			trace("lopetanappipainettu");
			fscommand("quit");
		}
	}
}