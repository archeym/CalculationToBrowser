//
//  WebViewController.h
//  Week1Assessment-Archie
//
//  Created by Arkadijs Makarenko on 20/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UIView *googleBar;

@end
