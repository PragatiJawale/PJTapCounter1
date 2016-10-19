//
//  ViewController.m
//  PJTapCounter1
//
//  Created by Mac on 19/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenWidth =[[UIScreen mainScreen]bounds].size.width;
    screenHeight =[[UIScreen mainScreen]bounds].size.height;
    labelNumber =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    //labelNumber.backgroundColor =[UIColor colorWithRed:0.50/1 green:0.2/1 blue:0.2/1 alpha:1];
    labelNumber.backgroundColor =[UIColor colorWithHue:0.8/1 saturation:0.50/1 brightness:0.5/1 alpha:1];
    labelNumber.font =[UIFont fontWithName:@"Arial" size:120];
    labelNumber.textAlignment =NSTextAlignmentCenter;
    [self.view addSubview:labelNumber];
    tapButton =[[UIButton alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    [tapButton addTarget:self action:@selector(handleTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tapButton];
    
    
    
    removeButton =[[UIButton alloc]initWithFrame:CGRectMake(0, screenHeight-kAllUIElementHeight, screenWidth/2, kAllUIElementHeight)];
    removeButton.backgroundColor = [UIColor whiteColor];
    [removeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    removeButton.layer.borderColor =[UIColor colorWithRed:0.60/1 green:0.37/1 blue:0.80/1 alpha:1].CGColor;
    removeButton.layer.borderWidth=3.0;
    
    [removeButton addTarget:self action:@selector(handleRemove) forControlEvents:UIControlEventTouchUpInside];
    [removeButton setTitle:@"Remove Count" forState:UIControlStateNormal];
    
    
    [self.view addSubview:removeButton];
    
     resetButton=[[UIButton alloc]initWithFrame:CGRectMake(screenWidth/2, screenHeight-kAllUIElementHeight, screenWidth/2, kAllUIElementHeight)];
 resetButton.backgroundColor = [UIColor whiteColor];
    
    [resetButton setTitle:@"RESET" forState:UIControlStateNormal];
    [resetButton setTitle:@"RESETTING..." forState:UIControlStateHighlighted];
    [resetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    resetButton.layer.borderColor =[UIColor colorWithRed:0.60/1 green:0.37/1 blue:0.80/1 alpha:1].CGColor;
    resetButton.layer.borderWidth=3.0;
    [resetButton addTarget:self action:@selector(handleReset) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:resetButton];

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handleTap
    {
        NSString *currentValueString = labelNumber.text;
        int currentValueInt =currentValueString.intValue;
        currentValueInt = currentValueInt+1;
        NSString *newStringValue =[NSString stringWithFormat:@"%d",currentValueInt];
        labelNumber.text =newStringValue;
    }
-(void)handleReset
    {
        labelNumber.text =@"0";
    }
    
-(void)handleRemove
    {
        NSString *currentValueString = labelNumber.text;
        int currentValueInt =currentValueString.intValue;
        currentValueInt = currentValueInt-1;
        NSString *newStringValue =[NSString stringWithFormat:@"%d",currentValueInt];
        labelNumber.text =newStringValue;
    }



@end
