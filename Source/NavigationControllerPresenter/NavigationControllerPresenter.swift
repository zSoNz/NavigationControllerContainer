//
//  NavigationControllerPresenter.swift
//  NavigationControllerContainer
//
//  Created by Kikacheishvili Bohdan on 17.02.2025.
//

import UIKit

open protocol NavigationControllerPresenter {
    
    var controllerAnimatedTransitioning: NavigationCoordinatorAnimatorType? { get }
}

open protocol NavigationCoordinatorAnimatorType: UIViewControllerAnimatedTransitioning {
    
}
