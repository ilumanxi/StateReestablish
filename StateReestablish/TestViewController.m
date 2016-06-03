//
//  TestViewController.m
//  f
//
//  Created by Tanfanfan on 16/6/3.
//  Copyright © 2016年 Tanfanfan. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {

    
        self.restorationIdentifier = NSStringFromClass([self class]);
    }
    
    return self;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}


+ (UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder {
    
    
    UIViewController *viewController = [self new];
    
    viewController.restorationClass = [viewController class];
    
    return viewController;
    
}


@end
