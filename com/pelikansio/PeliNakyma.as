package com.pelikansio
{
	import flash.display.MovieClip;
	import com.pelikansio.Engine;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import com.pelikansio.kannu1;
	
	
	public class PeliNakyma extends MovieClip
	{
		public var mainClass:Engine;
		
		
		public function PeliNakyma(passedClass:Engine)
		{
			trace("pelinäkymä");
			
			mainClass = passedClass;
			
			var kannu:kannu1 = new kannu1;
			var kuokka:kuokka1 = new kuokka1;
			var lannoite:lannoite1 = new lannoite1;
			var kukkakaali:kukkakaali1 = new kukkakaali1;
			var kurkku:kurkku1 = new kurkku1;
			var lanttu:lanttu1 = new lanttu1;
			var peruna:peruna1 = new peruna1;
			var punajuuri:punajuuri1 = new punajuuri1;
			var salaatti:salaatti1 = new salaatti1;
			var sipuli:sipuli1 = new sipuli1;
			var tomaatti:tomaatti1 = new tomaatti1;
			
			
			/*mainClass.stage.addChild(kannu);
			kannu.x = mainClass.stage.stageWidth / 2;
			kannu.y = mainClass.stage.stageHeight / 2;*/
			kannu.addEventListener(MouseEvent.CLICK, kannupainettu)
			
			
			addChild(kuokka);
			kuokka.x = mainClass.stage.stageWidth / 1.25;
			kuokka.y = mainClass.stage.stageHeight / 4;
			kuokka.addEventListener(MouseEvent.CLICK, kuokkapainettu)
				
			addChild(lannoite);
			lannoite.x = mainClass.stage.stageWidth / 1.25;
			lannoite.y = mainClass.stage.stageHeight / 4;
			lannoite.addEventListener(MouseEvent.CLICK, lannoitepainettu)
				
			addChild(kukkakaali);
			kukkakaali.x = mainClass.stage.stageWidth / 1.25;
			kukkakaali.y = mainClass.stage.stageHeight / 4;
			kukkakaali.addEventListener(MouseEvent.CLICK, kukkakaalipainettu)
				
			addChild(kurkku);
			kurkku.x = mainClass.stage.stageWidth / 1.25;
			kurkku.y = mainClass.stage.stageHeight / 4;
			kurkku.addEventListener(MouseEvent.CLICK, kurkkupainettu)
				
			addChild(lanttu);
			lanttu.x = mainClass.stage.stageWidth / 1.25;
			lanttu.y = mainClass.stage.stageHeight / 4;
			lanttu.addEventListener(MouseEvent.CLICK, lanttupainettu)
				
			addChild(peruna);
			peruna.x = mainClass.stage.stageWidth / 1.25;
			peruna.y = mainClass.stage.stageHeight / 4;
			peruna.addEventListener(MouseEvent.CLICK, perunapainettu)
				
			addChild(punajuuri);
			punajuuri.x = mainClass.stage.stageWidth / 1.25;
			punajuuri.y = mainClass.stage.stageHeight / 4;
			punajuuri.addEventListener(MouseEvent.CLICK, punajuuripainettu)
				
			addChild(salaatti);
			salaatti.x = mainClass.stage.stageWidth / 1.25;
			salaatti.y = mainClass.stage.stageHeight / 4;
			salaatti.addEventListener(MouseEvent.CLICK, salaattipainettu)
				
			addChild(sipuli);
			sipuli.x = mainClass.stage.stageWidth / 1.25;
			sipuli.y = mainClass.stage.stageHeight / 4;
			sipuli.addEventListener(MouseEvent.CLICK, sipulipainettu)
				
			addChild(tomaatti);
			tomaatti.x = mainClass.stage.stageWidth / 1.25;
			tomaatti.y = mainClass.stage.stageHeight / 4;
			tomaatti.addEventListener(MouseEvent.CLICK, tomaattipainettu)
		}
		public function kannupainettu(event:MouseEvent)
		{
			trace("kannupainettu")
		}
		public function kukkakaalipainettu(event:MouseEvent)
		{
			
		}
		public function kuokkapainettu(event:MouseEvent)
		{
			
		}
		public function kurkkupainettu(event:MouseEvent)
		{
			
		}
		public function lannoitepainettu(event:MouseEvent)
		{
			
		}
		public function lanttupainettu(event:MouseEvent)
		{
			
		}
		public function perunapainettu(event:MouseEvent)
		{
			
		}
		public function punajuuripainettu(event:MouseEvent)
		{
			
		}
		public function salaattipainettu(event:MouseEvent)
		{
			
		}
		public function sipulipainettu(event:MouseEvent)
		{
			
		}	
		public function tomaattipainettu(event:MouseEvent)
		{
			
		}
	}
}