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
		}
		
	}
}