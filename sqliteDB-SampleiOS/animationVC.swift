//
//  animationVC.swift
//  sqliteDB-SampleiOS
//
//  Created by supakit on 8/12/2564 BE.
//

import UIKit
import Lottie

class animationVC: UIViewController {
    let animationview = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        

       setupAnimation()
    }
    
    private func setupAnimation() {
        animationview.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationview.center = view.center
        animationview.backgroundColor = .white
        animationview.animation = Animation.named("shopp")
        animationview.contentMode = .scaleAspectFill
        animationview.loopMode = .loop
        animationview.play()
        view.addSubview(animationview)
    }
    

}
