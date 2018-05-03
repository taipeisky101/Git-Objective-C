//
//  Kitchen.h
//  Assignment11_PizzaRestaurant
//
//  Created by Chao Hsien Li on 2018-05-02.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"

@interface Kitchen : NSObject

- (Pizza *)makePizzaWithSize:(PizzaSize) size toppings:(NSArray *)toppings;
@property (nonatomic, weak) id<KitchenDelegate> delegate;

@end



