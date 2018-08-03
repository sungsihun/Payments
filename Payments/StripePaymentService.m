//
//  StripePaymentService.m
//  Payments
//
//  Created by NICE on 2018-08-03.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService


- (void)processPaymentAmount:(NSInteger)inputInt {
    NSLog(@"Stripe processed amount $%li", (long)inputInt);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2) == 0) {
        return NO;
    } else {
        return YES;
    }
}


@end
