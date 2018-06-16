//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Mohammad Sami on 6/16/18.
//  Copyright © 2018 MS. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        setupButtons();
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder);
        setupButtons();
    }
    
    // MARK: Button ActionÇ
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
    // MARK: Private Methods
    private func setupButtons() {
        
        // Create the button
        let button = UIButton();
        button.backgroundColor = UIColor.red
        
        // Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true;
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true;
        
        // Setup the button action
        button.addTarget(self, action: #selector(RatingControl.ratÇingButtonTapped(button:)), for: .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button);
    }

}
