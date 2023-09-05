//
//  SceneDelegate.swift
//  MeuPrimeiroAppiOS
//
//  Created by Joao Henrique Rodrigues on 20/08/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let navigation = UINavigationController(rootViewController: HeroesViewController())
        window?.rootViewController = navigation
        window?.makeKeyAndVisible() 
        
    }

}

