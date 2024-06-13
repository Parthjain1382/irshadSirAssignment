//
//  ViewController.swift
//  ConstraintsLayout
//
//  Created by E5000846 on 06/06/24.
//

import UIKit

class ViewController: UIViewController {

    private let myView : UIView = {
            let myView = UIView()
            myView.translatesAutoresizingMaskIntoConstraints = false
            myView.backgroundColor = .orange
            return myView
    }()
    private let myView2 : UIView = {
            let myView = UIView()
            myView.translatesAutoresizingMaskIntoConstraints = false
            myView.backgroundColor = .green
            return myView
    }()
    
    private let myView3  : UIView = {
            let myView = UIView()
            myView.translatesAutoresizingMaskIntoConstraints = false
            myView.backgroundColor = .blue
            return myView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        view.addSubview(myView2)
        view.addSubview(myView3)
        addConstraint()
    }

    private func addConstraint(){
        //  Two thing to remember before using constraints adding and activating
        var constraints = [NSLayoutConstraint]()

        // Constraints for myView
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(myView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.333))

        // Constraints for myView2
        constraints.append(myView2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView2.topAnchor.constraint(equalTo: myView.bottomAnchor))
        constraints.append(myView2.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.333))

        // Constraints for myView3
        constraints.append(myView3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView3.topAnchor.constraint(equalTo: myView2.bottomAnchor))
        constraints.append(myView3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))

        // Activate constraints
        NSLayoutConstraint.activate(constraints)

        NSLayoutConstraint.activate(constraints)
    }

}

