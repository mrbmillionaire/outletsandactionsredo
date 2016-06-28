//
//  ViewController.m
//  outletsandactionsredo
//
//  Created by Bryan  Miller on 6/22/16.
//  Copyright © 2016 TheIronYard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
- (IBAction)submitButtonClicked:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButtonClicked:(UIButton *)sender {
    NSString *firstName;
    firstName = self.firstNameTextField.text;
    
    
    NSString *lastName = self.lastNameTextField.text;
    
    NSString *welcomeMessage = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Message" message:welcomeMessage preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];}
@end