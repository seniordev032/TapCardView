//
//  ViewController.swift
//  Example
//
//  Created by @Senior dev on 2018/03/04.
//  Copyright © 2018 @Senior dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let numberOfPage = 10
        var images: [UIImage] = []
        for index in  0..<numberOfPage {
            let imageNamed = NSString(format: "image%02d.jpg", index)
            guard let image = UIImage(named: imageNamed as String) else { return }
            images.append(image)
        }

        let frame = CGRect(x: 0, y: 0, width: 300, height: 400)
        let card = CustomSwipeCardView(frame: frame, datas: images)
        card.delegate = self
        card.center = view.center
        card.layer.cornerRadius = 8.0
        card.clipsToBounds = true
        view.addSubview(card)
    }
}

extension ViewController: CardViewDelegate {

    func tapPosition(type: SwipePosition, sender: SwipeCardView) {

        print(type)
        
        switch type {
        case .left:
            break
        case .right:
            break
        case .bottom:
            break
        }
    }
}

