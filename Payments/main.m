//
//  main.m
//  Payments
//
//  Created by NICE on 2018-08-03.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        NSInteger dollar = arc4random_uniform(901)+100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", dollar);
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        int userPaymentInput = [inputString intValue];
        NSLog(@"your payment: %d", userPaymentInput);
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        switch (userPaymentInput)
        {
            case 1:  // Paypal
            {
                PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
                paymentGateway.paymentDelegate = paypal;
                [paymentGateway processPaymentAmount:&dollar];
                break;
            }
            case 2:  // Stripe
            {
                StripePaymentService *stripe = [[StripePaymentService alloc] init];
                paymentGateway.paymentDelegate = stripe;
                [paymentGateway processPaymentAmount:&dollar];
                break;
            }
            case 3:  // Amazon
            {
                AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
                paymentGateway.paymentDelegate = amazon;
                [paymentGateway processPaymentAmount:&dollar];
                break;
            }
        }
        
    }
    return 0;
}
