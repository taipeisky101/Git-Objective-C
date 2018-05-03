//
//  main.m
//  Assignment9_FoodTruck_ExtraExample
//
//  Created by Chao Hsien Li on 2018-04-25.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Server.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        Cook *miho = [Cook new];
        Server *alex = [Server new];
        
        // set truckA and truckB's delegate to your new instance.
        truckA.delegate = miho;
        truckB.delegate = alex;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
