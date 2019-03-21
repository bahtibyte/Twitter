//
//  TweetCell.swift
//  Twitter
//
//  Created by Bahti on 3/12/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var handleLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    
    var retweeted:Bool = false
    var liked:Bool = false
    
    @IBAction func onLike(_ sender: Any) {
        
        if (liked){
            likeButton.setImage(UIImage(named: "favor-icon"), for: UIControl.State.normal)
        }else{
            likeButton.setImage(UIImage(named: "favor-icon-red"), for: UIControl.State.normal)
        }
        
        liked = !liked;
    }
    
    
    @IBAction func onRetweet(_ sender: Any) {
        
        
        if (retweeted){
            retweetButton.setImage(UIImage(named: "retweet-icon"), for: UIControl.State.normal)
        }else{
            retweetButton.setImage(UIImage(named: "retweet-icon-green"), for: UIControl.State.normal)
        }
        
        retweeted = !retweeted;
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
