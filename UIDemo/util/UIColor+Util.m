//
//  UIColor+Util.m
//  UIDemo
//  UIColor类的类别(工具类)，扩展一个string颜色转换为UIColor的方法
//
//  Created by fengminbiao@126.com on 2019/1/19.
//  Copyright © 2019 bgb. All rights reserved.
//

#import "UIColor+Util.h"

@implementation UIColor (Util)

/**
 将字符串颜色转换为UIColor对象，默认不透明1.0f
 
 @param color 颜色字符串#fff000
 @return UIColor对象
 */
+ (UIColor *)colorWithHexString:(NSString *)color
{
    return [self colorWithHexString:color alpha:1.0f];
}


/**
 将字符串颜色转换为UIColor对象
 
 @param color 颜色字符串#fff000
 @param alpha 透明度1.0f
 @return UIColor对象
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha
{
    //删除字符串左右两边的空格
    color = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([color length] < 6) {
        //将颜色设为透明
        return [UIColor clearColor];
    }
    //颜色以0x开头,则从索引为2的位置开始截取
    if ([color hasPrefix:@"0x"]) {
        color = [color substringFromIndex:2];
    }
    //如果颜色以#开头，则从索引为1的位置开始截取
    if ([color hasPrefix:@"#"]) {
        color = [color substringFromIndex:1];
    }
    
    //获取color中的RGB颜色片段
    //R
    NSString *rColor = [color substringWithRange:NSMakeRange(0, 2)];
    //G
    NSString *gColor = [color substringWithRange:NSMakeRange(2, 2)];
    //B
    NSString *bColor = [color substringWithRange:NSMakeRange(4, 2)];
    
    //将RGB字符串值分别转化为int值
    unsigned int r,g,b;
    //将十六进制转换为十进制
    [[NSScanner scannerWithString:rColor] scanHexInt:&r];
    [[NSScanner scannerWithString:gColor] scanHexInt:&g];
    [[NSScanner scannerWithString:bColor] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

@end
