//
//  CheeryManager.m
//  Assignment11_PizzaRestaurant
//
//  Created by Chao Hsien Li on 2018-05-02.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgardeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Nice Pizza!");
}

@end








