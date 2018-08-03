//
//  PaymentGateway.h
//  Payments
//
//  Created by NICE on 2018-08-03.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaymentGateway : NSObject

- (void)processPaymentAmount:(NSInteger *) inputInt;

@end
