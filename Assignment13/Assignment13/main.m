//
//  main.m
//  Assignment13
//
//  Created by Chao Hsien Li on 2018-05-02.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // when you want to create a new method for NSString then you can create a category
        NSString *input = @"Kale Chips";
        NSString *piglatin = [input stringByPigLatinization];
        
        NSLog(@"%@ becomes %@", input, piglatin);
    }
    return 0;
}








