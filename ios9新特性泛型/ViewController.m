//
//  ViewController.m
//  ios9新特性泛型
//
//  Created by im on 16/7/19.
//  Copyright © 2016年 im. All rights reserved.
//

#import "ViewController.h"
/** 
    泛型：限制类型
    为什么要推出泛型？迎合 Swift
    泛型的好处： 1.限制类型 2. 提高代码规划，一看就知道集合中是什么东西
    泛类型用法：类型<要限制的类型>
    泛型声明： 在声明类的时候，在类的后面<泛型名称>
 
    在指定泛型类型后：输入内容与指定类型不同时泛型仅仅是报警告
    泛型的好处：1. 从数组中取出来，可以使用点语法
              2. 给数组添加元素有提示
    
    泛型在开发中使用场景： 1.用于限制集合的类型
    
    为什么要使用泛型？ 必须要先声明泛型？ => 如何声明泛型
 
    什么时候使用泛型 ？ 在声明类的时候，不确定某些属性或者方法类型，在使用这个类的时候，就可以采用泛型
 
    自定义泛型： 自定义 Person,会一些编程语言（iOS，Java）,不确定这个人会什么，在使用 Person才知道这个 Person 会什么语言
 */

#import "Person.h"
#import "Java.h"
#import "iOS.h"
@interface ViewController ()
/** 通过泛型创建一个对象 */
@property ( strong,nonatomic)  NSMutableArray<NSString *> * arr ;


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_arr addObject:@"789"];
    NSInteger length =  _arr[0].length;
    
    Java * java = [[Java alloc]init];
    
    iOS * ios = [[iOS alloc]init];
    
    Person<iOS> *  p = [[Person alloc]init];
    p.language = ios;
    
    Person<Java> * p1 = [Person new];
    p1.language = java;
    
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
