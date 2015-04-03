//
//  AddViewController.m
//  CallingApp
//
//  Created by Admin on 03.04.15.
//  Copyright (c) 2015 Paul. All rights reserved.
//

#import "AddViewController.h"
#import "FirstViewController.h"


@interface AddViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *number;

@end

@implementation AddViewController

@synthesize delegate;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.firstName) {
        [textField resignFirstResponder];
        [self.lastName becomeFirstResponder];
    } else if (textField == self.lastName) {
        [textField resignFirstResponder];
        [self.number becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
        [delegate didReceiveFirst:self.firstName.text last:self.lastName.text andNum:self.number.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    return YES;
}

- (IBAction)OKclicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
