//
//  BillViewController.swift
//  Project
//
//  Created by cc on 7/3/17.
//  Copyright © 2017 com.chaitali. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class BillViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate{
   
    
    @IBOutlet weak var lblcustomer: UILabel!
    
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var lblemail: UILabel!
    
    var mapManager = CLLocationManager()
    var border : [Border] = []
    var annotations : [MKPointAnnotation] = []
    @IBOutlet weak var lblPrice: UILabel!
    
    var bills : Detail?
   // var datas: Registration?
    
    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if bills != nil{
           
            lblcustomer.text = bills?.productName
            lblemail.text = bills?.Supplier
            lblPrice.text = bills?.productPrice
            txtAddress.delegate = self
             map.delegate = self
            loadData()
        
        }
        mapManager.desiredAccuracy = kCLLocationAccuracyBest  // Define the best location possible to be used in app.
        mapManager.requestWhenInUseAuthorization()            // The feature will not run in background
        mapManager.startUpdatingLocation()                    // Continuously geo-position update
        
        
    }

    @IBAction func Gobtn(_ sender: UIButton) {
        
        map.removeAnnotations(annotations)
        txtAddress.resignFirstResponder()
        if let b1 = retrieveData(countryName: txtAddress.text!) {
            let userAnnotation = MKPointAnnotation()
            userAnnotation.coordinate = CLLocationCoordinate2DMake(b1.country.latitude, b1.country.longitude)
            map.addAnnotation(userAnnotation)
            annotations.append(userAnnotation)
            
            
            // Here we define the map's zoom. The value 0.01 is a pattern
            let zoom:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
            
            // Store latitude and longitude received from smartphone
            let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(b1.country.latitude, b1.country.longitude)
            
            // Based on myLocation and zoom define the region to be shown on the screen
            let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, zoom)
            
            // Setting the map itself based previous set-up
            map.setRegion(region, animated: true)
            
            
            for c in b1.countryborder {
                let countryBorderAnnotation = MKPointAnnotation()
                countryBorderAnnotation.coordinate = CLLocationCoordinate2DMake(c.latitude, c.longitude)
                map.addAnnotation(countryBorderAnnotation)
                annotations.append(countryBorderAnnotation)
            }
        }
}
 

 

 
 func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
 let circleRenderer = MKCircleRenderer(overlay: overlay)
 circleRenderer.strokeColor = UIColor.red
 circleRenderer.lineWidth = 1.0
 return circleRenderer
 }
 
 
 func textFieldShouldReturn(_ textField: UITextField) -> Bool {
 textField.resignFirstResponder()
 return true
 }
 
 func loadData(){
 let ms  = Country(name: "Missisagua", latitude: 43.5890452, longitude: -79.6441198)
 let on = Country(name: "Ontario", latitude: 51.253775, longitude: -85.3232139)
 let bt = Country(name: "Brampton", latitude: 43.7315479, longitude: -79.7624177)
 let ny = Country(name: "Northyork", latitude: 43.7615377, longitude: -79.4110794)
 
 let b1 = Border(country: ms)
 
 let b2 = Border(country: on)
 
 
 let b3 = Border(country: bt)
 
 let b4 = Border(country: ny)
 
 border.append(b1)
 border.append(b2)
 border.append(b3)
 border.append(b4)
 }
 
 func retrieveData(countryName : String) -> Border? {
 for b in border {
 if b.country.countryName == countryName {
 return b
 }
 }
 return nil
 }
 
 
 
 
 
 }
 
 
 
