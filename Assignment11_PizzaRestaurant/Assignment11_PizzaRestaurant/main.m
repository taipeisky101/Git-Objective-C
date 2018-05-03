//
//  main.m
//  Assignment11_PizzaRestaurant
//
//  Created by Chao Hsien Li on 2018-05-02.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Kitchen.h"
#import "Pizza.h"
#import "AnchovyManager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        Kitchen *restaurantKitchen = [Kitchen new];
        AnchovyManager *anchoManager = [AnchovyManager new];
        CheeryManager *cheerManager = [CheeryManager new];
        
        while (TRUE) {
            NSString *inputString = [InputHandler getUserInput:@"> "];
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "]; // "large
            NSString *size = commandWords[0];
            PizzaSize real_size;
            if ([size isEqualToString:@"Large"]) {
                real_size = Large;
            } else if ([size isEqualToString:@"Medium"]) {
                real_size = Medium;
            } else {
                real_size = Small;
            }
            
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count]-1)];
            
            NSString *chosenManager = [InputHandler getUserInput:@"Pick a manager:\n1. Anchovy Manager\n2. Cheerful Manager\n"];
            
            if ([chosenManager isEqualToString:@"1"]) {
                restaurantKitchen.delegate = anchoManager;
            } else {
                restaurantKitchen.delegate = cheerManager;
            }
            
            Pizza *pizza;
            pizza = [restaurantKitchen makePizzaWithSize:real_size toppings:toppings];
            
            NSLog(@"%@", pizza);
        }
    }
    return 0;
}







































