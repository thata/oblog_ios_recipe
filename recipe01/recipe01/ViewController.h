//
//  ViewController.h
//  recipe01
//
//  Created by 畠山 貴 on 11/12/17.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *text;
@property (nonatomic, strong) IBOutlet UIButton *button;

- (IBAction)lookup:(id)sender;

@end
