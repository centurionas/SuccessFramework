//
//  SettingsModelTests.m
//  _BusinessApp_
//
//  Created by Gytenis Mikulenas on 23/06/15.
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

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "SettingsModel.h"

@interface SettingsModelTests : XCTestCase {
    
    SettingsModel *_model;
}

@end

@implementation SettingsModelTests

- (void)setUp {
    
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    [self createModel];
}

- (void)tearDown {
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    
    _model = nil;
}

- (void)test_setLanguageEnglish_calls_settingManager {
    
    id mock = OCMProtocolMock(@protocol(SettingsManagerProtocol));
    _model.settingsManager = mock;
    
    [[mock expect] setLanguageEnglish];
    
    [_model setLanguageEnglish];
    
    [mock verify];
}

- (void)test_setLanguageGerman_calls_settingManager {
    
    id mock = OCMProtocolMock(@protocol(SettingsManagerProtocol));
    _model.settingsManager = mock;
    
    [[mock expect] setLanguageGerman];
    
    [_model setLanguageGerman];
    
    [mock verify];
}

#pragma mark - Helpers

- (void)createModel {
    
    _model = [[SettingsModel alloc] initWithUserManager:nil networkOperationFactory:nil settingsManager:nil reachabilityManager:nil analyticsManager:nil context:nil];    
}

@end
