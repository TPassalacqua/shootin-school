//
//  SplashViewController.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 11/18/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {


    
    
    
    
    
    func showLoadingScreen(){
        loadingScreen.bounds.size.width = view.bounds.width + 1
        loadingScreen.bounds.size.height = view.bounds.height + 1
        loadingScreen.center = view.center
        view.addSubview(loadingScreen)
        UIView.animate(withDuration: 2, delay: 0.5, options: [], animations: {
            self.loadingScreen.alpha = 1
        }) { (success) in
            UIView.animate(withDuration: 1, delay: 0.5, options: [], animations: {
                self.loadingScreen.transform = CGAffineTransform(translationX: 0, y: -900)
                self.loadingScreen.alpha = 0
            }, completion: { (success) in
                    if !UserDefaults.standard.bool(forKey: "isLoggedAtActiveCampaign") {
                        if Connectivity.isConnectedToInternet() {
                            self.nameMailPrompt()
                        }
                        else{
                            self.noInternetConnectionAllert()
                        }
                    }
                
            })
        }
    }


}
