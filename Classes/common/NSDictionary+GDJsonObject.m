// Copyright 2013 Goodow.com. All Rights Reserved.
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
//  NSDictionary+GDJsonObject.m
//  GDJson
//
//  Created by Larry Tin.
//

#import "com/goodow/realtime/json/JsonObject.h"
#import "NSDictionary+GDJsonObject.h"
#import "com/goodow/realtime/json/Json.h"
#import "java/lang/UnsupportedOperationException.h"
#import "NSArray+GDJsonArray.h"

@implementation NSDictionary (GDJsonObject)

#pragma mark - JsonElement
- (BOOL)isArray {
  return NO;
}
- (BOOL)isObject {
  return YES;
}
- (NSString *)toJsonString {
  return [ComGoodowRealtimeJsonJson toJsonString:self];
}
-(NSString *)description {
  return [self toJsonString];
}
-(id)copy__ {
  return [ComGoodowRealtimeJsonJson copy:self];
}

#pragma mark - JsonObject
- (id)getWithNSString:(NSString *)key {
  id value = [self objectForKey:key];
  return value == [NSNull null] ? nil : value;
}
- (id<ComGoodowRealtimeJsonJsonArray>)getArrayWithNSString:(NSString *)key {
  return [self getWithNSString:key];
}
- (BOOL)getBooleanWithNSString:(NSString *)key {
  return [((NSNumber *)[self getWithNSString:key]) boolValue];
}
- (double)getNumberWithNSString:(NSString *)key {
  return [((NSNumber *)[self getWithNSString:key]) doubleValue];
}
- (id<ComGoodowRealtimeJsonJsonObject>)getObjectWithNSString:(NSString *)key {
  return [self getWithNSString:key];
}
- (NSString *)getStringWithNSString:(NSString *)key {
  return [self getWithNSString:key];
}
-(int)size {
  return (int) [self count];
}

- (ComGoodowRealtimeJsonJsonTypeEnum *)getTypeWithNSString:(NSString *)key {
  return [ComGoodowRealtimeJsonJson getType:[self getWithNSString:key]];
}

- (BOOL)hasWithNSString:(NSString *)key {
  return [self objectForKey:key] != nil;
}
- (id<ComGoodowRealtimeJsonJsonArray>)keys {
  return [self allKeys];
}
- (void)forEachWithComGoodowRealtimeJsonJsonObject_MapIterator:(id<ComGoodowRealtimeJsonJsonObject_MapIterator>)handler {
  for (NSString *key in self) {
    [handler callWithNSString:key withId:self[key]];
  }
}

#pragma mark - Mutable JsonObject
- (id<ComGoodowRealtimeJsonJsonObject>)setWithNSString:(NSString *)key withBoolean:(BOOL)bool_ {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (id<ComGoodowRealtimeJsonJsonObject>)setWithNSString:(NSString *)key withDouble:(double)number {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (id<ComGoodowRealtimeJsonJsonObject>)setWithNSString:(NSString *)key withId:(id)value {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (id<ComGoodowRealtimeJsonJsonObject>)clear {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (id)removeWithNSString:(NSString *)key {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

@end
