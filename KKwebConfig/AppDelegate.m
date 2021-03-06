//
//  AppDelegate.m
//  KKwebConfig
//
//  Created by apple on 2019/1/20.
//  Copyright © 2019 KK. All rights reserved.
//
#import "DES3Util.h"
#import "AppDelegate.h"
#import "KKConfigModel.h"
#import "MJExtension/MJExtension.h"
#import "NSString+URLCode.h"
//加密key 这里配置和辅助lib那边一样就行 这里是加密密码，这个密码跟bs的BSPHP_PASSWORD一样，解密的时候直接用这个密码做解密的密码，把这段加密的上传到服务器的txt文件里面
#define BSPHP_PASSWORD @"gcz4xsRtvg4wdlBHTh"
#ifdef DEBUG

#define DLog( s, ... ) printf("class: <%p %s:(%d) > method: %s \n%s\n", self, [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __PRETTY_FUNCTION__, [[NSString stringWithFormat:(s), ##__VA_ARGS__] UTF8String] )

#else

#define DLog( s, ... )

#endif

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //一级菜单数组
    NSMutableArray *arr = @[].mutableCopy;
    //把编码思路转换
   /*-----------------范围设置-------------------------
    不设置 则搜索出来的全部修改
    格式 例 改开头12个 1KK12 改结尾12个 -1KK12
           改第3个到第8个   3KK8
           w改位数为8c4的
           m改包含8c4的  8c4
    near联合 no不改 ac精确
           范围组合设置 w8c4&&1-12 意思是改尾号8c4的改开头12个 条件可多个组合 &&为拼接 组合条件按顺序执行
    参考这里*/
    // ------单独的菜单--------
    
    //   ------- 这一段------------
    //配置第一个单独功能按钮
//单独功能1

   
    //------------------------菜单示例------------------------------------
    //默认提示
            KKConfigModel *button0 = [[KKConfigModel alloc] init];
            button0.title = @"2020.10.07更新";
            button0.type = KKConfigModelAction;
//            button0.searchValue = @[@"9.5",@"0.1",@"1"];
//            button0.editValue = @[@"no",@"no",@"0"];
//            button0.searchType = @[@"ac",@"near",@"near"];
//            button0.range = @[@"no",@"no",@"all"];
//            button0.valueType =@[@(DLGMemValueTypeFloat),@(DLGMemValueTypeFloat),@(DLGMemValueTypeSignedInt)];
            [arr addObject:button0];
    //这是一个二级菜单示例
     KKConfigModel *button2 = [[KKConfigModel alloc] init];
     button2.title = @"修改视距"; //标题
     button2.type = KKConfigModelOpen; //打开子菜单 类型不一样
     NSMutableArray *button2arr = @[].mutableCopy;
     button2.models=button2arr;
