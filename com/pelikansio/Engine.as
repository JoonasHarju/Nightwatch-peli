package com.pelikansio
{
	import com.pelikansio.ohjeetnakyma;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public var aloitus:aloitusnakyma;
		public function Engine()
		{
			naytaaloitusnakyma()
			trace("inEngine");
			
		}
		public function naytaaloitusnakyma()
		{
			aloitus = new aloitusnakyma(this);
			stage.addChild(aloitus);
			
		}
	}
}