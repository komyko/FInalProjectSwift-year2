//
//  MapVC.swift
//  
//
//  Created by parsobsri on 4/12/2564 BE.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController,MKMapViewDelegate {
    let map = MKMapView()
    let coordinate = CLLocationCoordinate2D(latitude: 14.6570211, longitude: 100.4130898)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(map)
        map.frame = view.bounds
        map.setRegion(MKCoordinateRegion(center: coordinate,
                                         span: MKCoordinateSpan(
                                            latitudeDelta: 0.1,
                                            longitudeDelta: 0.1)),
        animated: false)
        map.delegate = self
        
        addCustomPin()
    }
        
    private func addCustomPin(){
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        pin.title = "Shop Here"
        pin.subtitle = "let go"
        map.addAnnotation(pin)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else{
            return nil
    }
        var annotationview = map.dequeueReusableAnnotationView(withIdentifier: "custom")
        
        if annotationview == nil {
            annotationview = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
            annotationview?.canShowCallout = true
            annotationview?.rightCalloutAccessoryView
        }
        else {
            annotationview?.annotation = annotation
        }
       // annotationview?.image = UIImage(named: "lo")
        
        return annotationview
        
    }
    

}
