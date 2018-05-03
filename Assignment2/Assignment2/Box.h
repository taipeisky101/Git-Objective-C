//
//  Box.h
//  Assignment2
//
//  Created by Chao Hsien Li on 2018-04-17.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property(nonatomic, assign) float height;
@property(nonatomic, assign) float width;
@property(nonatomic, assign) float length;

- (instancetype) initWithWidth:(float) w andHeight:(float) h andLength:(float) l; // constructor

- (float) volume;
- (float) ratio: (Box *) box;

@end
