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

#ifndef _ComGoodowRealtimeJsonJson_H_
#define _ComGoodowRealtimeJsonJson_H_

#import "com/goodow/realtime/json/JsonArray.h"
#import "com/goodow/realtime/json/JsonObject.h"
#import "com/goodow/realtime/json/JsonType.h"

@interface ComGoodowRealtimeJsonJson : NSObject {
}

+ (id<ComGoodowRealtimeJsonJsonArray>)createArray;
+ (id<ComGoodowRealtimeJsonJsonObject>)createObject;
+ (id)parseWithNSString:(NSString *)jsonString;

+ (NSString *)toJsonString:(id)element;
+ (ComGoodowRealtimeJsonJsonTypeEnum *)getType:(id)value;
+ (id)copy:(id)element;

@end

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT id<ComGoodowRealtimeJsonJsonArray> ComGoodowRealtimeJsonJson_createArray();

FOUNDATION_EXPORT id<ComGoodowRealtimeJsonJsonObject> ComGoodowRealtimeJsonJson_createObject();

FOUNDATION_EXPORT id ComGoodowRealtimeJsonJson_parseWithNSString_(NSString *jsonString);

CF_EXTERN_C_END

#endif // _ComGoodowRealtimeJsonJson_H_