package  {

	import GZ.Gfx.Object;

	import GZ.File.RcImg;
	import GZ.Gfx.Clip.Letter;
	import GZ.File.RcFont;
	import GZ.Gfx.Root;

	import GZ.Gfx.Interface;
	import GZ.Gfx.Clip;
	import GZ.Gfx.Clip.Text;

	import GZ.Math;

	import GZ.Gfx.Clip.Img;
	import GZ.Base.Quaternion;
	

	/**
	 * @author Maeiky
	 */
	public class DemoText extends Clip {

		public var oImg : Img;
		public var oLetter : Letter;
		public var oText : Text;
		public var nAdd : Int = 0;
		
		
		public function DemoText( _oParent : Root ):Void {
			Clip(_oParent, _oParent.oItf.nHalfFrameWidth,  _oParent.oItf.nHalfFrameHeight);
			
			/*
			Debug.fTrace1("----LoadFont ----");
			
		//	var _oFont : RcFont = new RcFont( "c:/extra_fonts/ProggyClean.ttf");
			var _oFont : RcFont = new RcFont( "c:/extra_fonts/ProggyTiny.ttf", 10);
		//	var _oFont : RcFont = new RcFont("c:/extra_fonts/DroidSans.ttf");
		
		
		
		
			Debug.fTrace1("--------");
			_oFont.fCpuLoad();
			
			oImg = new Img(this, 10.0, 10.0, _oFont, true);
			oImg.WnRed(1.0);
			
			*/
			/*
			oImg.WnWidth(0.5);
			oImg.WnHeight(0.5);
			oImg.TnWidth(1.0);
			oImg.TnHeight(1.0);
			oImg.EnWidth(75);
			oImg.EnHeight(75);
			
			
		//	aaasBugHere
			
		//	floowingnOanal
			
			oImg.TnYaw(3.0 * Math.nPI);
			oImg.EnYaw(150);

			oImg.WnAlpha(0.0);
			oImg.TnAlpha(1.0);
			oImg.EnAlpha(100.0);
			
			*/
			
			
		//	oImg = new Img(this, 400.0, 300.0, _oFont, true);
			
		
			//sssssssssf
			
			
			
			/*
		oLetter = new Letter(this, _oFont, -350.0, 50.0, 65);
		oLetter.WnRed(1.0);
		
		
		//oText = new Text(this, _oFont,  oItf.nHalfFrameWidth * -1 + 20.0, -0.0, "Im a genius Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa12345678910");
		oText = new Text(this, _oFont,  oItf.nHalfFrameWidth * -1 + 20.0, -0.0, "Im a genius Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa12345678910");
		
		
		oText.oCurrRange.fClear();
		oText.oCurrRange.fAdd("Yeah");
		
		*/
		
		
		/*	
		Debug.fTrace1("-oText-");
			oText = new Text(this, _oFont,  oItf.nHalfFrameWidth * -1 + 20.0, -0.0, "Im a genius Testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa12345678910");

			Debug.fTrace1("-ok-");
	*/		
			
			/*
			//!Create an image
			oImg = new Img(this, 400.0, 300.0, E"Transform.png", true);
			oImg.WnWidth(0.5);
			oImg.WnHeight(0.5);
			oImg.TnWidth(4.0);
			oImg.TnHeight(4.0);
			oImg.EnWidth(75);
			oImg.EnHeight(75);

			oImg.TnYaw(3.0 * Math.nPI);
			oImg.EnYaw(150);

			oImg.WnAlpha(0.0);
			oImg.TnAlpha(1.0);
			oImg.EnAlpha(100.0);
*/
			/*
			EnYaw(5);
			EnPitch(5);
			
			
			var _nTest : Int = 0;
			*/
			
			
		}	



		override public function fUpdateParentToChild():Void {
			nAdd++;
			
			oText.oCurrRange.fClear();
			oText.oCurrRange.fAdd("Test: " + nAdd);
			
/*
			var _nMouseX : Float = oItf.oWindow.nMouseX - oItf.nHalfFrameWidth;
			var _nMouseY : Float = oItf.oWindow.nMouseY - oItf.nHalfFrameHeight;

			//!Updated each frame, parents before
			TnYaw(_nMouseX / oItf.nHalfFrameWidth / -1.15);
			TnPitch(_nMouseY / oItf.nHalfFrameHeight / -1.15);
			*/
			
		}




	}
}
