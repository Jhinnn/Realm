//
//  Article.m
//  Realm
//
//  Created by pengpeng on 16/5/16.
//  Copyright © 2016年 pengpeng. All rights reserved.
//

#import "Article.h"

@implementation Article

+ (NSString *)primaryKey {
    return @"num";
}

+ (NSArray *)indexedProperties {
    return @[@"title"];
}

//默认属性值
+ (NSDictionary *)defaultPropertyValues {
    return @{@"author":@"zengjing"};
}

//忽略的字段
+ (NSArray *)ignoredProperties {
    return @[@"weight"];
}


@end
