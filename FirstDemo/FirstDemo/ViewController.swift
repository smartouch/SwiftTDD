//
//  ViewController.swift
//  FirstDemo
//
//  Created by Olivier on 25/12/2016.
//  Copyright © 2016 Smartouch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* numberOfVowelsInString() */
    func numberOfVowelsInString(string: String) -> Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        
        return string.characters.reduce(0) { $0 + (vowels.contains($1) ? 1 : 0) }
    }
    
    func makeHeadline(string: String) -> String {
        return ""
    }
}

