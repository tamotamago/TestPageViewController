//
//  ViewController.m
//  TestPageViewController
//
//  Created by Koya Tamura on 12/05/14.
//  Copyright (c) 2012年 Koya Tamura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, retain) UIPageViewController *pageViewController;
@property (nonatomic, retain) FirstViewController *firstViewController;
@property (nonatomic, retain) SecondViewController *secondViewController;

@end

@implementation ViewController

@synthesize pageViewController;
@synthesize firstViewController;
@synthesize secondViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *optDict = [NSDictionary dictionaryWithObject:[NSNumber numberWithInt:UIPageViewControllerSpineLocationMin] 
                                                        forKey:UIPageViewControllerOptionSpineLocationKey];
    self.pageViewController 
    = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl 
                                                              navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal 
                                                                            options:optDict];

    self.firstViewController = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    self.firstViewController.delegate = self;
    self.secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    self.secondViewController.delegate = self;
    
    NSArray *viewControllers = [NSArray arrayWithObjects:firstViewController, nil];
    [pageViewController setViewControllers:viewControllers
                                 direction:UIPageViewControllerNavigationDirectionForward
                                  animated:NO
                                completion:^(BOOL finished) {
                                }];
    [pageViewController.view setFrame:CGRectMake(0, 0, 320, 460)];
    [self.view addSubview:pageViewController.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

#pragma mark - FirstViewControllerDelegate method
-(void)pressNextButton
{
    NSArray *viewControllers = [NSArray arrayWithObjects:secondViewController, nil];
    [pageViewController setViewControllers:viewControllers
                                 direction:UIPageViewControllerNavigationDirectionForward
                                  animated:YES
                                completion:^(BOOL finished) {
                                    NSLog(@"Forward Paging!");
                                }];
}

#pragma mark - SecondViewControllerDelegate method
-(void)pressBackButton
{
    NSArray *viewControllers = [NSArray arrayWithObjects:firstViewController, nil];
    [pageViewController setViewControllers:viewControllers
                                 direction:UIPageViewControllerNavigationDirectionReverse
                                  animated:YES
                                completion:^(BOOL finished) {
                                    NSLog(@"Reverse Paging!");
                                }];
}


@end
