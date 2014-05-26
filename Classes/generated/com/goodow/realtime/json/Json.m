// Copyright 2014 Goodow.com. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//  Created by Larry Tin.
//

#import "com/goodow/realtime/json/Json.h"
#import "NSArray+GDJsonArray.h"
#import "NSDictionary+GDJsonObject.h"
#import "com/goodow/realtime/json/JsonException.h"
#import "java/lang/IllegalArgumentException.h"
#import "IOSClass.h"

@implementation ComGoodowRealtimeJsonJson

+ (id<ComGoodowRealtimeJsonJsonArray>)createArray {
  return [[NSMutableArray alloc] init];
}

+ (id<ComGoodowRealtimeJsonJsonObject>)createObject {
  return [[NSMutableDictionary alloc] init];
}

+ (id)parseWithNSString:(NSString *)jsonString {
  NSError *error = nil;
  id json = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding]
                                            options:NSJSONReadingMutableContainers | NSJSONReadingAllowFragments
                                              error:&error];
  if (!json) {
    @throw [[ComGoodowRealtimeJsonJsonException alloc] initWithNSString:[NSString stringWithFormat:@"Can't parse JSON string: %@", error]];
  } else {
    return json;
  }
}

+ (NSString *)toJsonString:(id)element {
  NSError *error;
  NSData *jsonData = [NSJSONSerialization dataWithJSONObject:element
                                                     options:0
                                                       error:&error];
  if (!jsonData) {
    @throw [[ComGoodowRealtimeJsonJsonException alloc] initWithNSString:[NSString stringWithFormat:@"Failed to encode as JSON: %@", error]];
  } else {
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
  }
}

+ (ComGoodowRealtimeJsonJsonTypeEnum *)getType:(id)value {
  if ([value isKindOfClass:[NSDictionary class]]) {
    return ComGoodowRealtimeJsonJsonTypeEnum_get_OBJECT();
  } else if ([value isKindOfClass:[NSArray class]]) {
    return ComGoodowRealtimeJsonJsonTypeEnum_get_ARRAY();
  } else if ([value isKindOfClass:[NSString class]]) {
    return ComGoodowRealtimeJsonJsonTypeEnum_get_STRING();
  } else if ([value isKindOfClass:[NSNumber class]]) {
    return ComGoodowRealtimeJsonJsonTypeEnum_get_NUMBER();
  } else if (value == nil) {
    return ComGoodowRealtimeJsonJsonTypeEnum_get_NULL_();
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid JSON type: %@", [[nil_chk(value) getClass] getName]]];
}

+ (id)copy:(id)element {
  return [ComGoodowRealtimeJsonJson parseWithNSString:[ComGoodowRealtimeJsonJson toJsonString:element]];
}

@end