//
//  AFViewController.m
//  AFViewShaker
//
//  Created by Philip Vasilchenko on 23.05.14.
//  Copyright (c) 2014 okolodev. All rights reserved.
//

#import "AFViewController.h"
#import "AFViewShaker.h"


@interface AFViewController ()
@property (nonatomic, strong) IBOutletCollection(UIView) NSArray * allTextFields;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray * allButtons;
@property (nonatomic, strong) AFViewShaker * viewShaker;
@end


@implementation AFViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    self.viewShaker = [[AFViewShaker alloc] initWithViewsArray:self.allTextFields];

    for (UIButton * button in self.allButtons) {
        button.layer.borderColor = [[UIColor whiteColor] CGColor];
        button.layer.borderWidth = 1;
        button.layer.cornerRadius = 5;
    }
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


#pragma mark - Actions

- (IBAction)onShakeOneAction:(UIButton *)sender {
    [[[AFViewShaker alloc] initWithView:self.allButtons[0]] shake];
}


- (IBAction)onShakeAllAction:(UIButton *)sender {
    [self.viewShaker shake];
}


- (IBAction)onShakeAllWithBlockAction:(UIButton *)sender {
    [self.viewShaker shakeWithDuration:0.6 completion:^{
        [[[UIAlertView alloc] initWithTitle:@"Hello"
                                   message:@"This is completions block"
                                  delegate:self
                         cancelButtonTitle:@"OK"
                         otherButtonTitles:nil] show];
    }];
}

@end
