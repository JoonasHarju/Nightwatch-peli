package com.pelikansio
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class ohjeetnakyma extends MovieClip
	{
		public function ohjeetnakyma()
		{
			
			naytaohjeetnakyma()
			
		}
		
		public function naytaohjeetnakyma():void
		{
			trace("naytaohjeetnakyma");
			var ohje1:ohjeetnakyma = new ohjeetnakyma();
			stage.addChild(ohje1);
			
			ohje1.x = stage.stageWidth / 2;
			ohje1.y = stage.stageHeight / 2;
		}
	}
}