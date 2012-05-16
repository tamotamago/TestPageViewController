//
//  FirstViewController.h
//  TestPageViewController
//
//  Created by Koya Tamura on 12/05/15.
//  Copyright (c) 2012年 Koya Tamura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (nonatomic, assign) id delegate;

-(IBAction)pressNextButton:(id)sender;
@end

@protocol FirstViewControllerDelegate <NSObject>

-(void)pressNextButton;

@end