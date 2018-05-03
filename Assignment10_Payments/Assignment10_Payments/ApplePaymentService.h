//
//  ApplePaymentService.h
//  Assignment10_Payments
//
//  Created by Chao Hsien Li on 2018-04-26.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface ApplePaymentService : NSObject <PaymentDelegate>

- (void) download;

@end
