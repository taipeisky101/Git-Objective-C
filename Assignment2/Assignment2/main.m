//
//  main.m
//  Assignment2
//
//  Created by Chao Hsien Li on 2018-04-17.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Node *head = (Node *) malloc(sizeof(Node)) == [Box alloc]
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:1];
        NSLog(@"Volume of box1 is %f", [box1 volume]);
        NSLog(@"Box1 can fit %.2f box2", [box1 ratio: box2]);
        
        // [box1 volume];
        // box1.volume (It's possible but blablabla)
    }
    return 0;
}
