//
//  StripePaymentService.h
//  Payments
//
//  Created by Frances ZiyiFan on 5/3/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface StripePaymentService : NSObject <PaymentDelegate>;

@property (nonatomic, assign) NSInteger amount;
@property (nonatomic, strong) NSString* output;

@end

NS_ASSUME_NONNULL_END
