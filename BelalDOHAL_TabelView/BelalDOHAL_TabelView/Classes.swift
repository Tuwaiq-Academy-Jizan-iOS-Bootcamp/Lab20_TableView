import UIKit

class Classes: UITableViewCell {
    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var classType: UILabel!
    @IBOutlet weak var classImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
