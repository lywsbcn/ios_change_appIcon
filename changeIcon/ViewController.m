//
//  ViewController.m
//  changeIcon
//
//  Created by Apple on 2017/6/6.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeIconClick:(UIButton *)sender {
    if([UIApplication sharedApplication].supportsAlternateIcons){
        
        NSString *iconName=sender.titleLabel.text;
        
        [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error){
        
        
        }];
        
    }
}
@end
