//
//  AmbulanceـView.swift
//  Healthcare
//
//  Created by Aljwhra Alnasser on 05/11/2023.
//

//import SwiftUI
//import MapKit
//
//struct Ambulance_View: View {
//
//    @State private var region = MKCoordinateRegion(
//            center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
//            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//        )
//
//    @State private var annotations = [MKPointAnnotation]()
//
//
//
//    init() {
//
//            let annotation1 = MKPointAnnotation()
//            annotation1.coordinate = CLLocationCoordinate2D(latitude: 37.775, longitude: -122.420)
//            annotation1.title = "Marker 1"
//            annotation1.subtitle = "San Francisco"
//
//            let annotation2 = MKPointAnnotation()
//            annotation2.coordinate = CLLocationCoordinate2D(latitude: 37.780, longitude: -122.418)
//            annotation2.title = "Marker 2"
//            annotation2.subtitle = "San Francisco"
//
//            annotations.append(annotation1)
//            annotations.append(annotation2)
//        }
//
//    var body: some View {
//        NavigationStack{
//
//            ZStack{
//
//                Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .follow, annotationItems: annotations) { annotation in
//                           MapPin(coordinate: annotation.coordinate, tint: .red)
//                       }
//                       .onAppear {
//                           // You can configure the initial region here
//                           region.center = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
//                           region.span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//                       }
//
//
//            }
//
//            .navigationTitle("Ambulance")
//            .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//}
//
//#Preview {
//    Ambulance_View()
//}



import SwiftUI
import MapKit

struct MapAnnotationItem: Identifiable {
    var id = UUID()
    var coordinate: CLLocationCoordinate2D
    var title: String
    var subtitle: String
}

struct Ambulance_View: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 24.7136, longitude: 46.6753), // Riyadh, Saudi Arabia
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    @State private var annotations = [MapAnnotationItem]()
    
    init() {
        let annotation1 = MapAnnotationItem(
            coordinate: CLLocationCoordinate2D(latitude: 24.7136, longitude: 46.6753),
            title: "Riyadh",
            subtitle: "Saudi Arabia"
        )
        
        annotations.append(annotation1)
    }
    
    @State var isSuccess = false
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: annotations) { annotation in
                    MapPin(coordinate: annotation.coordinate, tint: .red)
                }
                .onAppear {
                    // Configure the initial region centered in Riyadh, Saudi Arabia
                    region.center = CLLocationCoordinate2D(latitude: 24.7136, longitude: 46.6753)
                    region.span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
                }
            }
            
            .overlay(
                VStack{
                    Text("Confirm your addres")
                    Divider()
                        .frame(width: 260)
                    Text("2640 Riyadh Rd #102 Alexandria,\nViginia(VA), 22314")
                    
                    Button(action: {
                        isSuccess = true
                    },
                           label: {
                        
                        Text("Confirm Location")
                            .font(.title3)
                            .foregroundColor(.white).bold()
                            .frame(width: 330, height: 55)
                            .background(Color.mygreen)
                            .cornerRadius(80)
                    })
                    .fullScreenCover(isPresented: $isSuccess){
                        Home_View()
                    }
                    
                }
                    .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 350, height: 200)
                                .background(Color.mygrey2)
                                .cornerRadius(10)
                        ).offset(y: 220)
                        
            )
            
            
            
            .navigationTitle("Ambulance")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Ambulance_View()
}
