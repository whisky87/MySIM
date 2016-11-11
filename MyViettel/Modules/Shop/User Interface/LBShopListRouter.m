//
//  LBShopListRouter.m
//  MyViettel
//
//  Created by Le Van Binh on 11/11/16.
//  Copyright © 2016 LBComp. All rights reserved.
//

#import "LBShopListRouter.h"
#import "LBShopListViewController.h"

@interface LBShopListRouter()

@property(nonatomic) LBShopListViewController *shopListVC;

@end

@implementation LBShopListRouter

-(instancetype)init {
    
    if (!(self = [super init])) return nil;
    
    _shopListVC = [[LBShopListViewController alloc] init];
    
    return self;
}


-(void)setShopListPresenter:(LBShopListPresenter *)shopListPresenter {
    
    _shopListPresenter = shopListPresenter;
    _shopListPresenter.shopListVCDelegate = self.shopListVC;
    
    _shopListVC.shopListPresenterDelegate = shopListPresenter;
}

-(void)showShopListViewController:(UIViewController *)fromViewController {
    
    if (fromViewController.navigationController) {
        
        [fromViewController.navigationController pushViewController:_shopListVC animated:YES];
    } else {
        
        [fromViewController presentViewController:_shopListVC animated:YES completion:nil];
    }
}


@end
