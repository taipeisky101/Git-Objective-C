//
//  main.m
//  Assignment10_Payments
//
//  Created by Chao Hsien Li on 2018-04-26.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "InputHandler.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // setup input and output
       
        int dollar = arc4random_uniform(901) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com\nYour total today is $%d\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon", dollar);
        
        NSInteger method = [[InputHandler getUserInputWithPrompt:@"Select which payment: "] integerValue];
        PaymentGateway *gateway = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        switch (method) {
            case 1:
                // [getway setPaymentDelegate: [PaypalPaymentService new]];
                gateway.paymentDelegate = paypal;
                break;
            case 2:
                // [getway setPaymentDelegate: [StripePaymentService new]];
                gateway.paymentDelegate = stripe;
                break;
            case 3:
                // [getway setPaymentDelegate: [AmazonPaymentService new]];
                gateway.paymentDelegate = amazon;
                break;
            case 4:
                // [getway setPaymentDelegate: [AmazonPaymentService new]];
                gateway.paymentDelegate = apple;
                break;
            default:
                break;
        }
        [gateway processPaymentAmount:dollar];
        
        //[PaymentGateway processPaymentAmount];
        
        // for callback explain
        [apple download];
       
    }
    return 0;
}

























