//
//  ViewController.swift
//  AddressAutofillSDKSampleSwift
//
//  Created by JaiPrakash on 08/06/22.
//

import UIKit
import PataaAutoFillSDK

class ViewController: UIViewController {

    @IBOutlet weak var pataaAutoFillView: PataaAutoFillView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        self.pataaAutoFillView.initializeSDK(withKey: "YOUR_API_KEY", withAppPrefix: "APP_PREFIX")
        self.pataaAutoFillView.delegate = self
    }
}

extension ViewController: PataaAutoFillDelegate {
    func didReceivedPataaDetails(_ pataaDetails: PAPataaDetail?, withError error: Error?) {
        if  let pataaDetails = pataaDetails, let pataa = pataaDetails.pataa {
            print(pataa.pataaCode)
            print(pataa.address1)
            print(pataa.address2)
            print(pataa.address3)
            print(pataa.zipcode)
            print(pataa.cityName)
            print(pataa.stateName)
            print(pataa.countryName)
        }
    }
}

