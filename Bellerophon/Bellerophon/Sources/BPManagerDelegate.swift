//
//  BPManagerProtocol.swift
//  Bellerophon
//
//  Created by Thibault Klein on 8/22/15.
//  Copyright (c) 2015 Prolific Interactive. All rights reserved.
//

import Foundation

@objc public protocol BellerophonManagerDelegate {

    /**
    Provide Bellerophon's current status according to the status object received

    - parameter manager:    The Bellerophon manager.
    - parameter completion: The completion block.
    */
    func bellerophonStatus(_ manager: BellerophonManager, completion: (_ status: BellerophonObservable?, _ error: NSError?) -> ())

    /**
    The app is notified that a force update should occur. An alert should be displayed to redirect to the App Store.
    */
    func shouldForceUpdate()

    @objc optional
    /**
    Indicates that Bellerophon is about to appear on the screen.

    - parameter manager: The Bellerophon manager.
    */
    func bellerophonWillEngage(_ manager: BellerophonManager)

    @objc optional
    /**
    Indicates that Bellerophon is about to disappear from the screen.

    - parameter manager: The Bellerophon manager.
    */
    func bellerophonWillDisengage(_ manager: BellerophonManager)

}
