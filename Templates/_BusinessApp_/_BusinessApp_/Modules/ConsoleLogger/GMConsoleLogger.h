//
//  GMConsoleLogger.h
//  _BusinessApp_
//
//  Created by Gytenis Mikulėnas on 5/16/14.
//  Copyright (c) 2015 Gytenis Mikulėnas
//  https://github.com/GitTennis/SuccessFramework
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE. All rights reserved.
//

#import <Foundation/Foundation.h>

// Device info object

@interface DeviceInfo : NSObject

//@property (nonatomic, strong) NSString *uniqueIdentifier;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *localizedModel;
@property (nonatomic, strong) NSString *systemName;
@property (nonatomic, strong) NSString *systemVersion;
@property (nonatomic, strong) NSString *locale;
@property (nonatomic, strong) NSString *timeZone;

@end

@class GMConsoleLogger;

// Represents interface for logger observers
@protocol GMConsoleLoggerDelegate <NSObject>

- (void)logger:(GMConsoleLogger *)logger didReceiveLogMessage:(NSString *)logMessage;

@end

// Represents custom logger which grabs all NSLog traffic
@interface GMConsoleLogger : NSObject

@property (nonatomic, readonly) NSMutableString *log;
@property (nonatomic, assign) id<GMConsoleLoggerDelegate> delegate;

// Singleton:
+ (GMConsoleLogger *)sharedInstance;

// Clear log
- (void)clearLog;

- (DeviceInfo *)deviceInfo;

// NSLog hook:
void customLogger(NSString *format, ...);

@end