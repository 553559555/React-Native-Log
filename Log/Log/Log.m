//
//  Log.m
//  Log
//
//  Created by 王壮 on 2017/6/23.
//  Copyright © 2017年 Arther. All rights reserved.
//

#import "Log.h"

#define CURRENTENVIRONMENT 6

typedef enum : NSUInteger {
    LEVEL_OFF,
    LEVEL_ERROR,
    LEVEL_WARN,
    LEVEL_INFO,
    LEVEL_DEBUG,
    LEVEL_VERBOSE,
    LEVEL_ALL
} Level;

@implementation Log

RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(v:(NSString *)content) {
    
    if (CURRENTENVIRONMENT < LEVEL_VERBOSE) {
        return;
    }
    
    NSLog(@"%@", content);
    
}


RCT_EXPORT_METHOD(d:(NSString *)content) {
    
    if (CURRENTENVIRONMENT < LEVEL_DEBUG) {
        return;
    }
    
    NSLog(@"%@", content);
    
}

RCT_EXPORT_METHOD(i:(NSString *)content) {
    
    if (CURRENTENVIRONMENT < LEVEL_INFO) {
        return;
    }
    
    NSLog(@"%@", content);
    
}

RCT_EXPORT_METHOD(w:(NSString *)content) {
    
    if (CURRENTENVIRONMENT < LEVEL_WARN) {
        return;
    }
    
    NSLog(@"%@", content);
    
}

RCT_EXPORT_METHOD(e:(NSString *)content) {
    
    if (CURRENTENVIRONMENT < LEVEL_ERROR) {
        return;
    }
    
    NSLog(@"%@", content);
    
}

@end

