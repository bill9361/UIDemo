//
//  UIImage+Util.m
//  UIImage类别（工具类）
//
//  Created by fengminbiao@126.com on 2019/1/21.
//  Copyright © 2019 bgb. All rights reserved.
//

#import "UIImage+Util.h"

@implementation UIImage (Util)

/**
 根据图片名获取Resources.bundle中Images的图片
 
 @param imageName 图片名 xxx.png
 @return 返回图片对象
 */
+ (UIImage *) imageForResBundle:(NSString *)imageName
{
    //存放图片资源的目录
    NSString *imagesFolderPath = @"Resources.bundle/Images/";
    //图片的路径
    NSString *imagePath = [imagesFolderPath stringByAppendingString:imageName];
    
    return [UIImage imageNamed:imagePath];
}
@end
