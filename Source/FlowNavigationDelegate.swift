//
//  FlowNavigationDelegate.swift
//  NavigationControllerContainer
//
//  Created by Kikacheishvili Bohdan on 17.02.2025.
//

import UIKit

public class FlowNavigationDelegate<Presenter: NavigationControllerPresenter>: NSObject, UINavigationControllerDelegate {
    
    // MARK: -
    // MARK: Variables
    
    let presenter: Presenter
    
    // MARK: -
    // MARK: Initializations and Deallocations
    
    public init(presenter: Presenter) {
        self.presenter = presenter
        
        super.init()
    }
    
    // MARK: -
    // MARK: UINavigationControllerDelegate
    
    public func navigationController(
        _ navigationController: UINavigationController,
        animationControllerFor operation: UINavigationController.Operation,
        from fromVC: UIViewController,
        to toVC: UIViewController
    ) -> UIViewControllerAnimatedTransitioning? {
        let controllerAnimatedTransitioning = self.presenter.controllerAnimatedTransitioning
        
        return controllerAnimatedTransitioning
    }
}
