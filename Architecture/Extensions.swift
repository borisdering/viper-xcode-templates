//
//  Extensions.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/8/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

import UIKit

// MARK: Extensions

public extension ModuleProtocol {
    
    func present(from controller: UIViewController?, style: UIModalTransitionStyle, completion: CodeBlock? = nil) {
        self.viewController.modalTransitionStyle = style
        controller?.present(viewController, animated: true, completion: completion)
    }
    
    func present(from controller: UIViewController?, completion: CodeBlock? = nil) {
        
        self.viewController.modalPresentationStyle = .fullScreen
        controller?.present(self.viewController, animated: true, completion: completion)
    }
    
    func push(from controller: UINavigationController?) {
        controller?.pushViewController(viewController, animated: true)
    }
}

public extension PresenterRouterProtocol where Self: RouterProtocol {
    
    func present(_ view: UIViewController, completion: CodeBlock?) {
        switch viewController {
            case nil:
                completion?()
            case let controller?:
                controller.present(view, animated: true, completion: completion)
        }
    }
    
    func dismiss(completion: CodeBlock? = nil) {
        switch viewController {
            case nil:
                completion?()
            case let controller?:
                controller.view?.endEditing(true)
                controller.dismiss(animated: true, completion: completion)
        }
    }
    
    @discardableResult
    func pop() -> UIViewController? {
        return viewController?.navigationController?.popViewController(animated: true)
    }
}

// Allows these functions to be optional
public extension ViewPresenterProtocol {
    func viewWillApear() {}
    func viewDidApear() {}
    func viewWillDisapear() {}
    func viewDidDisapear() {}
}
