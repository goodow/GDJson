//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-json/src/main/java/com/goodow/realtime/json/JsonFactory.java
//

#ifndef _ComGoodowRealtimeJsonJsonFactory_H_
#define _ComGoodowRealtimeJsonJsonFactory_H_

@protocol ComGoodowRealtimeJsonJsonArray;
@protocol ComGoodowRealtimeJsonJsonObject;

#include "J2ObjC_header.h"

@protocol ComGoodowRealtimeJsonJsonFactory < NSObject, JavaObject >

- (id<ComGoodowRealtimeJsonJsonArray>)createArray;

- (id<ComGoodowRealtimeJsonJsonObject>)createObject;

- (id)parseWithNSString:(NSString *)jsonString;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeJsonJsonFactory)

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeJsonJsonFactory)

#endif // _ComGoodowRealtimeJsonJsonFactory_H_
