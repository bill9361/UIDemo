//
//  UIImage+Util.h
//  UIImage类别（工具类）
//
//  Created by fengminbiao@126.com on 2019/1/21.
//  Copyright © 2019 bgb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Util)

/**
 根据图片名获取Resources.bundle中Images的图片

 @param imageName 图片名 xxx.png
 @return 返回图片对象
 */
+ (UIImage *) imageForResBundle:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
