//
//  NetworkOperationFactoryProtocol.h
//  _BusinessApp_
//
//  Created by Gytenis Mikulenas on 26/08/15.
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

#import "NetworkOperationProtocol.h"

@protocol AppConfigObject;
@protocol UserManagerProtocol;

@protocol NetworkOperationFactoryProtocol <NSObject>

#pragma mark - Public -

#pragma mark Configuration

@property (nonatomic, strong) id <AppConfigObject> appConfig;
@property (nonatomic, weak) id <UserManagerProtocol> userManager;

- (instancetype)initWithAppConfig:(AppConfigObject *)appConfig;

#pragma mark Network operations

// Image list
- (id<NetworkOperationProtocol>)imageListNetworkOperationWithParams:(id)params;

// User related
- (id<NetworkOperationProtocol>)userLoginNetworkOperationWithParams:(id)params;
- (id<NetworkOperationProtocol>)userSignUpNetworkOperationWithParams:(id)params;
- (id<NetworkOperationProtocol>)userProfileNetworkOperationWithParams:(id)params;
- (id<NetworkOperationProtocol>)userResetPasswordNetworkOperationWithParams:(id)params;

// Legal
- (id<NetworkOperationProtocol>)termsConditionsNetworkOperationWithParams:(id)params;
- (id<NetworkOperationProtocol>)privacyPolicyNetworkOperationWithParams:(id)params;

@end
