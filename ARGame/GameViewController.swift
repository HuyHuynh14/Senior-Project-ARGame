//
//  GameViewController.swift
//  ARApp
//
//  Created by Huy Huynh on 2/4/19.
//  Copyright © 2019 Huy Huynh. All rights reserved.
//

import ARKit

class GameViewController: UIViewController {
    let arView: ARSCNView = {
        let view = ARSCNView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(arView)
        arView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        arView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        arView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        arView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        arView.session.run(configuration, options: [])
        arView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
    }
    
    //The bar will be hidden if prefersStatusBarHidden is returned true
    override var prefersStatusBarHidden: Bool {
        return true;
    }
    
}
