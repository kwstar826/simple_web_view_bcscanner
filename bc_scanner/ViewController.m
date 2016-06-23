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
    self.webView.contentMode = UIViewContentModeScaleAspectFit;
    NSString *myURL = @"http://bc-scanner.appspot.com/";
    NSURL *url = [NSURL URLWithString:myURL];
    self.webView.scalesPageToFit = YES;
    self.webView.delegate = self;
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
//        NSString *destination = [request.URL absoluteString];
//        NSArray *parts = [destination componentsSeparatedByString:@"/"];
//        NSString *destination1 = [parts objectAtIndex:0];
//        if ([destination1 rangeOfString:@"pic2shop:"].location == 0) {
//            //NSString *message = [destination stringByReplacingOccurrencesOfString:@"app_link:" withString:@""];
//            // do something with the message
//            if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:destination]])
//            {
//                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:destination]];
//            }else{
//                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"URL error"
//                                                                message:[NSString stringWithFormat:@"No custom URL defined for %@", destination]
//                                                               delegate:self cancelButtonTitle:@"OK"
//                                                      otherButtonTitles:nil];
//                [alert show];
//            }
//        }
        /*if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:destination]])
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:destination]];
        }*/
    
    return YES;
}

- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace {
    return YES;
}


- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
    [challenge.sender useCredential:[NSURLCredential credentialForTrust:challenge.protectionSpace.serverTrust] forAuthenticationChallenge:challenge];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction
- (IBAction)reloadPressed:(id)sender
{
    NSString *myURL = @"http://bc-scanner.appspot.com/";
    NSURL *url = [NSURL URLWithString:myURL];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
}

@end
