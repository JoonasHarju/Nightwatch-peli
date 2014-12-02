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
			var torinappi:torinappi1 = new torinappi1;
			
			
			stage.addChild(torinappi);
			torinappi.x = 600;
			torinappi.y = 400;
			torinappi.addEventListener(MouseEvent.CLICK, torinappipainettu)
			
			stage.addChild(kannu);
			kannu.x = 600;
			kannu.y = 196;
			kannu.addEventListener(MouseEvent.CLICK, kannupainettu)
			
			stage.addChild(kuokka);
			kuokka.x = 600;
			kuokka.y = 256;
			kuokka.addEventListener(MouseEvent.CLICK, kuokkapainettu)
				
			addChild(lannoite);
			lannoite.x = 280;
			lannoite.y = 75;
			lannoite.addEventListener(MouseEvent.CLICK, lannoitepainettu)
				
			addChild(kukkakaali);
			kukkakaali.x = 270;
			kukkakaali.y = 215;
			kukkakaali.addEventListener(MouseEvent.CLICK, kukkakaalipainettu)
				
			addChild(kurkku);
			kurkku.x = 220;
			kurkku.y = 215;
			kurkku.addEventListener(MouseEvent.CLICK, kurkkupainettu)
				
			addChild(lanttu);
			lanttu.x = 170;
			lanttu.y = 215;
			lanttu.addEventListener(MouseEvent.CLICK, lanttupainettu)
				
			addChild(peruna);
			peruna.x = 120;
			peruna.y = 215;
			peruna.addEventListener(MouseEvent.CLICK, perunapainettu)
				
			addChild(punajuuri);
			punajuuri.x = 70;
			punajuuri.y = 215;
			punajuuri.addEventListener(MouseEvent.CLICK, punajuuripainettu)
				
			addChild(salaatti);
			salaatti.x = 20;
			salaatti.y = 216;
			salaatti.addEventListener(MouseEvent.CLICK, salaattipainettu)
				
			addChild(sipuli);
			sipuli.x = -30;
			sipuli.y = 215;
			sipuli.addEventListener(MouseEvent.CLICK, sipulipainettu)
				
			addChild(tomaatti);
			tomaatti.x = -80;
			tomaatti.y = 215;
			tomaatti.addEventListener(MouseEvent.CLICK, tomaattipainettu)
		}
		public function torinappipainettu(event:MouseEvent)
		{
			trace ("torinappipainettu")
		}
		public function kannupainettu(event:MouseEvent)
		{
			trace("kannupainettu")
		}
		public function kukkakaalipainettu(event:MouseEvent)
		{
			trace ("kukkakaalipainettu")
		}
		public function kuokkapainettu(event:MouseEvent)
		{
			trace ("kuokkapainettu")
			
		}
		public function kurkkupainettu(event:MouseEvent)
		{
			trace ("kurkkupainettu")
		}
		public function lannoitepainettu(event:MouseEvent)
		{
			trace ("lannoitepainettu")
		}
		public function lanttupainettu(event:MouseEvent)
		{
			trace ("lanttupainettu")
		}
		public function perunapainettu(event:MouseEvent)
		{
			trace ("perunapainettu")
		}
		public function punajuuripainettu(event:MouseEvent)
		{
			trace ("punajuuripainettu")
		}
		public function salaattipainettu(event:MouseEvent)
		{
			trace ("salaattipainettu")
		}
		public function sipulipainettu(event:MouseEvent)
		{
			trace ("sipulipainettu")
		}	
		public function tomaattipainettu(event:MouseEvent)
		{
			trace ("tomaattipainettu")
		}
	}
}