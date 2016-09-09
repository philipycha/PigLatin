//
//  main.m
//  PigLatin
//
//  Created by Philip Ha on 2016-09-09.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        
        NSString *prompt = @"what word would you like to change to pig latin?\n";
        
        
        while (TRUE) {
            
            NSString *inputSelected = [inputCollector inputForPrompt:prompt];

            
            NSLog(@"%@", [inputSelected stringByPigLatinization]);
            
        }
        
        
        
        
    }
    return 0;
}
