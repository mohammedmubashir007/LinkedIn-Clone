//
//  NetworkScreen.swift
//  LinkedIn Clone
//
//  Created by Mohammed Mubashir on 28/02/23.
//

import SwiftUI


var networkData: [NetworkModel] = [
    .init(id: 0, image: "00", name: "Marry", position: "SDE at Paytm", mutual: 34),
    .init(id: 1, image: "01", name: "Peter", position: "Assistant Manager", mutual: 45),
    .init(id: 2, image: "02", name: "Jenny", position: "SDE at Ginger ", mutual: 67),
    .init(id: 3, image: "03", name: "Sara", position: "open to work", mutual: 103),
    .init(id: 4, image: "04", name: "Kia", position: "GET at HCL", mutual: 12),
    .init(id: 5, image: "05", name: "Shristi", position: "Student", mutual: 78),
    .init(id: 6, image: "00", name: "Rachel", position: "intern at iNeuron", mutual: 90),
    .init(id: 7, image: "01", name: "John", position: "HR at Intel", mutual: 34),
    .init(id: 8, image: "02", name: "Tiya", position: "purchase Engineer", mutual: 50),
    .init(id: 9, image: "03", name: "Pheobe", position: "Product Manager", mutual: 86),
    .init(id: 10, image: "04", name: "Monica", position: "Data Analyst", mutual: 55),
    .init(id: 11, image: "05", name: "Joe", position: "Software Development intern", mutual: 42),
    .init(id: 12, image: "00", name: "Charel", position: "SDE-II ", mutual: 30),
    .init(id: 13, image: "01", name: "Chandler", position: "Mobile Developer", mutual: 71),
    .init(id: 14, image: "02", name: "Max", position: "QA", mutual: 95),
    .init(id: 15, image: "03", name: "Nancy", position: "Frontend Developer", mutual: 18)
    
]

struct NetworkScreen: View {
    var body: some View {
        VStack {
            SearchBar()
            
            HStack {
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity,height: 10)
                .ignoresSafeArea(.all)
            
            
            ScrollView(.vertical,showsIndicators:false) {
                HStack {
                    Text("Invitations")
                        .font(.body)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }.padding(.horizontal)
                Divider()
                
                
                ForEach(networkData,id: \.id) { datum in
                    InvitationView(Data: datum)
                    
                    Divider()
                }
            }
        }
    }
}

struct NetworkScreen_Previews: PreviewProvider {
    static var previews: some View {
        NetworkScreen()
    }
}
