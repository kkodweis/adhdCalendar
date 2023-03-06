//
//  SceneDelegate.swift
//  adhdCalendar
//
//  Created by Kris Kodweis on 3/3/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
        
    }
    
    func createHomeNC() -> UINavigationController {
        
        let HomeVC = HomeVC()
        HomeVC.title = "Home"
        HomeVC.tabBarItem = UITabBarItem(title: HomeVC.title, image: UIImage(systemName: SFSymbols.home), tag: 0)
        
        return UINavigationController(rootViewController: HomeVC)
    }
    
    
    func createCalendarNC() -> UINavigationController {
        
        let CalendarVC = CalendarVC()
        CalendarVC.title = "Calendar"
        CalendarVC.tabBarItem = UITabBarItem(title: CalendarVC.title, image: UIImage(systemName: SFSymbols.calendar), tag: 1)
    
        
        return UINavigationController(rootViewController: CalendarVC)
    }
    
    
    func createToDoNC() -> UINavigationController {
        
        let ToDoVC = ToDoVC()
        ToDoVC.title = "To-Do"
        ToDoVC.tabBarItem = UITabBarItem(title: ToDoVC.title, image: UIImage(systemName: SFSymbols.todo), tag: 2)
        
        return UINavigationController(rootViewController: ToDoVC)
    }
    
    func createJournalNC() -> UINavigationController {
        
        let JournalVC = JournalVC()
        JournalVC.title = "Journal"
        JournalVC.tabBarItem = UITabBarItem(title: JournalVC.title, image: UIImage(systemName: SFSymbols.journal), tag: 3)
        
        return UINavigationController(rootViewController: JournalVC)
    }
    
    func createProgressNC() -> UINavigationController {
        
        let ProgressVC = ProgressVC()
        ProgressVC.title = "Progress"
        ProgressVC.tabBarItem = UITabBarItem(title: ProgressVC.title, image: UIImage(systemName: SFSymbols.progress), tag: 4)
    
        return UINavigationController(rootViewController: ProgressVC)
    }
    
    func createTabBar() -> UITabBarController {
        
        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        UITabBar.appearance().backgroundColor = .secondarySystemBackground
        tabBar.viewControllers = [createHomeNC(), createCalendarNC(),createToDoNC(), createJournalNC(), createProgressNC()]
        
        return tabBar
        
    }
    
    private func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemBlue
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

