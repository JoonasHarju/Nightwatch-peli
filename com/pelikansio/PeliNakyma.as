package com.pelikansio
{
	import com.pelikansio.Engine;
	import com.pelikansio.kannu1;
	import com.pelikansio.kuokka1;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	
	
	public class PeliNakyma extends MovieClip
	{
		public var mainClass:Engine;
		public var porkkana:porkkana1 = new porkkana1;
		public var torinakymaKaytossa:Boolean;
		public var torinakyma:torinakyma1 = new torinakyma1();
		public var kannu:kannu1 = new kannu1;
		public var kuokka:kuokka1 = new kuokka1;
		
		
		public var lannoitehiiri:lannoitehiiri1 = new lannoitehiiri1
		public var kursori:lannoitehiiri1=new lannoitehiiri1;
		public var kannuhiiri:kannuhiiri1= new kannuhiiri1;
		public var kuokkahiiri:kuokkahiiri1= new kuokkahiiri1;
		public var kukkakaalihiiri:kukkakaalihiiri1= new kukkakaalihiiri1;
		public var porkkanahiiri:porkkanahiiri1= new porkkanahiiri1;
		public var kurkkuhiiri:kurkkuhiiri1= new kurkkuhiiri1;
		
		public function PeliNakyma(passedClass:Engine, stage:Stage)
		{
			trace("pelinäkymä");
			torinakymaKaytossa = false;
			mainClass = passedClass;
			

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
			
			
			
			
			
			stage.addChild(kannu);
			kannu.x = 600;
			kannu.y = 196;
			kannu.addEventListener(MouseEvent.CLICK, kannupainettu)
				
			stage.addChild(porkkana);
			porkkana.x = 188;
			porkkana.y = 455;
			porkkana.addEventListener(MouseEvent.CLICK, porkkanapainettu)
			
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
				
			stage.addChild(torinappi);
			torinappi.x = 600;
			torinappi.y = 400;
			torinappi.addEventListener(MouseEvent.CLICK, torinappipainettu)
		}
		
		public function porkkanapainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outPorkkanahiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overPorkkanahiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,movePorkkanahiiri);
			this.addEventListener(MouseEvent.CLICK,removePorkkanahiiri);
		}
		public function kannupainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKannuhiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKannuhiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKannuhiiri);
			this.addEventListener(MouseEvent.CLICK,removeKannuhiiri);
		}
		public function kukkakaalipainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKukkakaalihiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKukkakaalihiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKukkakaalihiiri);
			this.addEventListener(MouseEvent.CLICK,removeKukkakaalihiiri);
		}
		public function kuokkapainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKuokkahiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKuokkahiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKuokkahiiri);
			this.addEventListener(MouseEvent.CLICK,removeKuokkahiiri);
		}
		public function kurkkupainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKurkkuhiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKurkkuhiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKurkkuhiiri);
			this.addEventListener(MouseEvent.CLICK,removeKurkkuhiiri);
		}
		public function lannoitepainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKursori);
			this.addEventListener(MouseEvent.ROLL_OVER,overKursori);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKursori);
			this.addEventListener(MouseEvent.CLICK,removeKursori);
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

		public function torinappipainettu(event:MouseEvent)
		{
			trace ("torinappipainettu")
			
			if (torinakymaKaytossa == false){
				torinakymaKaytossa = true;
				
				addChild(torinakyma)
				torinakyma.x = mainClass.stage.stageWidth / 9001;
				torinakyma.y = mainClass.stage.stageHeight / 9001;
			
				stage.removeChild(porkkana)
				stage.removeChild(kannu)
				stage.removeChild(kuokka)
				
				
				
			
			}else{
				trace(torinakyma);
				removeChild(torinakyma)
				torinakymaKaytossa=false;
				
				stage.addChild(porkkana);
				porkkana.x = 188;
				porkkana.y = 455;
				
				stage.addChild(kuokka);
				kuokka.x = 600;
				kuokka.y = 256;
				
				stage.addChild(kannu);
				kannu.x = 600;
				kannu.y = 196;
			}

		}
		
		public function outKursori(event:MouseEvent):void
		{
			if(stage.contains(kursori)){
				stage.removeChild(kursori);
				Mouse.show();
			}
		}
		public function overKursori(event:MouseEvent):void
		{
			
			kursori.x=stage.mouseX;
			kursori.y=stage.mouseY;
			stage.addChild(kursori);
			Mouse.hide();
			
		}
		public function moveKursori(event:MouseEvent):void
		{
			if(!stage.contains(kursori)){
				stage.addChild(kursori);
				Mouse.hide();
				kursori.mouseEnabled = false;
				kursori.mouseChildren = false;
			}
			
			kursori.x=stage.mouseX;
			kursori.y=stage.mouseY;
			event.updateAfterEvent();
		}
			public function removeKursori(event:MouseEvent):void
			{
				if(stage.contains(kursori)){
					stage.removeChild(kursori);
					Mouse.show();
					this.removeEventListener(MouseEvent.ROLL_OUT,outKursori);
					this.removeEventListener(MouseEvent.ROLL_OVER,overKursori);
					this.removeEventListener(MouseEvent.MOUSE_MOVE,moveKursori);
					
					
				}//                                                                                                                   kannu
			}
				public function outKannuhiiri(event:MouseEvent):void
				{
					if(stage.contains(kannuhiiri)){
						stage.removeChild(kannuhiiri);
						Mouse.show();
					}
				}
				public function overKannuhiiri(event:MouseEvent):void
				{
					
					kannuhiiri.x=stage.mouseX;
					kannuhiiri.y=stage.mouseY;
					stage.addChild(kannuhiiri);
					Mouse.hide();
					
				}
				public function moveKannuhiiri(event:MouseEvent):void
				{
					if(!stage.contains(kannuhiiri)){
						stage.addChild(kannuhiiri);
						Mouse.hide();
						kannuhiiri.mouseEnabled = false;
						kannuhiiri.mouseChildren = false;
					}
					
					kannuhiiri.x=stage.mouseX;
					kannuhiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeKannuhiiri(event:MouseEvent):void
				{
					if(stage.contains(kannuhiiri)){
						stage.removeChild(kannuhiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outKannuhiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overKannuhiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,moveKannuhiiri);
				}
					//                                                                                                                kuokka
			}
				public function outKuokkahiiri(event:MouseEvent):void
				{
					if(stage.contains(kuokkahiiri)){
						stage.removeChild(kuokkahiiri);
						Mouse.show();
					}
				}
				public function overKuokkahiiri(event:MouseEvent):void
				{
					
					kuokkahiiri.x=stage.mouseX;
					kuokkahiiri.y=stage.mouseY;
					stage.addChild(kuokkahiiri);
					Mouse.hide();
					
				}
				public function moveKuokkahiiri(event:MouseEvent):void
				{
					if(!stage.contains(kuokkahiiri)){
						stage.addChild(kuokkahiiri);
						Mouse.hide();
						kuokkahiiri.mouseEnabled = false;
						kuokkahiiri.mouseChildren = false;
					}
					
					kuokkahiiri.x=stage.mouseX;
					kuokkahiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeKuokkahiiri(event:MouseEvent):void
				{
					if(stage.contains(kuokkahiiri)){
						stage.removeChild(kuokkahiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outKuokkahiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overKuokkahiiri);
					    this.removeEventListener(MouseEvent.MOUSE_MOVE,moveKuokkahiiri);
						
				}	//                                                                                 								Kukkakaali

			}
				public function outKukkakaalihiiri(event:MouseEvent):void
				{
					if(stage.contains(kukkakaalihiiri)){
						stage.removeChild(kukkakaalihiiri);
						Mouse.show();
					}
				}
				public function overKukkakaalihiiri(event:MouseEvent):void
				{
					
					kukkakaalihiiri.x=stage.mouseX;
					kukkakaalihiiri.y=stage.mouseY;
					stage.addChild(kukkakaalihiiri);
					Mouse.hide();
					
				}
				public function moveKukkakaalihiiri(event:MouseEvent):void
				{
					if(!stage.contains(kukkakaalihiiri)){
						stage.addChild(kukkakaalihiiri);
						Mouse.hide();
						kukkakaalihiiri.mouseEnabled = false;
						kukkakaalihiiri.mouseChildren = false;
					}
					
					kukkakaalihiiri.x=stage.mouseX;
					kukkakaalihiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeKukkakaalihiiri(event:MouseEvent):void
				{
					if(stage.contains(kukkakaalihiiri)){
						stage.removeChild(kukkakaalihiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outKukkakaalihiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overKukkakaalihiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,moveKukkakaalihiiri);
						
				}		//																											porkkanahiiri
			}
				public function outPorkkanahiiri(event:MouseEvent):void
				{
					if(stage.contains(porkkanahiiri)){
						stage.removeChild(porkkanahiiri);
						Mouse.show();
					}
				}
				public function overPorkkanahiiri(event:MouseEvent):void
				{
					
					porkkanahiiri.x=stage.mouseX;
					porkkanahiiri.y=stage.mouseY;
					stage.addChild(porkkanahiiri);
					Mouse.hide();
					
				}
				public function movePorkkanahiiri(event:MouseEvent):void
				{
					if(!stage.contains(porkkanahiiri)){
						stage.addChild(porkkanahiiri);
						Mouse.hide();
						porkkanahiiri.mouseEnabled = false;
						porkkanahiiri.mouseChildren = false;
					}
					
					porkkanahiiri.x=stage.mouseX;
					porkkanahiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removePorkkanahiiri(event:MouseEvent):void
				{
					if(stage.contains(porkkanahiiri)){
						stage.removeChild(porkkanahiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outPorkkanahiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overPorkkanahiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,movePorkkanahiiri);
						
				}		//																											kurkkuhiiri
			}
				public function outKurkkuhiiri(event:MouseEvent):void
				{
					if(stage.contains(kurkkuhiiri)){
						stage.removeChild(kurkkuhiiri);
						Mouse.show();
					}
				}
				public function overKurkkuhiiri(event:MouseEvent):void
				{
					
					kurkkuhiiri.x=stage.mouseX;
					kurkkuhiiri.y=stage.mouseY;
					stage.addChild(kurkkuhiiri);
					Mouse.hide();
					
				}
				public function moveKurkkuhiiri(event:MouseEvent):void
				{
					if(!stage.contains(kurkkuhiiri)){
						stage.addChild(kurkkuhiiri);
						Mouse.hide();
						kurkkuhiiri.mouseEnabled = false;
						kurkkuhiiri.mouseChildren = false;
					}
					
					kurkkuhiiri.x=stage.mouseX;
					kurkkuhiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeKurkkuhiiri(event:MouseEvent):void
				{
					if(stage.contains(kurkkuhiiri)){
						stage.removeChild(kurkkuhiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outKurkkuhiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overKurkkuhiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,moveKurkkuhiiri);
						
				}		
			}
		}
	}