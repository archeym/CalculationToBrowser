//
//  ViewController.m
//  Week1Assessment-Archie
//
//  Created by Arkadijs Makarenko on 20/03/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, assign) int number1;
@property (nonatomic, assign) int number2;
@property (nonatomic, assign) int sum;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for(UIButton *button in self.buttons){
    [[button layer] setBorderWidth:2.0f];
    [[button layer] setBorderColor:[UIColor lightGrayColor].CGColor];
    [button addTarget:self action:@selector(calculate:) forControlEvents:UIControlEventTouchUpInside];
    }
    self.tabBarController.tabBar.userInteractionEnabled = NO;
}

-(void)calculate:(UIButton *)sender {
    //need to fix 0÷ number, show error
    self.number1 = [self.textField1.text intValue];
    self.number2 = [self.textField2.text intValue];
    
    if ([sender.titleLabel.text isEqual:@"+"]){
        self.sum = self.number1 + self.number2;
    }else if([sender.titleLabel.text isEqual:@"-"]){
        self.sum = self.number1 - self.number2;
    }else if([sender.titleLabel.text isEqual:@"x"]){
        self.sum = self.number1 * self.number2;
    }else if([sender.titleLabel.text isEqual:@"÷"]){
        self.sum = self.number1 / self.number2;
    }else{
        return;
    }
    if (self.tabBarController.tabBar.userInteractionEnabled == YES) {
        self.tabBarController.tabBar.userInteractionEnabled = NO;
    }
    self.label.text = [NSString stringWithFormat:@"%d", self.sum];
    
        if (self.sum % 9 == 0) {
            [self displayAlertWithTitle:@"GENIUS" andMessage:NULL];
        }
    if (self.sum==999) {
        [self.tabBarController setSelectedIndex:1];
        self.tabBarController.tabBar.userInteractionEnabled = YES;
    }
}
-(void) displayAlertWithTitle:(NSString *)title andMessage:(NSString *)message{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *dismissAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:NULL];
    
    [alert addAction:dismissAction];
    [self presentViewController:alert animated:YES completion:NULL];
}

@end
