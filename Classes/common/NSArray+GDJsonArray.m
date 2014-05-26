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
//  NSArray+GDJsonArray.m
//  GDJson
//
//  Created by Larry Tin.
//

#import "com/goodow/realtime/json/JsonArray.h"
#import "NSArray+GDJsonArray.h"
#import "com/goodow/realtime/json/Json.h"
#import "java/lang/UnsupportedOperationException.h"

@implementation NSArray (GDJsonArray)

#pragma mark - JsonElement
- (BOOL)isArray {
  return YES;
}
- (BOOL)isObject {
  return NO;
}
- (NSString *)toJsonString {
  return [ComGoodowRealtimeJsonJson toJsonString:self];
}
-(NSString *)description {
  return [self toJsonString];
}
-(id<ComGoodowRealtimeJsonJsonArray>)copy__ {
  return [ComGoodowRealtimeJsonJson copy:self];
}

#pragma mark - JsonArray
- (id)getWithInt:(int)index {
  id value = [self objectAtIndex:index];
  return value == [NSNull null] ? nil : value;
}
- (id<ComGoodowRealtimeJsonJsonArray>)getArrayWithInt:(int)index {
  return [self getWithInt:index];
}
- (BOOL)getBooleanWithInt:(int)index {
  return [((NSNumber *)[self getWithInt:index]) boolValue];
}
- (double)getNumberWithInt:(int)index {
  return [((NSNumber *)[self getWithInt:index]) doubleValue];
}
- (id<ComGoodowRealtimeJsonJsonObject>)getObjectWithInt:(int)index {
  return [self getWithInt:index];
}
- (NSString *)getStringWithInt:(int)index {
  return [self getWithInt:index];
}
- (int)length {
  return (int) [self count];
}

- (ComGoodowRealtimeJsonJsonTypeEnum *)getTypeWithInt:(int)index {
  return [ComGoodowRealtimeJsonJson getType:[self getWithInt:index]];
}

- (int)indexOfWithId:(id)value {
  NSUInteger idx = [self indexOfObject:value];
  return idx == NSNotFound ? -1 : (int)idx;
}
- (void)forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:(id<ComGoodowRealtimeJsonJsonArray_ListIterator>)handler {
  int idx = 0;
  for (id value in self) {
    [handler callWithInt:idx++ withId:value];
  }
}

#pragma mark - Mutable JsonArray
- (id<ComGoodowRealtimeJsonJsonArray>)insertWithInt:(int)index withId:(id)value {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (id<ComGoodowRealtimeJsonJsonArray>)pushWithBoolean:(BOOL)bool_ {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (id<ComGoodowRealtimeJsonJsonArray>)pushWithDouble:(double)number {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (id<ComGoodowRealtimeJsonJsonArray>)pushWithId:(id)value {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (id<ComGoodowRealtimeJsonJsonArray>)clear {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (id)removeWithInt:(int)index {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
- (BOOL)removeValueWithId:(id)value {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}
@end
