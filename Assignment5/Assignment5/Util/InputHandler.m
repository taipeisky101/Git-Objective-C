//
//  InputHandler.m
//  Assignment3
//
//  Created by ping tseng tsai on 2018-04-17.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "InputHandler.h"
@implementation InputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        //
    }
    return self;
}

+ (NSString *) getUserInput: (NSString *) prompt{
    char inputChars[255];
    NSLog(@"%@", prompt); // prompt will be question printed
    
    // We need to initialize an NSString * with the C string we get from fgets
    fgets(inputChars, 255, stdin); // limit input to max 255 characters
    NSString *inputString = [NSString stringWithUTF8String:inputChars];// convert char array to an NSString object
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; //get all space and newline then rid 擺脫(修剪) of them
    
    return trimmedString; // trimming 修剪(擺脫)
}

@end
