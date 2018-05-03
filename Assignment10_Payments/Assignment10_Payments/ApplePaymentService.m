//
//  ApplePaymentService.m
//  Assignment10_Payments
//
//  Created by Chao Hsien Li on 2018-04-26.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void) processPaymentAmount: (NSInteger) amount {
    NSLog(@"Apple processed amount $%ld.", amount);
}

- (BOOL) canProcessPayment {
    return arc4random_uniform(2) == 1;
}

// for callback explain
- (void) download {
    PaymentGateway *pg = [[PaymentGateway alloc] init];
    [pg callback];
    // NSLog(@"It's done!");
}

@end
