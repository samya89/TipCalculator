//
//  ViewController.m
//  TipCalculator
//
//  Created by Samia Al Rahmani on 3/20/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property(nonatomic, readonly, retain) UITextInputMode *textInputMode;

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@property (nonatomic) NSString *billAmountInput;
@property (nonatomic) NSString *tipPercentageAmount;
@property (nonatomic,assign) float calculatedTipAmount;

- (IBAction)calculateTip:(id)sender;



@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.billAmountTextField becomeFirstResponder];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    NSString *billAmountInput = [self.billAmountTextField text];
    float billAmount = [billAmountInput floatValue];
    NSString *tipPercentageAmount = [self.tipPercentageTextField text];
    float tipValue = [tipPercentageAmount floatValue];
    float tipPercentage = tipValue / 100;
    
    self.calculatedTipAmount = billAmount * tipPercentage;
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$ %f", self.calculatedTipAmount];
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}


-(void)textFieldDidEndEditing:(UITextField *)textField{
    [textField resignFirstResponder];
}











@end
