//
//  ViewController.m
//  SynchrounsAndAsynchrouns
//
//  Created by ahmedpro on 3/22/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSMutableData *myData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    myData = [NSMutableData new];
}


- (IBAction)doSynchrouns:(UIButton *)sender {
    NSString *str = [[NSString alloc] initWithContentsOfURL: [NSURL URLWithString: @"https://www.yahoo.com/"] encoding: NSUTF8StringEncoding error: nil];
    [self.webView loadHTMLString: str baseURL: nil];
}

- (IBAction)doAsynchrouns:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString: @"https://www.twitter.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL: url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest: request delegate: self];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [myData appendData: data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSString *str = [[NSString alloc] initWithData: myData encoding: NSUTF8StringEncoding];
    [self.webView loadHTMLString: str baseURL: nil];
}

@end
