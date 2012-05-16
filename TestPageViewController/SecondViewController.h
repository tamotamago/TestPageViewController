//
//  SecondViewController.h
//  TestPageViewController
//
//  Created by Koya Tamura on 12/05/15.
//  Copyright (c) 2012年 Koya Tamura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic, assign) id delegate;

-(IBAction)pressBackButton:(id)sender;
@end

@protocol SecondViewControllerDelegate <NSObject>

-(void)pressBackButton;

@end