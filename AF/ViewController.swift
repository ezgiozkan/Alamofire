//
//  ViewController.swift
//  AF
//
//  Created by Ezgi Özkan on 1.09.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    let baseURL = "https://jsonplaceholder.typicode.com"
    
    
    @IBAction func getButtonPressed(_ sender: Any){
        
        AF.request("\(baseURL)/posts",method: .get).responseJSON { response in
            if let error = response.error {
                print(error)
            }else {
                print(response)
            }
        }
        
    }
    
    @IBAction func postButtonPressed(_ sender: Any) {
        
        let params : [String: Any] = ["title1":"TestPost1","title2":"TestPost2","title3":"TestPost3"]
        
        AF.request("\(baseURL)/posts",method: .post,parameters: params).responseJSON { response in
            
            if let error = response.error {
                print(error)
            }else {
                print(response)
            }
        }
    }
    
    @IBAction func puttButtonPressed(_ sender: Any) {
        
        let params : [String: Any] = ["title1":"body1","title2":"body2","title3":"body3"]
        
        AF.request("\(baseURL)/posts/1", method: .put, parameters: params).responseJSON { response in
                     if let error = response.error {
                         print(error)
                     } else {
                         print(response)
                     }
                 }
        
        
    }
    @IBAction func deleteButtonPressed(_ sender: Any) {
        
        AF.request("\(baseURL)/posts/1",method: .put).responseJSON { response in
            
            if let error = response.error {
                print(error)
            }
            else {
                print(response)
            }
            
        }
            
        }
        
    }
    


