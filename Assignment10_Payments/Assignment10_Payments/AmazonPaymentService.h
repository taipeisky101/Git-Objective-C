//
//  AmazonPaymentService.h
//  Assignment10_Payments
//
//  Created by Chao Hsien Li on 2018-04-26.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject<PaymentDelegate>
- (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;

@end
