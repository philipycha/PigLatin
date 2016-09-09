//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Philip Ha on 2016-09-09.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization{
    
    NSArray *stringArray = [self componentsSeparatedByString:@" "];
    NSString *pigWord = [[NSString alloc] init];
    
    for (NSString *string in stringArray) {
    
        NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"];
        
        
        NSString *ing = [[string stringByAppendingString:@"!"] stringByTrimmingCharactersInSet:consonants];
        
        ing = [ing stringByReplacingOccurrencesOfString:@"!" withString:@""];
        
        NSString *str = [string stringByReplacingOccurrencesOfString:ing withString:@""];
        
        
        //
        //    pigWord = [pigWord stringByAppendingString:ing];
        //    pigWord = [pigWord stringByAppendingString:str];
        //    pigWord = [pigWord stringByAppendingString:@"ay"];
        //    
        //    return pigWord;
        
        pigWord = [pigWord stringByAppendingFormat:@"%@%@ay ", ing, str];
    
    }
    
    return pigWord;
}

@end
