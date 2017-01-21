//
//  ViewController.swift
//  ImageView
//
//  Created by 김종현 on 2017. 1. 21..
//  Copyright © 2017년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    @IBOutlet weak var switchState: UISwitch!
    
    // 변수 초기화
    // 이미지 확대 여부
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        // 초기 상태는 imgOff
        switchState.isOn = false
        imgView.image = imgOff
    }

    @IBAction func btnREsieImage(_ sender: UIButton) {
        
    }
    
    @IBAction func swicthImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

