//
//  ViewController.swift
//  test
//
//  Created by yeh che fu on 2015/3/11.
//  Copyright (c) 2015年 yeh che fu. All rights reserved.
//
import UIKit
import MapKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let currentLocation = MKMapItem.mapItemForCurrentLocation()
        let marktaipei = MKPlacemark(coordinate: CLLocationCoordinate2DMake(22.036025, 120.246413),addressDictionary: nil)
        let taipei101 = MKMapItem(placemark: marktaipei)
        taipei101.name = "水缸豆花"
        let array = NSArray(objects:currentLocation, taipei101)
        let b = NSDictionary(object:MKLaunchOptionsDirectionsModeDriving, forKey:MKLaunchOptionsDirectionsModeKey )
        MKMapItem.openMapsWithItems(array, launchOptions: b)
    }

}