//这里是配置这个二级菜单下面的子功能
    //子功能1
     KKConfigModel *button2_1 = [[KKConfigModel alloc] init];
     button2_1.title = @"0.5倍"; //标题
     button2_1.type = KKConfigModelAction; //执行功能
     button2_1.searchValue = @[@"-0.007812505573392265"]; //搜索的值
     button2_1.editValue = @[@"-0.05"]; //修改的值
     button2_1.searchType = @[@"ac"];
     button2_1.range = @[@"all"];
     button2_1.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
     [button2arr addObject:button2_1];//子菜单里面的功能按钮 往这个数组里面加
     //子功能2
     KKConfigModel *button2_2 = [[KKConfigModel alloc] init];
     button2_2.title = @"2倍"; //标题
     button2_2.type = KKConfigModelAction; //执行功能
     button2_2.searchValue = @[@"-0.007812505573392265"]; //搜索的值
     button2_2.editValue = @[@"-0.1"]; //修改的值
     button2_2.searchType = @[@"ac"];
     button2_2.range = @[@"all"];
     button2_2.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
     [button2arr addObject:button2_2];//子菜单里面的功能按钮 往这个数组里面加
     //子功能2
    KKConfigModel *button2_4 = [[KKConfigModel alloc] init];
    button2_4.title = @"3倍"; //标题
    button2_4.type = KKConfigModelAction; //执行功能
    button2_4.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_4.editValue = @[@"-2"]; //修改的值
    button2_4.searchType = @[@"ac"];
    button2_4.range = @[@"all"];
    button2_4.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_4];//子菜单里面的功能按钮 往这个数组里面加
    //子功能2
     KKConfigModel *button2_3 = [[KKConfigModel alloc] init];
     button2_3.title = @"5倍"; //标题
     button2_3.type = KKConfigModelAction; //执行功能
     button2_3.searchValue = @[@"-0.007812505573392265"]; //搜索的值
     button2_3.editValue = @[@"-4"]; //修改的值
     button2_3.searchType = @[@"ac"];
     button2_3.range = @[@"all"];
     button2_3.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型 //数据类型
     [button2arr addObject:button2_3];//子菜单里面的功能按钮 往这个数组里面加
     //子功能2
     KKConfigModel *button2_5 = [[KKConfigModel alloc] init];
     button2_5.title = @"全图"; //标题
     button2_5.type = KKConfigModelAction; //执行功能
     button2_5.searchValue = @[@"-0.007812505573392265"]; //搜索的值
     button2_5.editValue = @[@"-10"]; //修改的值
     button2_5.searchType = @[@"ac"];
     button2_5.range = @[@"all"];
     button2_5.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
     [button2arr addObject:button2_5];//子菜单里面的功能按钮 往这个数组里面加
    KKConfigModel *button2_6 = [[KKConfigModel alloc] init];
    button2_6.title = @"全图"; //标题
    button2_6.type = KKConfigModelAction; //执行功能
    button2_6.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_6.editValue = @[@"-10"]; //修改的值
    button2_6.searchType = @[@"ac"];
    button2_6.range = @[@"all"];
    button2_6.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_6];//子菜单里面的功能按钮 往这个数组里面加
    KKConfigModel *button2_7 = [[KKConfigModel alloc] init];
    button2_7.title = @"全图"; //标题
    button2_7.type = KKConfigModelAction; //执行功能
    button2_7.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_7.editValue = @[@"-10"]; //修改的值
    button2_7.searchType = @[@"ac"];
    button2_7.range = @[@"all"];
    button2_7.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_7];//子菜单里面的功能按钮 往这个数组里面加
    
    KKConfigModel *button2_8 = [[KKConfigModel alloc] init];
    button2_8.title = @"全图"; //标题
    button2_8.type = KKConfigModelAction; //执行功能
    button2_8.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_8.editValue = @[@"-10"]; //修改的值
    button2_8.searchType = @[@"ac"];
    button2_8.range = @[@"all"];
    button2_8.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_8];//子菜单里面的功能按钮 往这个数组里面加
    
    KKConfigModel *button2_9 = [[KKConfigModel alloc] init];
    button2_9.title = @"全图"; //标题
    button2_9.type = KKConfigModelAction; //执行功能
    button2_9.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_9.editValue = @[@"-10"]; //修改的值
    button2_9.searchType = @[@"ac"];
    button2_9.range = @[@"all"];
    button2_9.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_9];//子菜单里面的功能按钮 往这个数组里面加
    KKConfigModel *button2_10 = [[KKConfigModel alloc] init];
    button2_10.title = @"全图"; //标题
    button2_10.type = KKConfigModelAction; //执行功能
    button2_10.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_10.editValue = @[@"-10"]; //修改的值
    button2_10.searchType = @[@"ac"];
    button2_10.range = @[@"all"];
    button2_10.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_10];//子菜单里面的功能按钮 往这个数组里面加
    
    KKConfigModel *button2_11 = [[KKConfigModel alloc] init];
    button2_11.title = @"全图"; //标题
    button2_11.type = KKConfigModelAction; //执行功能
    button2_11.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_11.editValue = @[@"-10"]; //修改的值
    button2_11.searchType = @[@"ac"];
    button2_11.range = @[@"all"];
    button2_11.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_11];//子菜单里面的功能按钮 往这个数组里面加
    
    KKConfigModel *button2_12 = [[KKConfigModel alloc] init];
    button2_12.title = @"全图"; //标题
    button2_12.type = KKConfigModelAction; //执行功能
    button2_12.searchValue = @[@"-0.007812505573392265"]; //搜索的值
    button2_12.editValue = @[@"-10"]; //修改的值
    button2_12.searchType = @[@"ac"];
    button2_12.range = @[@"all"];
    button2_12.valueType = @[@(DLGMemValueTypeDouble)]; //数据类f型
    [button2arr addObject:button2_12];//子菜单里面的功能按钮 往这个数组里面加
    
    
    
    
//     //子功能2
//     KKConfigModel *button2_20 = [[KKConfigModel alloc] init];
//     button2_20.title = @"全图"; //标题
//     button2_20.type = KKConfigModelAction; //执行功能
//     button2_20.searchValue = @[@"1097285734",@"-1048548775"]; //搜索的值
//     button2_20.editValue = @[@"140",@"-1029667599"]; //修改的值
//     button2_20.valueType = @[@(DLGMemValueTypeSignedInt),@(DLGMemValueTypeSignedInt)]; //数据类型
//     [button2arr addObject:button2_20];//子菜单里面的功能按钮 往这个数组里面加
    //子菜单结束
     [arr addObject:button2];
 //二级菜单结束

    //不用管
    NSString *KKKEY = [BSPHP_PASSWORD md5:BSPHP_PASSWORD];
    DLog(@"加密前%@",[[KKConfigModel mj_keyValuesArrayWithObjectArray:arr] mj_JSONString]);
    NSString *coed =  [DES3Util encrypt:[[KKConfigModel mj_keyValuesArrayWithObjectArray:arr] mj_JSONString] gkey:KKKEY];
    DLog(@"加密后%@",coed);
    //把加密后的字符串复制到后台文件里面 ok
    DLog(@"解密后%@",[DES3Util decrypt:coed gkey:KKKEY]);
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
