//
//  StoryViewController.m
//  HHRouterExample
//
//  Created by Light on 14-3-14.
//  Copyright (c) 2014年 Huohua. All rights reserved.
//

#import "StoryViewController.h"
#import "HHRouter.h"
@interface StoryViewController ()
{
    UIWebView *webView ;
}
@end

@implementation StoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor blueColor];
        webView =[[UIWebView alloc]initWithFrame:self.view.bounds];
        [self.view addSubview:webView];
    }
    return self;
}
-(void)setParams:(NSDictionary *)params{
    [super setParams:params];
    NSLog(@"%@\n",params[@"user"]);
     NSLog(@"%@d\n",params[@"age"]);
     NSLog(@"%@\n",params[@"url"]);
    NSString *urlstr = [[NSString stringWithFormat:@"%@",params[@"url"]] stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlstr]]];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
