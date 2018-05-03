//
//  AnchovyManager.h
//  Assignment11_PizzaRestaurant
//
//  Created by Chao Hsien Li on 2018-05-02.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

@interface AnchovyManager : NSObject <KitchenDelegate>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgardeOrder:(Kitchen *)kitchen;
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end
