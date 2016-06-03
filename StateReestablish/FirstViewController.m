//
//  FirstViewController.m
//  f
//
//  Created by Tanfanfan on 16/6/3.
//  Copyright © 2016年 Tanfanfan. All rights reserved.
//

#import "FirstViewController.h"
#import "TestViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
        
        self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:(UITabBarSystemItemHistory) tag:0];
        self.restorationIdentifier = NSStringFromClass([self class]);
    }
    
    return self;
    
}



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
    //在window创建后设置的控制器,需要同时设置  restorationClass restorationIdentifier
    
    TestViewController *testVc = [TestViewController new];
    testVc.restorationClass = [testVc class]; 
    
    [self.navigationController pushViewController:testVc animated:YES];
}



@end
