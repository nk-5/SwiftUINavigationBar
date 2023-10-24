//
//  SecondView.swift
//  NavigationBarSampleApp
//
//  Created by Keigo Nakagawa on 2023/10/24.
//

import SwiftUI

struct SecondView: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundImage = UIImage()
        appearance.shadowImage = UIImage()

        let navigationController = UINavigationController.foregroundNavigationController()
        navigationController?.extendedLayoutIncludesOpaqueBars = true
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    var body: some View {
        ZStack {
//            Color.clear
            Color.blue

            ScrollView {
                VStack {
                    Spacer()
                    Text("Second View")
                    Spacer()
                }
            }
        }
        .navigationTitle("second view")
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SecondView()
}

extension UINavigationController {
//    static func foregroundNavigationController(_on window: UIWindow? = UIApplication.shared.windows.first) -> UINavigationController? {
    static func foregroundNavigationController() -> UINavigationController? {
        let scenes = UIApplication.shared.connectedScenes
        let windowScenes = scenes.first as? UIWindowScene
        let rootViewController = windowScenes?.keyWindow?.rootViewController

        if let foregroundNavigationController = rootViewController?.foregroundPresentedViewController() as? UINavigationController {
            return foregroundNavigationController
        }
        if let tabBarController = rootViewController as? UITabBarController,
           let foregroundNavigationController = tabBarController.selectedViewController as? UINavigationController {
            return foregroundNavigationController
        }
        return rootViewController as? UINavigationController
    }
}

extension UIViewController {
    func foregroundPresentedViewController() -> UIViewController? {
        if let presentedViewController, !presentedViewController.isBeingDismissed {
            return presentedViewController.foregroundPresentedViewController()
        }
        return self
    }
}
