//
//  SecondViewController.m
//  f
//
//  Created by Tanfanfan on 16/6/3.
//  Copyright © 2016年 Tanfanfan. All rights reserved.
//

#import "SecondViewController.h"
#import "TestViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    UIButton *push = [UIButton buttonWithType:(UIButtonTypeContactAdd)];
    [push sizeToFit];
    push.center = self.view.center;
    [push addTarget:self action:@selector(push) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:push];
}

- (void)push {
    
    TestViewController *testVc = [TestViewController new];
    testVc.restorationClass = [testVc class];
    
    [self presentViewController:testVc animated:YES completion:NULL];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
        
        self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:(UITabBarSystemItemContacts) tag:0];
        self.restorationIdentifier = NSStringFromClass([self class]);
    }
    
    return self;
    
}


@end
