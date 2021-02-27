//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Radwa Ahmed on 5/22/20.
//  Copyright © 2020 Radwa Ahmed. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", characterEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }
    
    @IBAction func Close() {
        dismiss(animated: true, completion: nil)
    }
    
}
