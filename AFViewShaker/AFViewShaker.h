//
//  AFViewShaker
//  AFViewShaker
//
//  Created by Philip Vasilchenko on 03.12.13.
//  Copyright (c) 2014 okolodev. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AFViewShaker : NSObject

- (instancetype)initWithView:(UIView *)view;
- (instancetype)initWithViewsArray:(NSArray *)viewsArray;

- (void)shake;
- (void)shakeWithDuration:(NSTimeInterval)duration completion:(void (^)())completion;

@end