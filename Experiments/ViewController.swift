//
//  ViewController.swift
//  Experiments
//
//  Created by Kaung Myat Thet Mon on 19/4/23.
//

import UIKit
import AppTrackingTransparency

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
        switch status {
        case .notDetermined:
          print("Unknown consent")
        case .restricted:
          print("Device has an MDM solution applied")
        case .denied:
          print("Denied consent")
        case .authorized:
          print("Granted consent")
        default:
          print("Unknown")
        }
      })
    }
  }


}

