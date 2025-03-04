//
//  ViewControllerFactoryProtocol.swift
//  _BusinessAppSwift_
//
//  Created by Gytenis Mikulenas on 06/09/16.
//  Copyright © 2016 Gytenis Mikulėnas 
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

import Foundation

protocol ViewControllerFactoryProtocol {
    
    init(managerFactory: ManagerFactoryProtocol)

    // Intro
    func launchViewController(context: Any?)->LaunchViewController
    func walkthroughViewController(context: Any?)->WalkthroughViewController
    
    // Content
    func homeViewController(context: Any?)->HomeViewController
    func photoDetailsViewController(context: Any?)->PhotoDetailsViewController
    
    // User
    func userContainerViewController(context: Any?)->UserContainerViewController
    func startViewController(context: Any?)->StartViewController
    func userLoginViewController(context: Any?)->UserLoginViewController
    func userSignUpViewController(context: Any?)->UserSignUpViewController
    func userResetPasswordViewController(context: Any?)->UserResetPasswordViewController
    func userProfileViewController(context: Any?)->UserProfileViewController
    
    // Menu
    func menuViewController(context: Any?)->MenuViewController
    
    // Legal
    func termsConditionsViewController(context: Any?)->TermsConditionsViewController
    func privacyPolicyViewController(context: Any?)->PrivacyPolicyViewController
    
    // Maps
    func mapsViewController(context: Any?)->MapsViewController
    
    // Reusable
    func countryPickerViewController(context: Any?)->CountryPickerViewController
    func contactViewController(context: Any?)->ContactViewController
    func settingsViewController(context: Any?)->SettingsViewController
    
    // Demo
    func tableViewExampleViewController(context: Any?)->TableViewExampleViewController
    func tableWithSearchViewController(context: Any?)->TableWithSearchViewController
}
