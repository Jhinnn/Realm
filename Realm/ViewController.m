//
//  ViewController.m
//  Realm
//
//  Created by pengpeng on 16/5/16.
//  Copyright © 2016年 pengpeng. All rights reserved.
//

#import "ViewController.h"
#import "Article.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"%@",path);
    NSString *realmPath = [path stringByAppendingPathComponent:@"devzeng.realm"];
    RLMRealm *realm = [RLMRealm realmWithURL:[NSURL URLWithString:realmPath]];
    
       /*
    
    Article *article = [[Article alloc] init];
    article.num      = @"1";
    article.title    = @"iOS开发中集成Realm";
    article.link     = @"http://blog.devzeng.com/blog/ios-reveal-integrating.html";
    article.tag      = @"iOS";

 
    [realm beginWriteTransaction];
    [realm addObject:article];
    [realm commitWriteTransaction];
    
    */
//    RLMResults *results = [Article objectsWhere:@"tag = 'iOS'"];
    RLMResults *results = [Article allObjectsInRealm:realm];
    Article *art = [results firstObject];
    NSLog(@"%@",art.title);
    
    
//    RLMResults *articles = [Article objectsWhere:@" author = 'zengjing' "];
    
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"num = '%d'",1];
    RLMResults *resultArray=[Article objectsWithPredicate:predicate];
    
//    [realm transactionWithBlock:^{
//        [realm addObject:articles];
//    }];
    if (resultArray.count != 0) {
        Article *article = [resultArray objectAtIndex:0];
        NSLog(@"%@",article.title);
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
   NSString *phone = @"027-54534233";
    

    
    
}





@end
