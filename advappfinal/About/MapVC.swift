//
//  ViewController.swift
//  test
//
//  Created by yeh che fu on 2015/3/11.
//  Copyright (c) 2015年 yeh che fu. All rights reserved.
//
import UIKit
import MapKit

@objc
class MapVC : UIViewController {

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
        
        
        var btn1 = UIButton.buttonWithType(UIButtonType.System) as UIButton
        btn1.backgroundColor=UIColor.greenColor()
        btn1.frame=CGRectMake(100, 100, 100, 100);
        btn1.addTarget(self, action: "pushBtn:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn1)
        
    }
    func pushBtn(btn1:UIButton){
        
        self.navigationController?.popViewControllerAnimated(true)
    }

}

