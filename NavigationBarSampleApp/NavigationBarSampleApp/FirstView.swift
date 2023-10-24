//
//  FirstView.swift
//  NavigationBarSampleApp
//
//  Created by Keigo Nakagawa on 2023/10/24.
//

import SwiftUI

class FirstViewHostingController: UIHostingController<FirstView> {
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

//        let appearance = navigationController?.navigationBar.scrollEdgeAppearance?.copy()
//        appearance?.configureWithTransparentBackground()
//        appearance?.titleTextAttributes = [.foregroundColor: UIColor.white]
//        navigationItem.scrollEdgeAppearance = appearance




//        extendedLayoutIncludesOpaqueBars = true
//
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithTransparentBackground()
//        appearance.backgroundImage = UIImage()
//        appearance.shadowImage = UIImage()
//
//        navigationController?.navigationBar.standardAppearance = appearance
//        navigationController?.navigationBar.compactAppearance = appearance
//        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}

struct FirstView: View {
    var body: some View {
        ZStack {
            Color.yellow
//            Color.clear

            ScrollView {
                VStack {
                    Text("First view")

                    NavigationLink(destination: SecondView(), label: {
                        Text("transition second view")
                    })

                    Spacer()
                }
            }
        }
        .padding(.top, 88)
        .navigationTitle("first view")
//        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    FirstView()
}
