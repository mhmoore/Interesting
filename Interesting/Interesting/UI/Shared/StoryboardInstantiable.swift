//
//  StoryboardInstantiable.swift
//  Interesting
//
//  Created by Michael Moore on 1/27/21.
//

import UIKit

protocol StoryboardInstantiable {
    static var storyboardName: String { get }
    static var viewControllerIdentifier: String { get }
}

extension StoryboardInstantiable where Self: UIViewController {
    static var storyboardName: String { String(describing: self) }
    static var viewControllerIdentifier: String { String(describing: self) }
    
    static func instantiateFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier) as? Self else {
            if let initialViewController = storyboard.instantiateInitialViewController() as? Self {
                return initialViewController
            } else {
                fatalError("Failed to instantiate view controller from storyboard")
            }
        }
        return viewController
    }
}
