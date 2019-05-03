//
//  main.m
//  Payments
//
//  Created by Frances ZiyiFan on 5/3/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger money = arc4random_uniform(900)+100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", money);
        char inputChar[255];
        fgets(inputChar, 255, stdin);
        NSString* inputString = [[NSString alloc] initWithUTF8String:inputChar];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger operation = [inputString integerValue];
//        NSLog(@"%d", operation);
        
        PaymentGateway* gateway = [[PaymentGateway alloc]init];
        PaypalPaymentService* paypal = [[PaypalPaymentService alloc]init];
        StripePaymentService* stripe = [[StripePaymentService alloc]init];
        AmazonPaymentService* amazon = [[AmazonPaymentService alloc]init];
        ApplePaymentService* apple = [[ApplePaymentService alloc]init];
        
        switch (operation) {
            case 1:
                gateway.delegate = paypal;
                break;
            case 2:
                gateway.delegate = stripe;
                break;
            case 3:
                gateway.delegate = amazon;
                break;
            case 4:
                gateway.delegate = apple;
                break;
            default:
                NSLog(@"Unknown payment gateway.");
                break;
        }
        [gateway processPaymentAmount:money];
        
        
    }
    return 0;
}
