//
//  LottieAnimationViewController.swift
//  SegundoParcialWebServices
//
//  Created by Noel Aguilera Terrazas on 26/03/20.
//  Copyright © 2020 Daniel Aguilera. All rights reserved.
//

import UIKit
import Lottie

class LottieAnimationViewController: UIViewController {
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()
    }
    
    func startAnimation() {
        animationView.animation = Animation.named("gamesbutton")
        animationView.loopMode = .loop
        animationView.play()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
