//
//  StripePaymentService.m
//  Assignment10_Payments
//
//  Created by Chao Hsien Li on 2018-04-26.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void) processPaymentAmount: (NSInteger) amount{
    NSLog(@"Stripe processed amount $%ld.", amount);
}

- (BOOL) canProcessPayment {
    return arc4random_uniform(2) == 1;
}

@end
