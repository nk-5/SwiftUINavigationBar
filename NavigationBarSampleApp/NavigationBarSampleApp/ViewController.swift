//
//  ViewController.swift
//  NavigationBarSampleApp
//
//  Created by Keigo Nakagawa on 2023/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .yellow
    }

    @IBAction func onTapTransition(_ sender: Any) {
        let firstView = FirstView()
        let vc = FirstViewHostingController(rootView: firstView)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

