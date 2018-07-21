//
//  productDisplayViewController.swift
//  NaturallyMee
//
//  Created by Sarin Swift on 7/16/18.
//  Copyright © 2018 Sarin Swift. All rights reserved.
//

import Foundation
import UIKit

class ProductDisplayViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var products: [Product] = [
        Product(image: #imageLiteral(resourceName: "coconutBodyScrub"), name: "Coconut Body Scrub", description: "Deeply moisturizing, softening body scrub buffs away bumps and flakes for incredibly silky, smooth skin. Replenishes vibrancy with potent anti-againg antioxidants and vitamins for a youthful glow. Nutrient rich plant oils deeply nourish for soft, supple skin while fruit acids reveal brightness. Free of any synthetic fragrances, chemical preservatives, artificial dyes, petro chemicals or any other toxins. Truly, 100% Pure.", price: "$36.00", link: "https://www.100percentpure.com/collections/body-scrub/products/coconut-body-scrub"),
        Product(image: #imageLiteral(resourceName: "greenTeaCream"), name: "Green Tea EGCG Concentrate Cream", description: "Highly nutrient rich moisturizer softens and fortifies skin. EGCG, the potent antioxident from green tea, protects against environmental damage.", price: "$45.00", link: "https://www.100percentpure.com/collections/moisturizers/products/green-tea-egcg-concentrate-cream?variant=1730069692440"),
        Product(image: #imageLiteral(resourceName: "HandSani"), name: "All Natural Hand Sanitizer", description: "NATURALLLY MEE's  All Natural Hand Sanitizer includes an assortment of essential oils such as lemon oil and clove oil which has great antioxidant properties. Unlike conventional hand sanitizers, NATURALLY MEE's All Natural Hand Sanitizer includes cocoanut oil as a moisturizer.", price: "$10.00", link: "http://naturallymee.com"),
        Product(image: #imageLiteral(resourceName: "naturalSoap"), name: "All Natural Soap Bar", description: "NATURALLY MEE's All Natural Cucumber-Melon Soap Bar is a hand-crafted body soap with a refreshing scent. This soap includes honeydew melons mixed with freshly sliced cucumbers.", price: "$12.00", link: "http://naturallymee.com"),
        Product(image: #imageLiteral(resourceName: "burtsBees"), name: "Burt's Bees Natural Acne Solutions", description: "Keep blemishes at bay with Burt's Bees Natural Acne Solutions Targeted Spot Treatment Cream. It's clinically shown to help reduce the appearance of blemishes in 48 hours. Formulated with tea tree, calendula, yarrow, and parsley extracts, this 99.9% natural acne treatment helps calm and reduce redness while borage extract promotes healthy skin.", price: "$10.00", link: "https://www.burtsbees.com/product/natural-acne-solutions-targeted-spot-treatment/00172-00.html"),
        Product(image: #imageLiteral(resourceName: "teaTree"), name: "Tea Tree & Willow Acne Clear Astringent", description: "Tea tree and willow work alongside other antibacterial and antiseptic herbs to soothe and clarify acnegenic skin, while helping to fight against future breakouts. This anti-inflammatory toner nourishes, hydrates, softens, and purifies without stripping, dehydrating or irritating.", price: "$39.00", link: "https://www.100percentpure.com/collections/acne-treatment/products/tea-tree-willow-clarifying-astringent"),
        Product(image: #imageLiteral(resourceName: "roseMira"), name: "Romantic Vanilla Super Moisturizing Cream", description: "This moisturizing cream is rich and light, perfect for the younger woman. Keeps your skin hydrated and youthful while it slows down future skin aging. The scent is edible, so friends might mistake you for a cookie and want a bite. ", price: "$45.00", link: "https://www.rosemira.com/romantic-vanilla-super-moisturizing-cream/"),
        Product(image: #imageLiteral(resourceName: "deadSea"), name: "Dead Sea Citrus Mud", description: "Our Dead Sea Mud is pure, nothing added but a few drops of essential oils. Dead Sea Mud clears acne breakouts and heals blemishes.  Acne is not a requirement for use however. The high mineral content has anti-aging properties and is rejuvenating for all skin types. When used weekly it will cleanse the skin, slough off dead skin cells, even skin tone and leave it soft and radiant.", price: "$38.00", link: "https://www.rosemira.com/dead-sea-citrus-mud/"),
        Product(image: #imageLiteral(resourceName: "pure"), name: "Jasmine Green Tea Tonique", description: "This facial toner is a drink of water for your skin, made entirely of highly nourishing, skin-beneficial nutrients to make your skin more healthy and hydrated. Made specifically to treat normal to dry skin but gentle enough for all skin types. Antioxidant-packed facial toner uses hyaluronic acid to deliver hydrating organic green tea and organic aloe juice to thirsty skin cells.", price: "$30.00", link: "https://www.100percentpure.com/collections/natural-toner/products/jasmine-green-tea-tonique"),
        Product(image: #imageLiteral(resourceName: "shamp"), name: "Grow More Shampoo", description: "Formulated to minimize shedding and to stimulate new hair growth. Deep cleans and clarifies scalp without stripping or dehydrating hair. Nourishing formula makes hair stronger, healthier and revitalized. Safe and gentle enough for color treated hair.", price: "$33.00", link: "https://www.100percentpure.com/collections/shampoo/products/grow-more-shampoo"),
        Product(image: #imageLiteral(resourceName: "kelp"), name: "Kelp & Mint Volumizing Shampoo", description: "Hydrating and invigorating shampoo gently purifies while adding bounce, body and luster. Nourishing formula makes hair healthier, stronger and glossier. Kelp is nature's hair thickener and fortifier while seaweed collagen from kelp adds amazing shine. Gentle enough for color treated and all hair types.", price: "$26.00", link: "https://www.100percentpure.com/collections/shampoo/products/kelp-mint-volumizing-shampoo-13oz"),
        Product(image: #imageLiteral(resourceName: "pomel"), name: "Yuzu & Pomelo Glossing Shampoo", description: "Hydrating, super gentle shampoo washes away excess oil on your scalp while giving your hair brilliant shine, bounce and vibrancy! Gentle enough for color treated and all hair types. Fortifies for healthier, stronger and more resilient hair. ", price: "$20.00", link: "https://www.100percentpure.com/collections/shampoo/products/yuzu-and-pomelo-glossing-shampoo-8oz"),
        Product(image: #imageLiteral(resourceName: "pacif"), name: "Mineral SPF 50 body butter pineapple flower", description: "Protect yourself from the harsh effects of the sun while giving your skin a nourishing feeling with the SPF 50 Body Butter Sunscreen from Pacifica. Available in the form of a body butter, this SPF 50 sunscreen will help keep your skin protected, and the water-resistant formula keeps it activated for up to 80 minutes.", price: "$14.00", link: "https://www.pacificabeauty.com/collections/new/products/mineral-spf-body-butter"),
        Product(image: #imageLiteral(resourceName: "pacsun"), name: "After sun body spray pineapple flower", description: "You are super hot. And so is your skin (after a long day in the sun, that is). This spray will make you happy as you cool down. Hydrating aloe with natural extracts come together in this all-over body mist. Try putting it in the fridge before you spray it on your body for an extra cooling effect.", price: "$11.00", link: "https://www.pacificabeauty.com/collections/new/products/after-sun-body-spray-pineapple-flower")
    ]
    
    
    //Another, less efficient way to insert images
    //    let items = ["Coconut Body Scrub", "Green Tea Cream", "Natural Hand Sanitizer", "Natural Soap"]
    //
    //    let itemImages: [UIImage] = [
    //        UIImage(named:"coconutBodyScrub")!,
    //        UIImage(named:"greenTeaCream")!,
    //        UIImage(named:"HandSani")!,
    //        UIImage(named:"naturalSoap")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.dataSource = self
        collectionView.delegate = self
        
        //Customizing size of cell ?
        //  let width = (view.frame.size.width - 10 )/2
        //  let layout = collectionView.collectionViewLayout
        //  layout.itemSize = CGSize(width: (self.collectionView.frame.size.width/2.0), height: (self.collectionView.frame.size.height/2))
        
        let collectionViewLayout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        collectionViewLayout.minimumLineSpacing = 10
        collectionViewLayout.minimumInteritemSpacing = 0
        collectionViewLayout.itemSize = CGSize(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
        
        // Trying to animate cells
        // func transform(cell: UICollectionViewCell)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return items.count
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        print(products.count)
        let product = products[indexPath.item]
        cell.productImage.image = product.image
        cell.productLabel.text = product.name
        
        
        
        // Providing cell parameters
        //cell.layer.shadowColor = CGSize(width: 0, height: -5) as! CGColor
        //cell.productLabel.text = items[indexPath.item]
        //cell.productImage.image = itemImages[indexPath.item]
        // cell.layer.shadowColor = CGSize(width: 0, height: -5)
        
    return cell
    }
    
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //let screenSize: CGRect = UIScreen.main.bounds
    //add the required height, if you want to fill the whole screen it should be'screenSize.height / 2'
    // return CGSize(width: screenSize.width / 2, height: 200)
    //    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         collectionView.pulsateCell()
      
        let product = products[indexPath.item]
     
        let storyboard = UIStoryboard(name: "productDetail0", bundle: .main)
        guard
            let intialVc = storyboard.instantiateInitialViewController(),
            let productDetailViewController = intialVc as? ProductDetailViewController else {
                return assertionFailure("storyboard not set up with ProductDetailViewController class")
        }
        
        productDetailViewController.product = product
        navigationController?.pushViewController(productDetailViewController, animated: true)
        
        

    }
//    @IBAction func homeButton(_ sender: Any) {
//
//        navigationController?.popViewController(animated: true)
//        dismiss(animated: true, completion: nil)
//
//
//    }
}

















