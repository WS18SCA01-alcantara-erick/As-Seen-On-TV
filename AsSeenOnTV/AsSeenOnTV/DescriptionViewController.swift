//
//  DescriptionViewController.swift
//  AsSeenOnTV
//
//  Created by Erick Alcantara on 1/10/19.
//  Copyright © 2019 Erick Alcantara. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    
    @IBOutlet weak var productLabel: UILabel!
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    
    var image = UIImage()
    
    var name = ""
    
    var productDetail: [String] =
        ["Flex Tape strong rubberized waterproof tape stops leaks instantly. Flex Tape as seen on TV grips on tight and bonds instantly creating a super strong waterproof seal. So strong it even works underwater. Triple thick adhesive virtually welds itself to most surfaces. Great for roof leaks, gutter, down spouts, boats, canoes, outdoor and camping gear, PVC and plumbing pipes, pools, spas, ducts, DIY projects and so much more. Use on PVC, acrylic, metal, steel, copper, aluminum, ceramic, glass, rubber, fiberglass, dry wall, cement and so much more.",
        "Introducing Huggle Hoodie the worlds most comfortable oversized hoodie that combines the warmth of a cozy blanket with the comfort of your favorite hoodie. Made from ultra-soft fleece and lined with ultimate in warming Sherpa comfort! Huggle Hoodie is one size fits all to keep you cozy & warm from head to toe! Its reversible so you can choose your favorite look. Theres even a big, roomy pocket to keep what you need right at hand! Whether you are relaxing on the couch, running errands, or outside cheering on your favorite team, Huggle Hoodie will keep you warm and toasty! Just slip it on and the chill is gone!",
        "Flippin’ Fantastic the fast, easy and fun way to make perfect pancakes every time! As seen onTVFlippin’ Fantastic flips multiple pancakes at the same time and without the mess. Just place in preheated pan add batter and let them brown then simply lift and flip. The secret is the non-stick, silicone ring. The side holds batter to the perfect shape for even cooking, while the flat bottom ring supports everything. Stovetop safe silicone while the easy flip grips keep hand away from the heat. Dishwasher safe. Also great for eggs, omelettes, hash browns and so much more!",
        "Are you constantly waking up in the middle of the night because of nagging aches and pains in your head and neck? Is the constant pain affecting your productivity at work and getting in the way of the things you enjoy? Well, it could be your pillow that’s causing you so much hassle and inconvenience! If you’re looking for a better night’s sleep, then look no further than My Pillow® - the American made adjustable pillow that is taking the pain out of sleep for millions of Americans.",
        "Apply eyedrops the easy way-no more wasted drops! AutoDrop® Guide attaches to any eyedrop bottle at the proper angle and holds your eye open to prevent blinking.",
        "The Vidalia Chop Wizard As Seen On TV is the fastest, safest, and easiest way to chop or dice fruits and vegetables. Simply place the item on top of the stainless steel blade grate and with one swift motion, swing the top lid down.All your chopped veggies and fruit are sent cleanly into the clear compartment underneath. Stand it on its side, and it works as a measuring cup with marks up to 2 cups. Blades never need sharpening. Dishwasher safe."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productImage.image = image
        productLabel.text! = name
      
       
     
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToCartButton(_ sender: Any) {
    }
    
}
