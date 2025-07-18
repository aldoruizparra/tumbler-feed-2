//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Aldo Ruiz Parra on 7/18/25.
//

import UIKit
import NukeExtensions

class DetailViewController: UIViewController {
    
    var post: Post!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postText: UITextView!
    
    override func viewDidLoad() {
        navigationItem.largeTitleDisplayMode = .never
        super.viewDidLoad()
        postText.text = post.caption.trimHTMLTags()
        postText.textColor = .label
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            NukeExtensions.loadImage(with: url, into: postImage)
        }

        //postImage.image(from: post.photos[0].originalSize.url)
        // Do any additional setup after loading the view.
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
