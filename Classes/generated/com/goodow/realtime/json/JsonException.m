//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-json/src/main/java/com/goodow/realtime/json/JsonException.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/json/JsonException.h"

@implementation GDJsonException

+ (long long int)serialVersionUID {
  return GDJsonException_serialVersionUID;
}

- (id)init {
  return [super init];
}

- (id)initWithNSString:(NSString *)message {
  return [super initWithNSString:message];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "init", "JsonException", NULL, 0x1, NULL },
    { "initWithNSString:", "JsonException", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = GDJsonException_serialVersionUID },
  };
  static J2ObjcClassInfo _GDJsonException = { "JsonException", "com.goodow.realtime.json", NULL, 0x1, 2, methods, 1, fields, 0, NULL};
  return &_GDJsonException;
}

@end
