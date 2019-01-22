//
//  UIColor+Hex.h
//  UIDemo
//  UIColor类的类别(工具类)，扩展一个string颜色转换为UIColor的方法
//
//  Created by fengminbiao@126.com on 2019/1/19.
//  Copyright © 2019 bgb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface UIColor (Util)

/**
 将字符串颜色转换为UIColor对象，默认不透明1.0f

 @param color 颜色字符串#fff000
 @return UIColor对象
 */
+ (UIColor *) colorWithHexString:(NSString *)color;

/**
 将字符串颜色转换为UIColor对象
 
 @param color 颜色字符串#fff000
 @param alpha 透明度1.0f
 @return UIColor对象
 */
+ (UIColor *) colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
