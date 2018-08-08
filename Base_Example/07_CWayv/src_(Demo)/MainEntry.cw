package  {

//import Demo.MainInterface;
import Demo.Test;

//	import Demo.MainInterface;
//	import GZ.ThreadExt;

	import GZ.EntryPoint;

	public class MainEntry extends EntryPoint {

		public var oTest: Test;
		
	//	public var oThread: ThreadExt;

	//	private var aInt1d : Array<Int, 1, 50>;
	//	private var aInt2d : Array<Int, 2>;
	
/*
		private var qaShort : QArray<Int, 1>;
		private var dComapre : Delegate<fQueueDelegate> = fQueueDelegate;
		public var oInterface : MainInterface;
		*/
		public function MainEntry():Void {
			<cpp>
				printf("bbb\n");
			</cpp>
			return;
			
			oTest = new Test();
			//!Print GZE version to debug, full unicode support, muliples string convertion & combinaison are possible
	//		Debug.fTrace2(" ***-------- Demo : " + "GroundZero Engine v" + 0.005 + " --------***");
			
			var _nLocalVar : Int = 4;
/*
			Debug.fTrace1(" - Test QueueArray / Delegates -");
			qaShort.fPush(70);
			qaShort.fPush(50);
			qaShort.fPush(99);
			qaShort.fPush(2);
			qaShort.fPush(17);
			qaShort.fPush(13);
			*/
			/*
			forEach(var _nVal : Int  in  qaShort){
				Debug.fTrace3("Val : "  + _nVal );
			}

			qaShort.fShort(dComapre);
				forEach(var _nVal : Int  in  qaShort){
				Debug.fTrace3("SortVal : "  + _nVal );
			}
			*/
			Debug.fTrace1("4444----------- ");

			//new TestArray();
			//!Create a new Windows with GZE demos
		//	oThread = new MainInterface();
			//nTest = eWindow.nMinimised;
			//hWinTest =  eWindow.nMinimised;
		}
		
		
		override public function fMain():Void {
			<cpp>
				printf("bbb\n");
			</cpp>
			
		}
		
			
			



/*
		public function fTestArray(_aTest : Array<Int, 1> ):Void {
			_aTest[6] = 666;
		}


		public function fTestDelegate(_nF1: Float, _nF2: Float):Int {
			Debug.fTrace2("fTestDelegate");
			return 33;
		}

		public function fQueueDelegate(_qT1: QElement<Int>, _qT2: QElement<Int>):Bool {
			if (_qT1 < _qT2) {
				return true;
			}else {
				return false;
			}
		}
*/




	}






}
