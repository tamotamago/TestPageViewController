//
//  ViewController.h
//  TestPageViewController
//
//  Created by Koya Tamura on 12/05/14.
//  Copyright (c) 2012年 Koya Tamura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController : UIViewController
<FirstViewControllerDelegate,
SecondViewControllerDelegate>

@end
