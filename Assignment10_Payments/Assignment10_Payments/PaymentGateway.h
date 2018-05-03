//
//  PaymentGateway.h
//  Assignement10_Payments
//
//  Created by Chao Hsien Li on 2018-04-26.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol PaymentDelegate

- (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;

@end


@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate; 
- (void) processPaymentAmount: (NSInteger) amount;
- (void) callback;

@end
