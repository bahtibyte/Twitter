//
//  TweetsVC.swift
//  Twitter
//
//  Created by Bahti on 3/17/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetsVC: UIViewController {

    @IBOutlet weak var inputText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputText.becomeFirstResponder() 
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil )
    }
    
    @IBAction func onDone(_ sender: Any) {
        TwitterAPICaller.client?.postTweet(tweetString: inputText.text, success: {
            print("Posted")
        }, failure: { (Error) in
            print("fail")
        })
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
