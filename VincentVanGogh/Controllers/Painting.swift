//
//  Painting.swift
//  VincentVanGogh
//
//  Created by Izabela on 28/07/2018.
//  Copyright © 2018 Izabela. All rights reserved.
//

import UIKit

class Painting: UIViewController {

    @IBOutlet weak var paintingInfoView: UIStackView!
    @IBOutlet weak var paintingImageView: UIStackView!
    @IBOutlet weak var paintingDescriptionView: UIStackView!
    
    @IBOutlet weak var paintingName: UILabel!
    @IBOutlet weak var paintingImage: UIImageView!
    @IBOutlet weak var paintingDescription: UITextView!
    
    var sentData:String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func setupLayout() {
        
        view.addSubview(paintingInfoView)
        paintingInfoView.translatesAutoresizingMaskIntoConstraints = false
        paintingInfoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
        paintingInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        paintingInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        paintingInfoView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10).isActive = true
        
        paintingImageView.translatesAutoresizingMaskIntoConstraints = false
        paintingImageView.topAnchor.constraint(equalTo: paintingInfoView.bottomAnchor, constant: 10).isActive = true
        paintingImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 5).isActive = true
        paintingImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -5).isActive = true
        paintingImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.60).isActive = true
        
        paintingDescriptionView.translatesAutoresizingMaskIntoConstraints = false
        paintingDescriptionView.topAnchor.constraint(equalTo: paintingImageView.bottomAnchor, constant: 5).isActive = true
        paintingDescriptionView.leadingAnchor.constraint(equalTo: paintingImageView.leadingAnchor,constant: 5).isActive = true
        paintingDescriptionView.trailingAnchor.constraint(equalTo: paintingImageView.trailingAnchor,constant: -5).isActive = true
        paintingDescriptionView.heightAnchor.constraint(equalTo: paintingImageView.heightAnchor, multiplier: 0.31).isActive = true
        
        paintingImageView.addSubview(paintingImage)
        paintingImage.translatesAutoresizingMaskIntoConstraints = false
        paintingImage.topAnchor.constraint(equalTo: paintingImageView.topAnchor, constant: 5).isActive = true
        paintingImage.leadingAnchor.constraint(equalTo: paintingImageView.leadingAnchor,constant: 5).isActive = true
        paintingImage.trailingAnchor.constraint(equalTo: paintingImageView.trailingAnchor,constant: -5).isActive = true
        paintingImage.heightAnchor.constraint(equalTo: paintingImageView.heightAnchor, multiplier: 1).isActive = true
        
        paintingDescriptionView.addSubview(paintingDescription)
        paintingDescription.translatesAutoresizingMaskIntoConstraints = false
        paintingDescription.topAnchor.constraint(equalTo: paintingDescriptionView.topAnchor,constant: 10).isActive = true
        paintingDescription.leadingAnchor.constraint(equalTo: paintingDescriptionView.leadingAnchor).isActive = true
        paintingDescription.trailingAnchor.constraint(equalTo: paintingDescriptionView.trailingAnchor).isActive = true
        paintingDescription.heightAnchor.constraint(equalTo: paintingDescriptionView.heightAnchor, multiplier: 1).isActive = true
        

        paintingName.text = sentData
        paintingName.textColor = UIColor.white
        paintingName.backgroundColor = UIColor.black
        paintingName.textAlignment = .center
        paintingName.font = UIFont(name: "AvenirNext-Medium",size: 20)
        
        paintingImage.image = UIImage(named: sentData)
        
        paintingDescription.font = UIFont(name: "AvenirNext-Regular",size: 16)
        paintingDescription.isEditable = false
        paintingDescription.isSelectable = false
        paintingDescription.layer.backgroundColor = view.backgroundColor?.cgColor

        
    }
    
}
