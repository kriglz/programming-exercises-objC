//
//  ViewController.m
//  Test_objc
//
//  Created by Kristina Gelzinyte on 3/4/18.
//  Copyright © 2018 Kristina Gelzinyte. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [NSTimer scheduledTimerWithTimeInterval:2.0
                                     target:self
                                   selector:@selector(theAction)
                                   userInfo:nil
                                    repeats:NO];
    
    // Create the label object and set its frame
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    // Set the text property of the label
    label.text = @"Hello again!";
    // Add the label object to the view
    [self.view addSubview:label];
    
    self.label.text = @"HELLO";
    
    [self.button setTitle:@"HIT BUTTON" forState:UIControlStateNormal];
    
}

- (IBAction)handleButtonClick:(UIButton *)sender {
    self.textField.text = @"Button was hit";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}

- (void) theAction {
    NSLog(@"Will appear after a 2 second delay.");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
