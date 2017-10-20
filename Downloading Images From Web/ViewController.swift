//
//  ViewController.swift
//  Downloading Images From Web
//
//  Created by George Garcia on 7/3/17.
//  Copyright © 2017 George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        if documentsPath.count > 0 {
            
            let documentsDirectory = documentsPath[0]
            
            let restorePath = documentsDirectory + "/bach.jpg"
            
            imageView.image = UIImage(contentsOfFile: restorePath)
            
        }
        
        
//        
//        
//        let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Johann_Sebastian_Bach.jpg")!
//        
//        let request = NSMutableURLRequest(url: url)
//        
//        let task = URLSession.shared.dataTask(with: request as URLRequest) {
//            data, response, error in
//            
//            
//            if error != nil {
//                
//                print (error)
//                
//            } else {
//                
//                if let data = data{ // convert that data to an image
//                
//                    if let instaImage = UIImage(data: data){
//
//                    self.imageView.image = instaImage
//                    
//                    let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
//                        
//                        if documentsPath.count > 0 {
//                            
//                            let documentsDirectory = documentsPath[0]
//                                
//                                let savePath = documentsDirectory + "/bach.jpg"
//                                
//                                
//                                do {
//                                
//                                try UIImageJPEGRepresentation(instaImage, 1)?.write(to: URL(fileURLWithPath: savePath))
//                                } catch {
//                                    
//                                    // process error
//                                    
//                                }
//                            
//                        }
//                        
//                    
//                }
//                
//            }
//        }
//            
//    }
//        
//        task.resume() //
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

