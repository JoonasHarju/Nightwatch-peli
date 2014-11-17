package com.pelikansio
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public var aloitus:aloitusnakyma;
		public function Engine()
		{
			naytaaloitusnakyma()
			
		}
		public function naytaaloitusnakyma()
		{
			aloitus = new aloitusnakyma(this);
			stage.addChild(aloitus);
			
			var button:aloituspelipainike = new aloituspelipainike();
			stage.addChild(button);
			
			button.x = stage.stageWidth / 1.25;
			button.y = stage.stageHeight / 4;
			
			var button1:ohjeetnappi = new ohjeetnappi();
			stage.addChild(button1);
			
			button1.x = stage.stageWidth / 1.25;
			button1.y = stage.stageHeight / 2;
		}
		
	}
}