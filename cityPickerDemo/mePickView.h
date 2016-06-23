//
//  mePickView.h
//  cityPickerDemo
//
//  Created by 王龙 on 16/3/24.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import <UIKit/UIKit.h>

@class mePickView;
@protocol mePickViewDelegate <NSObject>

-(void)selectCity:(NSString *)city;
@end

@interface mePickView : UIView

@property(nonatomic, assign) id<mePickViewDelegate>delegate;

@end
