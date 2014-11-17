package com.pelikansio
{
	import com.pelikansio.Engine;
	
	import flash.display.MovieClip;
	
	
	public class aloitusnakyma extends MovieClip
	{
		public var mainClass:Engine;
		public function aloitusnakyma(passedClass:Engine)
		{
			mainClass = passedClass
		}
	}
}