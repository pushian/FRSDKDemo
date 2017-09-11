//
//  ViewController.swift
//  FRSDKTest
//
//  Created by Yangfan Liu on 24/8/17.
//  Copyright © 2017 Yangfan Liu. All rights reserved.
//

import UIKit
import FRPhotoCollageSDK
import SnapKit

class OpenViewController: UIViewController {
    
    fileprivate var sdkBtn: UIButton! = {
        let t = UIButton()
        t.setTitle("SDK Test", for: .normal)
        t.setTitleColor(.white, for: .normal)
        t.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        t.backgroundColor = UIColor.black
        t.clipsToBounds = true
        t.layer.cornerRadius = 20
        return t
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        view.addSubview(sdkBtn)
        sdkBtn.addTarget(self, action: #selector(sdkHandler), for: .touchUpInside)
        sdkBtn.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.centerY.equalToSuperview()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sdkHandler() {
        let vc = FRPhotoCollageCreate(uniqueId: "\(UIDevice.current.identifierForVendor!.uuidString)")
        vc.delegate = self
        
        let nav = UINavigationController(rootViewController: vc)
        self.present(nav, animated: true, completion: nil)
    }
}

extension OpenViewController: FRPhotoCollageCreateDelegate {
    func FRDidTapCancel() {
        debugPrint("did tap cancel")
        //        self.dismiss(animated: true, completion: nil)
    }
    
    func FRDidTapDone() {
        debugPrint("did tap done")
        //        self.dismiss(animated: true, completion: nil)
    }
}
