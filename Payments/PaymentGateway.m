//
//  PaymentGateway.m
//  Payments
//
//  Created by Frances ZiyiFan on 5/3/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "PaymentGateway.h"


@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger)amount{
    if([self.delegate canProcessPayment]){
        [self.delegate processPaymentAmount:amount];
    }else{
        NSLog(@"%@ is unable to process your payment.", self.delegate);
    }
}

@end
