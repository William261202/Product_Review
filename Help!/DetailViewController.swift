//
//  ViewController.swift
//  Help!
//
//  Created by Thiha Yeyint Aung on 6/16/18.
//  Copyright © 2018 William. All rights reserved.
//

import UIKit
import RealmSwift

class DetailViewController: UIViewController {

    
    
    var selectedCategory: CategoryModel? {
        didSet {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = ""
        
    }

    
    @IBOutlet weak var textView: UITextView!
    
    
}

