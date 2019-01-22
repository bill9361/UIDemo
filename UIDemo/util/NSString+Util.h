//
//  NSString+Util.h
//  NSString类的类别（工具类）
//
//  Created by fengminbiao@126.com on 2019/1/21.
//  Copyright © 2019 bgb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Util)

/**
 去掉str字符串左右两边空格

 @param str 原字符串
 @return 去掉两边空格后的字符串
 */
+ (NSString *) stringWithTrim:(NSString *) str;

@end

NS_ASSUME_NONNULL_END
