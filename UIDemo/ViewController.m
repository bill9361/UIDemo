//
//  ViewController.m
//  UIDemo
//
//  Created by BGB Tech on 2019/1/19.
//  Copyright © 2019 bgb. All rights reserved.
//

#import "ViewController.h"
#import "util/UIColor+Util.h"
#import "util/NSString+Util.h"
#import "util/UIImage+Util.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置背景颜色
    //self.view.backgroundColor = [UIColor yellowColor];
    //self.view.backgroundColor = [UIColor colorWithRed:(231/255.0f) green:(231/255.0f) blue:(231/255.0f) alpha:1.0f];
    //设置自定义颜色
    //self.view.backgroundColor = [UIColor colorWithHexString:@"#FF0000"];
    
    //创建UILabel
    [self createUILabel];
    //创建UIButton
    [self createUIButton];
    
}

/**
 创建UILabel
 */
- (void) createUILabel
{
    //创建一个UILabel对象
    UILabel *label1 = [[UILabel alloc] init];
    //设置标签文字
    label1.text = @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或或或或或哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈啊哈哈哈哈哈";
    //设置标签的位置和大小
    label1.frame = CGRectMake(50, 50, 200, 50);
    //设置标签颜色
    label1.backgroundColor = [UIColor greenColor];
    //设置标签边框宽度
    label1.layer.borderWidth = 3.0f;
    //设置圆角
    //label1.layer.cornerRadius = 20.0f;
    //设置字体大小，使用系统默认字体，大小为12
    label1.font = [UIFont systemFontOfSize:12];
    
    //UILabel的高级属性
    //设置阴影颜色
    label1.shadowColor = [UIColor redColor];
    //设置阴影偏移位置
    //label1.shadowOffset = CGSizeMake(5, 5);
    
    //设置文字对齐方式(居中对齐)
    //label1.textAlignment = NSTextAlignmentCenter;
    label1.textAlignment = NSTextAlignmentLeft;
    
    //设置标签显示文字的行数，如果>0则按实际行数设置，如果=0，则自动计算行数
    label1.numberOfLines = 0;
    
    //将label添加到视图中并显示到屏幕上
    [self.view addSubview:label1];
}


/**
 创建矩形UIButton
 */
- (void) createUIButton
{
    //按照类型创建按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //按钮标记
    btn.tag = 1001;
    //按钮的位置和大小
    btn.frame = CGRectMake(50, 130, 100, 35);
    //设置按钮颜色
    btn.backgroundColor = [UIColor yellowColor];
    //设置正常状态下的按钮文字
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    //设置正常状态下的按钮文字颜色
    //[btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //设置按下状态的按钮文字
    [btn setTitle:@"登录中..." forState:UIControlStateHighlighted];
    //设置按下状态下的按钮文字颜色
    //[btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    //设置按钮风格颜色
    [btn setTintColor:[UIColor redColor]];
    
    //给按钮d添加点击事件
    [btn addTarget:self action:@selector(onClickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    //将按钮添加到视图中并显示到屏幕上
    [self.view addSubview:btn];
    
    //创建一个自定义类型的按钮
    UIButton *btnCustom = [UIButton buttonWithType:UIButtonTypeCustom];
    //按钮标记
    btnCustom.tag = 1002;
    //设置按钮位置和大小
    btnCustom.frame = CGRectMake(50, 200, 200, 200);
    
    //imageNamed方法不适用大图片的加载
    //UIImage *img1 = [UIImage imageNamed:@"btn_normal.png"];
    //UIImage *img2 = [UIImage imageNamed:@"btn_pressed.png"];
    
    //获取文件夹中的图片（NSBundle mainBundle可以访问项目下所有文件夹资源）
    //NSString *imageFlie1 = [[NSBundle mainBundle] pathForResource:@"btn_normal" ofType:@"png"];
    //NSString *imageFlie2 = [[NSBundle mainBundle] pathForResource:@"btn_pressed" ofType:@"png"];
    
    //访问Resources.bundle中Images的图片
    //从mainBundle中获取Resources.bundle
    //NSString *resBundle = [[NSBundle mainBundle] pathForResource:@"Resources" ofType:@"bundle"];
    
    //找到对应Images文件夹下的图片
    //NSString *imageFlie1 = [[NSBundle bundleWithPath:resBundle] pathForResource:@"btn_normal" ofType:@"png" inDirectory:@"Images"];
    //NSString *imageFlie2 = [[NSBundle bundleWithPath:resBundle] pathForResource:@"btn_pressed" ofType:@"png" inDirectory:@"Images"];
    
    //通过NSBundle访问，推荐使用imageWithContentsOfFile方法，效率高
    //UIImage *img1 = [UIImage imageWithContentsOfFile:imageFlie1];
    //UIImage *img2 = [UIImage imageWithContentsOfFile:imageFlie2];
    
    //UIImage *img1 = [UIImage imageNamed:@"Resources.bundle/Images/btn_normal.png"];
    //UIImage *img2 = [UIImage imageNamed:@"Resources.bundle/Images/btn_pressed.png"];
    
    UIImage *img1 = [UIImage imageForResBundle:@"btn_normal.png"];
    UIImage *img2 = [UIImage imageForResBundle:@"btn_pressed.png"];
    
    //设置正常状态下的图片
    [btnCustom setImage:img1 forState:UIControlStateNormal];
    //设置按下状态下的图片
    [btnCustom setImage:img2 forState:UIControlStateHighlighted];
    
    //向按钮添加事件函数
    //当满足UIControlEventTouchUpInside时，调用onClickButton函数
    [btnCustom addTarget:self action:@selector(onClickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    //添加到视图并显示到屏幕
    [self.view addSubview:btnCustom];
}


/**
 向按钮添加点击事件

 @param uiButton 调用该函数的按钮本身
 */
- (void) onClickButton:(UIButton *)uiButton
{
    if (uiButton.tag == 1001)
    {
        NSLog(@"点击登录按钮啦");
    }
    else if (uiButton.tag == 1002)
    {
        NSLog(@"点击自定义按钮啦");
    }
}


@end
