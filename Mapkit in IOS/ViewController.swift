//
//  ViewController.swift
//  Mapkit in IOS
//  Created by CodeInfoWay CodeInfoWay on 3/13/23.

import MapKit
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude: CLLocationDegrees = 28.613332799702025
        let longtude: CLLocationDegrees = 77.2772189846711
        let latDelta: CLLocationDegrees = 0.01
        let lonDelta: CLLocationDegrees = 0.01
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longtude)
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center:location,span:span)
        
        self.MapView.setRegion(region, animated: true)
        let annotation: MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "BAPS Delhi akshardham"
        annotation.subtitle = "AKSHARDHAM"
        self.MapView.addAnnotation(annotation)
    }
}



















//import UIKit
//import MapKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var mapView: MKMapView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let cities = [
//            CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278), // London
//            CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060), // New York
//            CLLocationCoordinate2D(latitude: 35.6895, longitude: 139.6917), // Tokyo
//            CLLocationCoordinate2D(latitude: -33.8651, longitude: 151.2094), // Sydney
//            CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)   // Paris
//        ]
//
//        for city in cities {
//            let annotation = MKPointAnnotation()
//            annotation.coordinate = city
//
//            switch city {
//            case cities[0]:
//                annotation.title = "London"
//            case cities[1]:
//                annotation.title = "New York"
//            case cities[2]:
//                annotation.title = "Tokyo"
//            case cities[3]:
//                annotation.title = "Sydney"
//            case cities[4]:
//                annotation.title = "Paris"
//            default:
//                break
//            }
//
//            mapView.addAnnotation(annotation)
//        }
//
//        let span = MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
//        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), span: span)
//        mapView.setRegion(region, animated: true)
//    }
//}
