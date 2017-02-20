//
//  Person.h
//  Realm
//
//  Created by pengpeng on 16/5/16.
//  Copyright © 2016年 pengpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"
@interface Person : RLMObject

@property NSString *name;
@property NSInteger age;



@end

RLM_ARRAY_TYPE(Person)
