//
//  RatingControl.swift
//  MyFavoritePlaces
//
//  Created by Paul Max on 4/25/20.
//  Copyright © 2020 PaulmaX. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    private var ratingButtons = [UIButton]()
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    var rating = 0

    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: - Private Method Setup Buttons
    private func setupButtons() {
        
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        for _ in 0..<starCount {
            // Button Creating
            let button = UIButton()
            button.backgroundColor = .red
            // Constraints Adding
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            button.addTarget(self, action: #selector(ratingButtonTapped(button:)), for: .touchUpInside)
            // Add button to the stack
            addArrangedSubview(button)
            // Add the new button at the rating button array
            ratingButtons.append(button)
        }
    }
    
    //MARK: - Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed!")
    }
}
