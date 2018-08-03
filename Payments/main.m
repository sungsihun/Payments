//
//  main.m
//  Payments
//
//  Created by NICE on 2018-08-03.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSNumber *dollar = [NSNumber numberWithFloat:arc4random_uniform(901)+100];
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%@ Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", dollar);
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        int inputDollar = [inputString intValue];
        NSLog(@"you enter: %d", inputDollar);
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        [paymentGateway processPaymentAmount:inputDollar];
        
        
        
    }
    return 0;
}
