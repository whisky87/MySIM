//
//  LBMyViettelRootViewController.m
//  MyViettel
//
//  Created by Le Van Binh on 10/18/16.
//  Copyright © 2016 LBComp. All rights reserved.
//

#import "LBMyViettelRootViewController.h"

@implementation LBMyViettelRootViewController

-(UIWindow *)window {
    
    if (_window) return _window;
    
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    /*CGRect windowFrame = _window.frame;
    windowFrame.origin = CGPointMake(0, [self statusBarHeight]);
    windowFrame.size = CGSizeMake(windowFrame.size.width, windowFrame.size.height - [self statusBarHeight]);
    
    _window.frame = windowFrame;*/
    
    [_window makeKeyAndVisible];
    
    return _window;
}

-(void)setLeftMenu:(UIViewController *)leftMenu {
    
    _leftMenu = leftMenu;
    
    self.navigationController.leftMenu = leftMenu;
}

-(float) statusBarHeight
{
    CGSize statusBarSize = [[UIApplication sharedApplication] statusBarFrame].size;
    return MIN(statusBarSize.width, statusBarSize.height);
}

-(UINavigationController *)navigationController {
    
    if (_navigationController) return _navigationController;
    
    _navigationController = [[SlideNavigationController alloc] init];
    
    self.window.rootViewController = _navigationController;
    
    return _navigationController;
}

-(void)setViewControllersIntoNavController:(NSArray<UIViewController *> *)viewControllers animated:(BOOL)animated {
    
    [self.navigationController setViewControllers:viewControllers animated:animated];
}   


@end
