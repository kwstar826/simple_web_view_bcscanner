//
//  ViewController.m
//  bc_scanner
//
//  Created by Antoon Hieronymus on 16/06/16.
//  Copyright © 2016 Antoon Hieronymus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *myURL = @"https://bc-scanner.appspot.com/";
    NSURL *url = [NSURL URLWithString:myURL];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    
}

- (void)application:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSDictionary *dictionary = [NSDictionary 
        dictionaryWithObjectsAndKeys:
        @"Mozilla/5.0 (iPod; U; CPU iPhone OS 4_3_3 like Mac OS X; ja-jp) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5", 
        @"UserAgent", nil];
    [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction
- (IBAction)reloadPressed:(id)sender
{
    NSString *myURL = @"https://bc-scanner.appspot.com/";
    NSURL *url = [NSURL URLWithString:myURL];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
}

@end
