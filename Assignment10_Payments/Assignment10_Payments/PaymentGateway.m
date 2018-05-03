//
//  PaymentGateway.m
//  Assignement10_Payments
//
//  Created by Chao Hsien Li on 2018-04-26.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) amount{
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount: amount];
    } else {
        NSLog(@"I am sorry. Your payment cannot be processed at the moment.");
    }
}

- (void) callback {
    NSLog(@"It's done!");
}

@end
