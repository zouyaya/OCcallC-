//
//  testCppFile.cpp
//  OC and C++ 混编
//
//  Created by yangou on 2020/4/15.
//  Copyright © 2020 hello. All rights reserved.
//

#include "testCppFile.hpp"


using namespace std;

void TestCppFile::sum100(){
    
    int sum(0);
    for (int i = 0; i<= 100; i++) {
        
        sum += i;
        
    }
    cout << "sum = " << sum << endl;
    
    
}


int TestCppFile::jiecheng(int n){
    
    if (n < 2) {
        
        return 1;
    }else {
        
        return n * jiecheng(n -1);
    }

    
    
}
