//
//  UserViewController.m
//  HHRouterExample
//
//  Created by Light on 14-3-14.
//  Copyright (c) 2014年 Huohua. All rights reserved.
//

#import "UserViewController.h"
#import "HHRouter.h"
#import "StoryViewController.h"
@interface UserViewController ()

@end

@implementation UserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //url 映射
    [[HHRouter shared]map:@"/story" toControllerClass:[StoryViewController class]];
    
    self.view.backgroundColor=[UIColor redColor];
    
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 100, 100, 50);
    [button setTitle:@"点击" forState:0];
    button.backgroundColor =[UIColor blueColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
}
-(void)pop{
    
    
    //传值
    UIViewController *viewController=[[HHRouter shared] matchController:@{@"route":@"story",@"age":@(18),@"user":@"",@"url":@"https:**www.baidu.com"}];

    //UIViewController *viewController=[[HHRouter shared] matchController:@"/story/"];
    [self.navigationController pushViewController:viewController animated:YES];
    
   
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
