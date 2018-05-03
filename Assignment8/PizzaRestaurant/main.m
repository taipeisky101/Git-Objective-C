//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "InputHandler.h"

int main(int argc, const char * argv[])
{
// option + click (give info)
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new]; // or use alloc
        
        while (TRUE) {
            // Loop forever
            
            NSString *inputString = [InputHandler getUserInput: @"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            
            // "large ham pinapple cheese"
            NSString *size = commandWords[0]; // size
            NSArray *toppings = [commandWords subarrayWithRange: NSMakeRange(1, [commandWords count]-1)];
            
            Pizza *pizza;
            if (([Pizza getPizzaSize: size] == Large) && ([toppings containsObject:@"pepperoni"])) {
                pizza = [Pizza largePepperoni];
            } else if ([toppings containsObject:@"beef"] || [toppings containsObject:@"pork"] || [toppings containsObject:@"chicken"]) {
                pizza = [Pizza meatLoversWithSize: [Pizza getPizzaSize: size]];
            } else {
                pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize: size] toppings:toppings];
            }
            NSLog(@"%@", pizza);
        }

    }
    return 0;
}






























