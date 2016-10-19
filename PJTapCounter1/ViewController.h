//
//  ViewController.h
//  PJTapCounter1
//
//  Created by Mac on 19/10/16.
//  Copyright © 2016 Pragati Jawale. All rights reserved.
//
#define kAllUIElementHeight 100.0

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *labelNumber;
    UIButton *tapButton;
    UIButton *resetButton;
    UIButton *removeButton;
    CGFloat screenWidth;
    CGFloat screenHeight;
}


@end

