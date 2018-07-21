//
//  productDetailViewController.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/16/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//
//
import Foundation
import UIKit

class ProductDetailViewController: UIViewController {
    
    // MARK: - Properties
    var product: Product?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDescriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = UIColor.white
       
        if let productName = product?.name, let productImage = product?.image, let productDescription = product?.description, let productPrice = product?.price {

            productNameLabel.text = productName
            productImageView.image = productImage
            productPriceLabel.text = productPrice
            productDescriptionTextView.text = productDescription

        } else {
            print("Something went wrong")
        }
//        productNameLabel.text = product.name
//        productImageView.image = product.image
//        productPriceLabel.text = product.price
//        productDescriptionTextView.text = product.description
        
        
    }
    
    // MARK: - IBAction Methods
    @IBAction func buyButton(_ sender: UIButton) {
        sender.pulsate()
        
        let url = URL(string: (product?.link)!)
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        
    }
    
//    @IBAction func buyButtonTapped(_ sender: UIButton) {
//        
//        UIApplication.shared.open(URL(string: "https://www.100percentpure.com/collections/body-scrub/products/coconut-body-scrub")! as URL, options: [:], completionHandler: nil)
//        
//    }
//    
//    @IBAction func buyButtonTapped1(_ sender: UIButton) {
//        
//        UIApplication.shared.open(URL(string: "https://www.100percentpure.com/collections/moisturizers/products/green-tea-egcg-concentrate-cream?variant=1730069692440")! as URL, options: [:], completionHandler: nil)
//        
//    }
//    
//    @IBAction func buyButtonTapped2(_ sender: UIButton) {
//        
//        UIApplication.shared.open(URL(string: "http://naturallymee.com")! as URL, options: [:], completionHandler: nil)
//    }
//    
//    @IBAction func buyButtonTapped3(_ sender: UIButton) {
//        
//        UIApplication.shared.open(URL(string: "http://naturallymee.com")! as URL, options: [:], completionHandler: nil)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
}

