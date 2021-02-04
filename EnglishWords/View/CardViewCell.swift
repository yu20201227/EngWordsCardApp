//
//  CardViewCell.swift
//  EnglishWords
//
//  Created by Owner on 2021/02/03.
//

import UIKit
import VerticalCardSwiper

class CardViewCell: CardCell {
    
    
    @IBOutlet weak var EngMeaning:UILabel!
    @IBOutlet weak var JapaMeaning:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    public func setRandomBackgroundColor(){
        let randomRed: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomGreen: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomBlue: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        self.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)

    }
    override func layoutSubviews() {
        self.layer.cornerRadius = 12
        super.layoutSubviews()
    }


}
