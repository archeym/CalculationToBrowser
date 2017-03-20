//
//  WebViewController.m
//  Week1Assessment-Archie
//
//  Created by Arkadijs Makarenko on 20/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadURL];
    
}
- (void)loadURL {

    NSURL *URL;
        URL = [NSURL URLWithString:@"https://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:request];
}

@end
