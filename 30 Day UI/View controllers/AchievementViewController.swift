//
//  AchievementViewController.swift
//  30 Day UI
//
//  Created by Daniil Poplavski on 21.05.2018.
//  Copyright © 2018 Daniil Poplavski. All rights reserved.
//

import UIKit

class AchievementViewController: UIViewController {
    
    @IBOutlet weak var shareButtonOutlet: UIButton!

    @IBAction func shareButton(_ sender: Any) {
        
        let itemsToShare: [Any] = [ textToShare, #imageLiteral(resourceName: "1024")]
        
        let vc = VisualActivityViewController(activityItems: itemsToShare30, applicationActivities: nil)
        
        vc.previewNumberOfLines = 10
        presentActionSheet(vc, from: sender as! UIView)
    }

    
    private func presentActionSheet(_ vc: VisualActivityViewController, from view: UIView) {
        if UIDevice.current.userInterfaceIdiom == .pad {
            vc.popoverPresentationController?.sourceView = view
            vc.popoverPresentationController?.sourceRect = view.bounds
            vc.popoverPresentationController?.permittedArrowDirections = [.right, .left]
        }
        
        present(vc, animated: true, completion: nil)
    }
    
//    @IBAction func twitterShare(_ sender: UIButton) {
//        let text = "I'm completed #30DaysUI Challenge!"
//
//        let textToShare = [ text ]
//        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
//        activityViewController.popoverPresentationController?.sourceView = self.view
//
//        activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
//
//        self.present(activityViewController, animated: true, completion: nil)
//    }
//
    
    let yourAttributes : [NSAttributedStringKey: Any] = [
        NSAttributedStringKey.foregroundColor : UIColor.black,
        NSAttributedStringKey.underlineStyle : NSUnderlineStyle.styleSingle.rawValue]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attributeString = NSMutableAttributedString(string: "Share with your friends!", attributes: yourAttributes)
        shareButtonOutlet.setAttributedTitle(attributeString, for: .normal)
        
        // Do any additional setup after loading the view.
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
