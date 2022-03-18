//
//  ViewController.m
//  CFiAdMaglevSample
//
//  Created by CF-NB on 2019/8/7.
//  Copyright © 2019年 CF-NB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    admaglev = [[MFAdMaglev alloc] init];
    admaglev = [[MFAdMaglev alloc] initWithLocation:AdMaglevBOTTOM | AdMaglevRIGHT];
    admaglev.bannerId = @"9800";
    admaglev.delegate = self;
    [admaglev debugInfo:YES];
    [admaglev requestAd];
}

- (void)onSuccessToMFAdMaglev
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    [admaglev show];
}

- (void)onFailToMFAdMaglev
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onClickToMFAdMaglev
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onCloseToMFAdMaglev
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

@end
