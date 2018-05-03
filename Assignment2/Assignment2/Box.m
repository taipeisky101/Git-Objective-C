//
//  Box.m
//  Assignment2
//
//  Created by Chao Hsien Li on 2018-04-17.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "Box.h"

@implementation Box

// default constructor
//- (id) init {
//    self = [super init];
//    if (self) {
//        statememt;
//    }
//    return self;


// constructor are all instance method. (instance is a real object.)
// -(id): return id
- (instancetype) initWithWidth:(float) w andHeight:(float) h andLength:(float) l {
    self = [super init];
    if (self) {
        _width = w; // 1. instance variable (== this.width) 2. private variable
        _height = h;
        _length = l;
    }
    return self;
}

- (float) volume {
    // return self.width * self.height * self.length; // calling three getters == this.getHeight()
    return _width * _height * _length; // These three instance variables == this.width
}

- (float) ratio: (Box *) box { // canFit:
    return [self volume] / [box volume];
}


@end
