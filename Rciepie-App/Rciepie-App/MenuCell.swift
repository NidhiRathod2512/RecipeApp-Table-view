//
//  MenuCell.swift
//  RciepieApp
//
//  Created by DCS on 07/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {
    
    private let myImg: UIImageView = {
        
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 50
        img.clipsToBounds = true
        return img
    }()
    
    
    
    private let mytxt:UITextView = {
        let txt = UITextView()
        txt.isEditable = false
        txt.textColor = .black
        txt.font = .boldSystemFont(ofSize: 20)
        txt.textAlignment = .center
        return txt
    }()
    
    func setupFoodCellWith(title name:String, Abt about: String, index:Int, and state:Bool){
        myImg.image = UIImage(named: name)
        mytxt.text = about
        mybtn.tag = index
        
        setupUI(at: index , with: state)
    }
    public let mybtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(contentsOfFile: "chevron.right.3"), for: .normal)
        btn.tintColor = .black
        btn.layer.cornerRadius = 10
        return btn
    }()
    private func setupUI(at index:Int , with state:Bool){
        
        contentView.addSubview(myImg)
        contentView.addSubview(mytxt)
        contentView.addSubview(mybtn)
        myImg.frame = CGRect(x: 20,y:10,width: 100,height: 100)
        mytxt.frame = CGRect (x: myImg.right + 7,y:10,width: 140,height: 80)
        mybtn.frame = CGRect(x: mytxt.right + 10, y: 80, width: 30,height: 30)
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
