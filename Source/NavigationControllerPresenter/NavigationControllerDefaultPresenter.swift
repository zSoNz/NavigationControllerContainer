//
//  NavigationControllerDefaultPresenter.swift
//  NavigationControllerContainer
//
//  Created by Kikacheishvili Bohdan on 17.02.2025.
//

import UIKit

public class NavigationControllerDefaultPresenter: NavigationControllerPresenter {
    
    public static var `default`: NavigationControllerDefaultPresenter {
        return NavigationControllerDefaultPresenter()
    }
    
    // MARK: -
    // MARK: Variables
    
    public let controllerAnimatedTransitioning: NavigationCoordinatorAnimatorType?
    
    // MARK: -
    // MARK: Initializations and Deallocations
    
    public init() {
        self.controllerAnimatedTransitioning = nil
    }
}
