//
//  PaymentGateway.h
//  Payments
//
//  Created by Frances ZiyiFan on 5/3/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> delegate;

- (void) processPaymentAmount: (NSInteger)amount;

@end

NS_ASSUME_NONNULL_END
