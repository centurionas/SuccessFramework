//
//  SettingsManagerProtocol.h
//  _BusinessApp_
//
//  Created by Gytenis Mikulėnas on 4/16/14.
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

#import "AppConfigObject.h"

@protocol SettingsManagerProtocol

// First time app launch
@property (nonatomic) BOOL isFirstTimeAppLaunch;

// User
@property (nonatomic, strong) NSDictionary *loggedInUser;

// Languages

- (NSString *)language;
- (NSString *)languageFullName;

- (void)setLanguageEnglish;
- (void)setLanguageGerman;

// Shouldn't be called directly in order to avoid hardcoding @"en", @"de" strings in other code places
//- (void)setLanguage:(NSString *)language;

@end