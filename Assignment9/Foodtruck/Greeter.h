//
//  Greeter.h
//  Foodtruck
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol GreeterDelegate

- (BOOL) shouldSayHello;

@end

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;

- (BOOL) askDelegate;

@end

