//
//  FoodTruck.h
//  Foodtruck
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FoodTruck;

@protocol FoodTruckDelegate <NSObject>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end

@interface FoodTruck : NSObject

@property (nonatomic, weak) id<FoodTruckDelegate> delegate;
@property (nonatomic, assign) float earnings;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *foodType;

-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType;
-(void)serve:(int)orders;
-(void)cashOut;

@end












