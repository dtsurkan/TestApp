//
//  CitiesRouter.swift
//  Cities
//
//  Created by Dima Tsurkan on 9/28/17.
//  Copyright (c) 2017 Dima Tsurkan. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol CitiesRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CitiesDataPassing {
    var dataStore: CitiesDataStore? { get }
}

class CitiesRouter: NSObject, CitiesRoutingLogic, CitiesDataPassing {
    weak var viewController: CitiesViewController?
    var dataStore: CitiesDataStore?
  
    // MARK: Routing
  
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}

    // MARK: Navigation
  
    //func navigateToSomewhere(source: CitiesViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
  
    // MARK: Passing data
  
    //func passDataToSomewhere(source: CitiesDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
