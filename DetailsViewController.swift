//
//  DetailsViewController.swift
//  Twitter
//
//  Created by Maha Govindarajan on 2/21/16.
//  Copyright © 2016 Maha Govindarajan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var time: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var posterImage: UIImageView!
    
    @IBOutlet var favCount: UILabel!
    @IBOutlet var retweetCount: UILabel!
    @IBOutlet var tweetText: UILabel!
     var tweet :Tweet!
      override func viewDidLoad() {
        super.viewDidLoad()
       
                tweetText.text = tweet.text
                let date = NSCalendar.currentCalendar().component(.Day, fromDate: tweet.createdAt!)
                let month = NSCalendar.currentCalendar().component(.Month, fromDate: tweet.createdAt!)
                let dateFormatter: NSDateFormatter = NSDateFormatter()
                
                let months = dateFormatter.shortMonthSymbols
                let monthSymbol = months[month-1] as! String
                
                time.text = monthSymbol + " \(date)"
                name.text = tweet.user?.name
                posterImage.setImageWithURL(NSURL(string:(tweet.user?.profileImageURL)!)!)
                retweetCount.text = String(tweet.tweetCount!)
                favCount.text = String(tweet.favCount!)
          


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
