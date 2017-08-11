//Example how to use string With GZE on Cwc to build portable app
#include <GZE.h>
#include <Main>




void fTestVec(_gzVec4 _vTest){
	

	
	_vTest[1] = 99.99;
	_vTest.fPrint();
	
}

gzData(gzFloat, _aVec_data,  
	1.0, 2.0, 3.0,
	1.0, 2.0, 3.0,
	1.0, 2.0, 3.0,
	1.0, 2.0, 3.0,
	1.0, 2.0, 3.0,
	1.0, 2.0, 3.0,
 );

 
gzArray<gzVec4> aGblVec  = &_aVec_data;

typedef struct gzVectpr{
	gzFloat aTab[7];
}gzVectpr;



gzArray<gzVec4>  fNewArray(){
	
	gzConstData(gzFloat, _aTest,  
		11.0, 12.0, 13.0,
		11.0, 12.0, 13.0,
		11.0, 12.0, 13.0,
		11.0, 12.0, 13.0,
		11.0, 12.0, 13.0,
		11.0, 12.0, 13.0,
	 );
	return _aTest.fCloneToHeap();
}



void fTestArray(const gzArray<gzVec4>& _aGblVec){
		aGblVec[1][1] = 10.99;
	
}

gzInt Main(gzText8 _sArg, gzUIntX _nId, gzInt _nCmd){
printf("\n---Begin---");
	//// Call Emsc function to set source code URL  ///
	#if defined tPlatform_Web_Emsc
		val window = val::global("window");
		window.call<void>("SetLinkSrcCode", val("<a href='https://github.com/Maeiky/Cwc_Demos/blob/master/Base_Example/02_String/String.cpp'>View Code</a>"));
	#endif
	//////////////////////////////////////////////////
	{
		fTestArray(aGblVec.array);
		
		
		
		gzArray<gzUInt> _aTest =  gzNewData8("01234567890123456789");
		
		
		
	//	_aTest.fPrint();
	
	
		
		_aTest = _aTest.fSubStrCount(1);
		
		_aTest.fSubStr(0,1).fPrint();
		
		
		//const gzVec3 vVec3 = {1,2,3};


		gzArray<gzVec4> _aVec  =  &_aVec_data;
	//   printf("\n---Begin2222---");
		
	//	aGblVec(2)[0] = 7.55;
		//	aGblVec.get()[2][2] = 5.55;
		
		
		//GzAssert(0 != 0, "My Assert failll");
		
	/*	
		//gzPodsLock _Lock(_aVec.array);
		
	//	_aVec.fSubStr(0,1).fPrint();
		
	//	_aVec.fPrint();
		
		//(*_aVec[0].get())[1] = 5; 
		//_aVec[0][2] = 5; 
				printf("\n-fff----%f\n", _aVec[0][2]);
	//	_aVec[2][0] = 44.55;
		
		//fTestVec( *_aVec(0).get()  ); //Pass an instance & lock array from modification  (value keep changed)
		fTestVec( _aVec(0).get()  ); //Pass an instance & lock array from modification  (value keep changed)
		fTestVec( _aVec[3]  ); 		  //Pass a copy 
		
		fTestVec( _aVec[3]  ); 		  //Pass a copy 
		*/
		
			
		fTestVec( _aVec.getsafe()[1]  );  //Pass & lock (safe way)
		
		_aVec.getsafe()[2][2] = 5.55;
		

		
		
		
	//	fTestVec( (*(gzVec4*)(&_aVec.array.aData->aTab[0])) );
		
		
		printf("\n---------\n");
		_aVec.fPrint();
		printf("\n---------");
			
			
			

		printf( "\n-fff----%f\n", aGblVec(2)(2) );
		
	//aGblVec(2)[2] = 5.55;
	
	//	aGblVec[2][2] = 5.55;
		
		
		aGblVec.fPrint();
		
		printf( "\n------------------\n");
		fNewArray().fPrint();
		
				printf( "\n------------------\n");
	}//Scope end here, all string will be freed

	//printf("\nTotal: Alloc / Free   ---  %d / %d ", GZ_nArrayTotalAlloc, GZ_nArrayTotalFree);
	if(GZ_nArrayTotalAlloc == GZ_nArrayTotalFree){
		printf("\nP: *-- No memory leak --* \n");
	}else{
		printf("\n\nE:---!!! MEMORY BROKEN !!!--- % d \n\n", GZ_nArrayTotalAlloc - GZ_nArrayTotalFree);
	}

	return 1; // 1 Still Alive, 0 Stop, < 0 Errors
}



gzInt Update(gzFloat _nDelta){
	return 1; // 1 Still Alive, 0 Stop, < 0 Errors
}
gzInt Close(gzInt _nExitCode){
	printf("Good bye: %d \n", _nExitCode);
	return  _nExitCode; //Success
}
