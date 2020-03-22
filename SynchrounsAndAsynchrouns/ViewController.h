//
//  ViewController.h
//  SynchrounsAndAsynchrouns
//
//  Created by ahmedpro on 3/22/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)doSynchrouns:(UIButton *)sender;
- (IBAction)doAsynchrouns:(UIButton *)sender;

@end

