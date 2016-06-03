//
//  SlidingViewController.m
//  f
//
//  Created by Tanfanfan on 16/6/3.
//  Copyright © 2016年 Tanfanfan. All rights reserved.
//

#import "SlidingViewController.h"

@interface SlidingViewController ()

@end

@implementation SlidingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
    
    [coder encodeObject:self.topViewController forKey:@"topViewController"];
    
    
    [super encodeRestorableStateWithCoder:coder];
    
    
}

@end
