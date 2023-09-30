//
//  DetailView.swift
//  WatchKit App For IP2Location Watch App
//
//  Created by Babatunde Onabajo on 30/09/2023.
//

import Foundation
import SwiftUI


struct DetailView: View {
    @State private var ipAddressToBeEntered: String = ""
    @State private var apiKeyToBeEntered: String = ""
    
    private var findOutInfoEnabledButton: Bool{ //We use this to disable the button from being pressed until both IP address and API key has been entered.
        !ipAddressToBeEntered.isEmpty && !apiKeyToBeEntered.isEmpty
    }
    
    // We use this section to create the Struct to enable us to later parse the JSON file.
    
    struct testStruct: Codable { //We use the Codable protocol to ensure that we can begin to parse the JSON response. We have to be sure that each
        let ip: String //This gives the IP Address
        let country_code: String //This is the country code
        let country_name: String //This is the official country name
        let region_name: String // This is the name of the region.
        let city_name: String // This gives the name of the city.
        let latitude: Double //This gives the latitude. We have to use the Double type otherwise Swift will throw an error.
        let longitude: Double //This gives the longitude. We have to use the Double type otherwise Swift will throw an error.
        let zip_code: String //This is the zip_code/postcode.
        let time_zone: String // This is the timezone that is used.
        let asn: String //This is the Autonomous System Number (ASN).
        let `as`: String //We have to use these special marks because "as" also has a particular meaning within the context of Swift. This is the Autonomous System Name.
        let is_proxy: Bool //We have to set this to Bool otherwise Swift will throw an error. This indicates whether the IP address is a proxy or not.
    }
    
    // We use this section to obtain information from IP2Location.io
    
    if let url = URL(string: "https://api.ip2location.io/?key=\(apiKeyToBeEntered)&ip=\(ipAddressToBeEntered)"){
        URLSession.shared.dataTask(with:url){
            data, response, error in
                
            if let data = data {
                
                do{
                    let res = try JSONDecoder().decode(testStruct.self, from: data)
                    let ipToShow = res.ip
                    let countryCodeToShow = res.country_code
                    let countryNameToShow = res.country_name
                    let regionNameToShow = res.region_name
                    let cityNameToShow = res.city_name
                    let latitudeToShow = res.latitude
                    let longitudeToShow = res.longitude
                    let zipCodeToShow = res.zip_code
                    let timeZoneToShow = res.time_zone
                    let asnToShow = res.asn
                    let asToShow = res.as
                    
                } catch let error {
                    print(error)
                }
                
            }
        }
    }
    
    var body: some View {
        VStack{
            
            TextField("IP Address: ", text: $ipAddressToBeEntered)
        }
        
        VStack{
            SecureField("API Key: ", text: $apiKeyToBeEntered)
        }
        
        VStack{
            
            
            Button("Find out information"){ //We use the information entered to obtain information on the IP address provided.
                
                
                
                NavigationLink(destination:
                    
                    Text("")){
                    Text("")
                }
                
            }.disabled(!findOutInfoEnabledButton)
        }
        
    }
}
#Preview {
    DetailView()
}

