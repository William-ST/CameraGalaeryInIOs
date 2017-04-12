//
//  WebViewController.swift
//  CameraGalaeryEnIOs
//
//  Created by alumno on 11/04/17.
//  Copyright © 2017 area.51. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
/*
        let url = URL(string: "http://www.google.com")
        
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
 */
        //let htmlString = "<h1>Hola mundo</h1>"
        let path = Bundle.main.path(forResource: "hola.html", ofType: nil)
        let url = URL(fileWithPath: path!)
        let request = URLRequest(url: url)
        webView.loadRequest(request)
        
        //webView.loadHTMLString(htmlString, baseURL: nil)
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
