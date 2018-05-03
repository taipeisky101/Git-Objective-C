//
//  AnchovyManager.m
//  Assignment11_PizzaRestaurant
//
//  Created by Chao Hsien Li on 2018-05-02.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "AnchovyManager.h"

@implementation AnchovyManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    for (int i = 0; i < toppings.count; i++) {
        if ([[toppings objectAtIndex:i] isEqualToString:@"Anchovy"]) {
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgardeOrder:(Kitchen *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

@end
