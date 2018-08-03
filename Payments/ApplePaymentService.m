//
//  ApplePaymentService.m
//  Payments
//
//  Created by NICE on 2018-08-03.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)inputInt {
    NSLog(@"Apple processed amount $%li", (long)inputInt);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2) == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end
