package com.pelikansio
{
	import com.pelikansio.ohjeetnakyma;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		public var aloitus:aloitusnakyma;
		public var peli:PeliNakyma
		
		public function Engine()
		{
			naytaaloitusnakyma()
			trace("inEngine");
			
		}
		public function naytaaloitusnakyma()
		{
			aloitus = new aloitusnakyma(this);
			if(peli){
				removeChild(peli);
				peli = null;
			}
			stage.addChild(aloitus);
		}
		public function naytaPeliNakyma()
		{
			peli = new PeliNakyma(this);
			/*if(aloitus){
				trace("in")
				removeChild(aloitus);
				aloitus = null;
			}*/
			stage.addChild(peli)
			peli.x = stage.stageWidth / 2;
			peli.y = stage.stageHeight / 2;
				
		}
		
	}
}