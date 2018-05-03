//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "FriendlyGreetingDecider.h"
#import "HorribleGreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Greeter *greeter = [Greeter new];
        FriendlyGreetingDecider *f_decider = [FriendlyGreetingDecider new];
        HorribleGreetingDecider *h_decider = [HorribleGreetingDecider new];
        
        greeter.delegate = f_decider; // f_decider is also <GreeterDelegate> type
        
        if ([greeter askDelegate]) { // YES or NO
            NSLog(@"FriedlyGreetingDecider said YES");
        } else {
            NSLog(@"FriedlyGreetingDecider said NO");
        }
        
    }
    return 0;
}
