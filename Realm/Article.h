//
//  Article.h
//  Realm
//
//  Created by pengpeng on 16/5/16.
//  Copyright © 2016年 pengpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Article : RLMObject

@property NSString *num;//序号
@property NSString *title;//标题
@property NSString *link;//链接地址
@property NSString *author;//作者
@property NSString *tag;//标签分类
@property NSInteger weight;//权重

@property NSString *email; //new property


@end

RLM_ARRAY_TYPE(Article)
