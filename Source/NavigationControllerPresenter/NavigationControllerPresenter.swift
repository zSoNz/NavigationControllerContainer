//
//  NavigationControllerPresenter.swift
//  NavigationControllerContainer
//
//  Created by Kikacheishvili Bohdan on 17.02.2025.
//

import UIKit

public protocol NavigationControllerPresenter {
    
    var controllerAnimatedTransitioning: NavigationCoordinatorAnimatorType? { get }
}

public protocol NavigationCoordinatorAnimatorType: UIViewControllerAnimatedTransitioning {
    
}
