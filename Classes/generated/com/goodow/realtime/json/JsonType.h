//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-json/src/main/java/com/goodow/realtime/json/JsonType.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeJsonJsonType_H_
#define _ComGoodowRealtimeJsonJsonType_H_

#import "JreEmulation.h"
#include "java/lang/Enum.h"

typedef enum {
  ComGoodowRealtimeJsonJsonType_OBJECT = 0,
  ComGoodowRealtimeJsonJsonType_ARRAY = 1,
  ComGoodowRealtimeJsonJsonType_STRING = 2,
  ComGoodowRealtimeJsonJsonType_NUMBER = 3,
  ComGoodowRealtimeJsonJsonType_BOOLEAN = 4,
  ComGoodowRealtimeJsonJsonType_NULL = 5,
} ComGoodowRealtimeJsonJsonType;

@interface ComGoodowRealtimeJsonJsonTypeEnum : JavaLangEnum < NSCopying > {
}
+ (IOSObjectArray *)values;
+ (ComGoodowRealtimeJsonJsonTypeEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;

- (id)initWithNSString:(NSString *)__name withInt:(int)__ordinal;
@end

FOUNDATION_EXPORT BOOL ComGoodowRealtimeJsonJsonTypeEnum_initialized;
J2OBJC_STATIC_INIT(ComGoodowRealtimeJsonJsonTypeEnum)

FOUNDATION_EXPORT ComGoodowRealtimeJsonJsonTypeEnum *ComGoodowRealtimeJsonJsonTypeEnum_values[];

#define ComGoodowRealtimeJsonJsonTypeEnum_OBJECT ComGoodowRealtimeJsonJsonTypeEnum_values[ComGoodowRealtimeJsonJsonType_OBJECT]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeJsonJsonTypeEnum, OBJECT, ComGoodowRealtimeJsonJsonTypeEnum *)

#define ComGoodowRealtimeJsonJsonTypeEnum_ARRAY ComGoodowRealtimeJsonJsonTypeEnum_values[ComGoodowRealtimeJsonJsonType_ARRAY]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeJsonJsonTypeEnum, ARRAY, ComGoodowRealtimeJsonJsonTypeEnum *)

#define ComGoodowRealtimeJsonJsonTypeEnum_STRING ComGoodowRealtimeJsonJsonTypeEnum_values[ComGoodowRealtimeJsonJsonType_STRING]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeJsonJsonTypeEnum, STRING, ComGoodowRealtimeJsonJsonTypeEnum *)

#define ComGoodowRealtimeJsonJsonTypeEnum_NUMBER ComGoodowRealtimeJsonJsonTypeEnum_values[ComGoodowRealtimeJsonJsonType_NUMBER]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeJsonJsonTypeEnum, NUMBER, ComGoodowRealtimeJsonJsonTypeEnum *)

#define ComGoodowRealtimeJsonJsonTypeEnum_BOOLEAN ComGoodowRealtimeJsonJsonTypeEnum_values[ComGoodowRealtimeJsonJsonType_BOOLEAN]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeJsonJsonTypeEnum, BOOLEAN, ComGoodowRealtimeJsonJsonTypeEnum *)

#define ComGoodowRealtimeJsonJsonTypeEnum_NULL_ ComGoodowRealtimeJsonJsonTypeEnum_values[ComGoodowRealtimeJsonJsonType_NULL]
J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeJsonJsonTypeEnum, NULL_, ComGoodowRealtimeJsonJsonTypeEnum *)

#endif // _ComGoodowRealtimeJsonJsonType_H_
