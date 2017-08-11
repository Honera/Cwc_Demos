//Minimal Example Hello World With GZE on Cwc to build portable app
#include <GZE.h>
#include <Main>



gzVec2 vVec2;  //Standard Vec object, gzVec2, gzVec3, gzVec4 are direcly utilisable


void fUpCast( _gzMat4x2  _vUpCasted ){

	printf(" to Vec2 is perfecly legal   (extra value ignored): " ); _vUpCasted.fPrint();
	_vUpCasted[0] = 5; //Value was linked to original vec3
	printf("\n3:       ---In subfunction, change first val of _vec2 to 5.0");
}

void fDownCast( _gzMat4x4 _vDownCasted ){ //In downcast extra value are zerowed

	printf(" to Vec4 must perform a copy (extra value zerowed): " ); _vDownCasted.fPrint();
}




gzInt Main(gzText8 _sArg, gzUIntX _nId, gzInt _nCmd){
	
	gzMat2x2 m2x2 = {  1,2,
					   1,2,   
				    };
				 
	//gzMat4x4 mTest = { {1,2,3,4}  1,2,3,4,  1,2,3,4,  1,2,3,4   };
	gzMat4x4 m4x4 = { 1,2,3,4,
					   1,2,3,4,
					   1,2,3,4,
					   1,2,3,4,   
					 };
		//gzMat4x4 mTest = { {1,2,3,4}  1,2,3,4,  1,2,3,4,  1,2,3,4   };
	gzMat4x4 mTest2 = { 1,2,3,4,
					   1,2,3,4,
					   1,2,3,4,
					   1,2,3,4,   
					 };
					 
		
	gzMat4x4 mResult =	m4x4 + m2x2.get();	 
	printf("\n1:mResult:");mResult.fPrint();
	
	
	/*
	//Initialisation of vectors
	gzVec3 vVec3 = {1,2,3};
	
	//By default initial value are zerowed
	vVec2[1] = 22.0;
	printf("\n1:Default value is zerowed, Vec2:"); vVec2.fPrint(); 
	
	
	//Perfom vector addition, vector with longer length can be additionned and extra value are ignored. A "get()" is required to get a generic datatype (only for different size)
	gzVec2 vAddition = gzVec2{2,8} + vVec2 + vVec3.get();
	
	printf("\n2:Addition of: Vec2:");  gzVec2{2,8}.fPrint(); printf(" + Vec2:");  vVec2.fPrint();  printf(" + Vec3:"); vVec3.fPrint();  printf(" = ");  
	vAddition.fPrint(); 
	printf("\n");
*/
	//// Upcast
	printf("\n3:    Upcast a Vec3:");mResult.fPrint();   fUpCast((gzMat4x2&)m4x4);               //Upcast   -> legal
//	printf("\n3:    Upcast subfunction values ares link to original vec3:"); vVec3.fPrint();
//	printf("\n");
	//// Downcast
	
//	printf("\n3:  Downcast a Vec3:");vVec3.fPrint();   fDownCast( gzVec4_Copy(vVec3.get()) ); //Downcast -> array resized & must perform a copy (no link)
	
	printf("\n");
	/*
	//// GLSL like access
	printf("\n2: GLSL like (self RGB add): %.2f",	 vVec3.a + vVec3.b + vVec3.r);
	
	
	*/
		
	printf("\n-------------\n");
		
	return 1; // 1 Still Alive, 0 Stop, < 0 Errors
}




gzInt Update(gzFloat _nDelta){
	return 0; // 1 Still Alive, 0 Stop, < 0 Errors
}
gzInt Close(gzInt _nExitCode){
	printf("Good bye: %d \n", _nExitCode);
	return  _nExitCode; //Success
}
