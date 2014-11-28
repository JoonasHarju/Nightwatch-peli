package com.pelikansio
{
	import com.pelikansio.Engine;
	import com.pelikansio.kannu1;
	import com.pelikansio.kuokka1;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.MouseEvent;
	
	
	public class PeliNakyma extends MovieClip
	{
		public var mainClass:Engine;
		
		
		public function PeliNakyma(passedClass:Engine, stage:Stage)
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
			
			
			stage.addChild(kannu);
			kannu.x = stage.stageWidth / 2;
			kannu.y = stage.stageHeight / 2;
			kannu.addEventListener(MouseEvent.CLICK, kannupainettu)
			
			
			stage.addChild(kuokka);
			kuokka.x = stage.stageWidth / 2;
			kuokka.y = stage.stageHeight / 2;
			kuokka.addEventListener(MouseEvent.CLICK, kuokkapainettu)
				
			addChild(lannoite);
			lannoite.x = mainClass.stage.stageWidth / 2;
			lannoite.y = mainClass.stage.stageHeight / 2;
			lannoite.addEventListener(MouseEvent.CLICK, lannoitepainettu)
				
			addChild(kukkakaali);
			kukkakaali.x = mainClass.stage.stageWidth / 2;
			kukkakaali.y = mainClass.stage.stageHeight / 2;
			kukkakaali.addEventListener(MouseEvent.CLICK, kukkakaalipainettu)
				
			addChild(kurkku);
			kurkku.x = mainClass.stage.stageWidth / 2;
			kurkku.y = mainClass.stage.stageHeight / 2;
			kurkku.addEventListener(MouseEvent.CLICK, kurkkupainettu)
				
			addChild(lanttu);
			lanttu.x = mainClass.stage.stageWidth / 2;
			lanttu.y = mainClass.stage.stageHeight / 2;
			lanttu.addEventListener(MouseEvent.CLICK, lanttupainettu)
				
			addChild(peruna);
			peruna.x = mainClass.stage.stageWidth / 2;
			peruna.y = mainClass.stage.stageHeight / 2;
			peruna.addEventListener(MouseEvent.CLICK, perunapainettu)
				
			addChild(punajuuri);
			punajuuri.x = mainClass.stage.stageWidth / 2;
			punajuuri.y = mainClass.stage.stageHeight / 2;
			punajuuri.addEventListener(MouseEvent.CLICK, punajuuripainettu)
				
			addChild(salaatti);
			salaatti.x = mainClass.stage.stageWidth / 2;
			salaatti.y = mainClass.stage.stageHeight / 2;
			salaatti.addEventListener(MouseEvent.CLICK, salaattipainettu)
				
			addChild(sipuli);
			sipuli.x = mainClass.stage.stageWidth / 2;
			sipuli.y = mainClass.stage.stageHeight / 2;
			sipuli.addEventListener(MouseEvent.CLICK, sipulipainettu)
				
			addChild(tomaatti);
			tomaatti.x = mainClass.stage.stageWidth / 2;
			tomaatti.y = mainClass.stage.stageHeight / 2;
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