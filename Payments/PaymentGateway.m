//
//  PaymentGateway.m
//  Payments
//
//  Created by NICE on 2018-08-03.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger) inputAmount {
    [self.paymentDelegate processPaymentAmount:inputAmount];
}


@end
