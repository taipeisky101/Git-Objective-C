//
//  FoodTruck.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "FoodTruck.h"
@implementation FoodTruck

-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType {
    self = [super init];
    if (self) {
        _name = pun;
        _foodType = foodType;
    }
    return self;
}


-(void)serve:(int)orders {
    
    double price = [self.delegate foodTruck:self priceForFood:self.foodType];
    
    NSLog(@"Welcome to %@", self.name);
    NSLog(@"We serve %@ for $%0.2f", self.foodType, price);
    NSLog(@" ");
    
    self.earnings += orders * price;
}

-(void)cashOut {
    NSLog(@"%@ earned %0.2f today!", self.name, self.earnings);
}

@end








