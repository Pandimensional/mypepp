//
//  ViewController.swift
//  mypepp
//
//  Created by Shehryar K on 2018-07-24.
//  Copyright © 2018 Shehryar K. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    @IBOutlet weak var Pepp: UILabel!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Pass: UITextField!
    @IBOutlet weak var LoginBtn: UIButton!
    //var MapView: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 55.32, longitude: 18.06, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // marker
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D( latitude: 55.32, longitude: 18.06)
        marker.title = "Stockholm"
        marker.snippet = "Sweden"
        marker.map = mapView
        
        //navigationItem.rightBarButtonItem = UIBarButtonItem( title: "Next", style: .Plain, target: self, action: "next")
    }

    //func next (){
    //    let nextlocation = CLLocationCoordinate2D( latitude: 55.34, longitude: 18.04)
    //    mapView?.camera = GMSCameraPosition.camera(nextlocation.latitude, nextlocation.longitude, zoom: 12.0)
        
    //    let marker = GMSMarker(position: nextlocation)
    //    marker.title = "Kickboxing"
    //    marker.map = mapView
    //}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Email(_ sender: UITextField) {
        Email.text = sender.text
    }
    
    @IBAction func Pass(_ sender: UITextField) {
        Pass.text = sender.text
    }
    
    
}

