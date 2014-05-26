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
//  NSMutableArray+GDJsonArray.m
//  GDJson
//
//  Created by Larry Tin.
//

#import "NSMutableArray+GDJsonArray.h"
#import "com/goodow/realtime/json/JsonArray.h"
#import "NSArray+GDJsonArray.h"

@implementation NSMutableArray (GDJsonArray)

#pragma mark - JsonArray mutable methods
- (id<ComGoodowRealtimeJsonJsonArray>)insertWithInt:(int)index withId:(id)value {
  [self insertObject:value == nil ? [NSNull null] : value atIndex:index];
  return self;
}

- (id<ComGoodowRealtimeJsonJsonArray>)pushWithBoolean:(BOOL)bool_ {
  [self pushWithId:[NSNumber numberWithBool:bool_]];
  return self;
}
- (id<ComGoodowRealtimeJsonJsonArray>)pushWithDouble:(double)number {
  [self pushWithId:[NSNumber numberWithDouble:number]];
  return self;
}
- (id<ComGoodowRealtimeJsonJsonArray>)pushWithId:(id)value {
  [self addObject:value == nil ? [NSNull null] : value];
  return self;
}

- (id<ComGoodowRealtimeJsonJsonArray>)clear {
  [self removeAllObjects];
  return self;
}
- (id)removeWithInt:(int)index {
  id toRtn = [self getWithInt:index];
  [self removeObjectAtIndex:index];
  return toRtn;
}
- (BOOL)removeValueWithId:(id)value {
  int index = [self indexOfWithId:value];
  if (index == -1) {
    return NO;
  }
  [self removeObjectAtIndex:index];
  return YES;
}

@end
