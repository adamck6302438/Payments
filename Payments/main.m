//
//  main.m
//  Payments
//
//  Created by Frances ZiyiFan on 5/3/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int money = arc4random_uniform(900)+100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon");
        char inputChar[255];
        fgets(inputChar, 255, stdin);
        NSString* inputString = [[NSString alloc] initWithUTF8String:inputChar];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int operation = [inputString integerValue];
        NSLog(@"%d", operation);
    }
    return 0;
}
