//
//  AttractionDetailViewController.swift
//  Navigation
//
//  Created by 402-07 on 2018. 8. 4..
//  Copyright © 2018년 moonbc. All rights reserved.
//

import UIKit
import WebKit

class AttractionDetailViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    
    //상위 뷰 컨트롤러부터 넘겨받을 데이터를 저장할 변수
    
    var webSite:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //WebKitView를 이용해서 웹 사이트를 출력
        //webSiterk nil이 아닐때만 동작
        if let address = webSite{
            let webURL = URL(string: address)
            let urlRequest = URLRequest(url: webURL!)
            
            webView.load(urlRequest)
        }
        
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
