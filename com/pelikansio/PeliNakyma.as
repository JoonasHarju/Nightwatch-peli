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
		public var pelto:pelto1 = new pelto1;
		public var valittupainike:String =""
		
		
		public var lannoitehiiri:lannoitehiiri1 = new lannoitehiiri1
		public var kursori:lannoitehiiri1=new lannoitehiiri1;
		public var kannuhiiri:kannuhiiri1= new kannuhiiri1;
		public var kuokkahiiri:kuokkahiiri1= new kuokkahiiri1;
		public var kukkakaalihiiri:kukkakaalihiiri1= new kukkakaalihiiri1;
		public var porkkanahiiri:porkkanahiiri1= new porkkanahiiri1;
		public var kurkkuhiiri:kurkkuhiiri1= new kurkkuhiiri1;
		public var lanttuhiiri:lanttuhiiri1= new lanttuhiiri1;
		public var perunahiiri:perunahiiri1= new perunahiiri1;
		public var punajuurihiiri:punajuurihiiri1= new punajuurihiiri1;
		public var salaattihiiri:salaattihiiri1= new salaattihiiri1;
		public var sipulihiiri:sipulihiiri1= new sipulihiiri1;
		public var tomaattihiiri:tomaattihiiri1= new tomaattihiiri1;
		
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
			
			
			
			stage.addChild(pelto);
			pelto.x = 318;
			pelto.y = 159;
			
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
			valittuPainike("porkkana");
		}
		
		private function valittuPainike(valinta:String):void
		{
			if(valittupainike!=valinta){
				valittupainike=valinta
				trace(valittupainike)
			}else{
				valittupainike=""
				trace(valittupainike)
			}
		}
		public function kannupainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKannuhiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKannuhiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKannuhiiri);
			this.addEventListener(MouseEvent.CLICK,removeKannuhiiri);
			valittuPainike("kannu");
		}
		public function kukkakaalipainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKukkakaalihiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKukkakaalihiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKukkakaalihiiri);
			this.addEventListener(MouseEvent.CLICK,removeKukkakaalihiiri);
			valittuPainike("kukkakaali");
		}
		public function kuokkapainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKuokkahiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKuokkahiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKuokkahiiri);
			this.addEventListener(MouseEvent.CLICK,removeKuokkahiiri);
			valittuPainike("kuokka");
		}
		public function kurkkupainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKurkkuhiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overKurkkuhiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKurkkuhiiri);
			this.addEventListener(MouseEvent.CLICK,removeKurkkuhiiri);
			valittuPainike("kurkku");
		}
		public function lannoitepainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outKursori);
			this.addEventListener(MouseEvent.ROLL_OVER,overKursori);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKursori);
			this.addEventListener(MouseEvent.CLICK,removeKursori);
			valittuPainike("lannoite");
		}
		public function lanttupainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outLanttuhiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overLanttuhiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveLanttuhiiri);
			this.addEventListener(MouseEvent.CLICK,removeLanttuhiiri);
			valittuPainike("lanttu");
		}
		public function perunapainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outPerunahiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overPerunahiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,movePerunahiiri);
			this.addEventListener(MouseEvent.CLICK,removePerunahiiri);
			valittuPainike("peruna");
		}
		public function punajuuripainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outPunajuurihiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overPunajuurihiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,movePunajuurihiiri);
			this.addEventListener(MouseEvent.CLICK,removePunajuurihiiri);
			valittuPainike("punajuuri");
		}
		public function salaattipainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outSalaattihiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overSalaattihiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveSalaattihiiri);
			this.addEventListener(MouseEvent.CLICK,removeSalaattihiiri);
			valittuPainike("salaatti");
		}
		public function sipulipainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outSipulihiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overSipulihiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveSipulihiiri);
			this.addEventListener(MouseEvent.CLICK,removeSipulihiiri);
			valittuPainike("sipuli");
		}	
		public function tomaattipainettu(event:MouseEvent)
		{
			this.addEventListener(MouseEvent.ROLL_OUT,outTomaattihiiri);
			this.addEventListener(MouseEvent.ROLL_OVER,overTomaattihiiri);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveTomaattihiiri);
			this.addEventListener(MouseEvent.CLICK,removeTomaattihiiri);
			valittuPainike("tomaatti");
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
						
				}		//																											lanttuhiiri
				}
				public function outLanttuhiiri(event:MouseEvent):void
				{
					if(stage.contains(lanttuhiiri)){
						stage.removeChild(lanttuhiiri);
						Mouse.show();
					}
				}
				public function overLanttuhiiri(event:MouseEvent):void
				{
					
					lanttuhiiri.x=stage.mouseX;
					lanttuhiiri.y=stage.mouseY;
					stage.addChild(lanttuhiiri);
					Mouse.hide();
					
				}
				public function moveLanttuhiiri(event:MouseEvent):void
				{
					if(!stage.contains(lanttuhiiri)){
						stage.addChild(lanttuhiiri);
						Mouse.hide();
						lanttuhiiri.mouseEnabled = false;
						lanttuhiiri.mouseChildren = false;
					}
					
					lanttuhiiri.x=stage.mouseX;
					lanttuhiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeLanttuhiiri(event:MouseEvent):void
				{
					if(stage.contains(lanttuhiiri)){
						stage.removeChild(lanttuhiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outLanttuhiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overLanttuhiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,moveLanttuhiiri);
			
				}		//																											perunahiiri
			}
				public function outPerunahiiri(event:MouseEvent):void
				{
					if(stage.contains(perunahiiri)){
						stage.removeChild(perunahiiri);
						Mouse.show();
					}
				}
				public function overPerunahiiri(event:MouseEvent):void
				{
					
					perunahiiri.x=stage.mouseX;
					perunahiiri.y=stage.mouseY;
					stage.addChild(perunahiiri);
					Mouse.hide();
					
				}
				public function movePerunahiiri(event:MouseEvent):void
				{
					if(!stage.contains(perunahiiri)){
						stage.addChild(perunahiiri);
						Mouse.hide();
						perunahiiri.mouseEnabled = false;
						perunahiiri.mouseChildren = false;
					}
					
					perunahiiri.x=stage.mouseX;
					perunahiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removePerunahiiri(event:MouseEvent):void
				{
					if(stage.contains(perunahiiri)){
						stage.removeChild(perunahiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outPerunahiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overPerunahiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,movePerunahiiri);
						
				}		//																										punajuurihiiri
			}
				public function outPunajuurihiiri(event:MouseEvent):void
				{
					if(stage.contains(punajuurihiiri)){
						stage.removeChild(punajuurihiiri);
						Mouse.show();
					}
				}
				public function overPunajuurihiiri(event:MouseEvent):void
				{
					
					punajuurihiiri.x=stage.mouseX;
					punajuurihiiri.y=stage.mouseY;
					stage.addChild(punajuurihiiri);
					Mouse.hide();
					
				}
				public function movePunajuurihiiri(event:MouseEvent):void
				{
					if(!stage.contains(punajuurihiiri)){
						stage.addChild(punajuurihiiri);
						Mouse.hide();
						punajuurihiiri.mouseEnabled = false;
						punajuurihiiri.mouseChildren = false;
					}
					
					punajuurihiiri.x=stage.mouseX;
					punajuurihiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removePunajuurihiiri(event:MouseEvent):void
				{
					if(stage.contains(punajuurihiiri)){
						stage.removeChild(punajuurihiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outPunajuurihiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overPunajuurihiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,movePunajuurihiiri);
						
				}		//																									salaattihiiri
			}
				public function outSalaattihiiri(event:MouseEvent):void
				{
					if(stage.contains(salaattihiiri)){
						stage.removeChild(salaattihiiri);
						Mouse.show();
					}
				}
				public function overSalaattihiiri(event:MouseEvent):void
				{
					
					salaattihiiri.x=stage.mouseX;
					salaattihiiri.y=stage.mouseY;
					stage.addChild(salaattihiiri);
					Mouse.hide();
					
				}
				public function moveSalaattihiiri(event:MouseEvent):void
				{
					if(!stage.contains(salaattihiiri)){
						stage.addChild(salaattihiiri);
						Mouse.hide();
						salaattihiiri.mouseEnabled = false;
						salaattihiiri.mouseChildren = false;
					}
					
					salaattihiiri.x=stage.mouseX;
					salaattihiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeSalaattihiiri(event:MouseEvent):void
				{
					if(stage.contains(salaattihiiri)){
						stage.removeChild(salaattihiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outSalaattihiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overSalaattihiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,moveSalaattihiiri);
						
				}	//																										sipulihiiri	
			}
				public function outSipulihiiri(event:MouseEvent):void
				{
					if(stage.contains(sipulihiiri)){
						stage.removeChild(sipulihiiri);
						Mouse.show();
					}
				}
				public function overSipulihiiri(event:MouseEvent):void
				{
					
					sipulihiiri.x=stage.mouseX;
					sipulihiiri.y=stage.mouseY;
					stage.addChild(sipulihiiri);
					Mouse.hide();
					
				}
				public function moveSipulihiiri(event:MouseEvent):void
				{
					if(!stage.contains(sipulihiiri)){
						stage.addChild(sipulihiiri);
						Mouse.hide();
						sipulihiiri.mouseEnabled = false;
						sipulihiiri.mouseChildren = false;
					}
					
					sipulihiiri.x=stage.mouseX;
					sipulihiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeSipulihiiri(event:MouseEvent):void
				{
					if(stage.contains(sipulihiiri)){
						stage.removeChild(sipulihiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outSipulihiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overSipulihiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,moveSipulihiiri);
						
				}		//																									tomaattihiiri
			}
				public function outTomaattihiiri(event:MouseEvent):void
				{
					if(stage.contains(tomaattihiiri)){
						stage.removeChild(tomaattihiiri);
						Mouse.show();
					}
				}
				public function overTomaattihiiri(event:MouseEvent):void
				{
					
					tomaattihiiri.x=stage.mouseX;
					tomaattihiiri.y=stage.mouseY;
					stage.addChild(tomaattihiiri);
					Mouse.hide();
					
				}
				public function moveTomaattihiiri(event:MouseEvent):void
				{
					if(!stage.contains(tomaattihiiri)){
						stage.addChild(tomaattihiiri);
						Mouse.hide();
						tomaattihiiri.mouseEnabled = false;
						tomaattihiiri.mouseChildren = false;
					}
					
					tomaattihiiri.x=stage.mouseX;
					tomaattihiiri.y=stage.mouseY;
					event.updateAfterEvent();
				}
				public function removeTomaattihiiri(event:MouseEvent):void
				{
					if(stage.contains(tomaattihiiri)){
						stage.removeChild(tomaattihiiri);
						Mouse.show();
						this.removeEventListener(MouseEvent.ROLL_OUT,outTomaattihiiri);
						this.removeEventListener(MouseEvent.ROLL_OVER,overTomaattihiiri);
						this.removeEventListener(MouseEvent.MOUSE_MOVE,moveTomaattihiiri);
						
				}		
			}
		}
	}