//
//  ContactosCell.swift
//  NTTask
//
//  Created by Juan Gomez Martinho Gonzalez on 17/3/22.
//

import UIKit

protocol ContactosCellProtocol {
    func configCell(data: ArrayContact)
}

class ContactosCell: UITableViewCell {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myNombreLBL: UILabel!
    @IBOutlet weak var myApellidoLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.myImageView.layer.cornerRadius = self.myImageView.frame.width / 1.5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension ContactosCell: ContactosCellProtocol {
    internal func configCell(data: ArrayContact){
        self.myImageView.image = UIImage(named: data.imageProfile ?? "placeholder")
        self.myNombreLBL.text = data.firstName
        self.myApellidoLBL.text = data.lastName
    }
}
