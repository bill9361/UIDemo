//
//  NSString+Util.m
//  NSString类类别（工具类）
//
//  Created by fengminbiao@126.com on 2019/1/21.
//  Copyright © 2019 bgb. All rights reserved.
//

#import "NSString+Util.h"

@implementation NSString (Util)

/**
 去掉str字符串左右两边空格
 
 @param str 原字符串
 @return 去掉两边空格后的字符串
 */
+ (NSString *) stringWithTrim:(NSString *) str
{
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
