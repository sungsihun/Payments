//
//  PaymentGateway.h
//  Payments
//
//  Created by NICE on 2018-08-03.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

- (void)processPaymentAmount:(NSInteger *)inputInt;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger *)inputInt;

@end
