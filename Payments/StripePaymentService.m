//
//  StripePaymentService.m
//  Payments
//
//  Created by Frances ZiyiFan on 5/3/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _output = @"Stripe";
    }
    return self;
}

- (void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"%@ processed amount %ld", self.output, amount);
}

- (BOOL)canProcessPayment{
    return arc4random_uniform(2);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.output];
}

@end
