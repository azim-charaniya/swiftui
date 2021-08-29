//
//  List.swift
//  Playground
//
//  Created by user204215 on 8/29/21.
//

import SwiftUI

struct List: View {
    
    private let viewModel = ListViewModel()
    
    @State var state : ListState = Loading()
    
    
    var body: some View {
        if(self.state is None){
            Text("None")
        }else if self.state is Loading {
            VStack{
                ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                Text("Loading...")
                    .font(.title2)
                    .bold()
                    .padding(.top,10.0)
            }
        }else {
            Spacer()
        }
        Spacer()
    }
}

struct MovieView: View {
    
    init(user: User) {
        self.user = user
    }
    
    let user: User
    
    var body: some View{
        HStack{
            Circle()
                .strokeBorder(Color.blue,lineWidth: 4)
                .background(Image(user.avatar)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                )
                .frame(width: 100, height: 100.0, alignment: .top)
            
            VStack {
                Text(user.first_name)
                    .font(.title3)
                    .padding(.top, 10.0)
                
                Text(user.last_name)
                    .font(.title3)
                    .padding(.bottom,10.0)
                Spacer()
            }
            .frame(maxWidth: .infinity,alignment: .leading)
        }
        .frame(maxWidth: .infinity, maxHeight: 120)
        .border(Color.black.opacity(0.8), width: 1)
        .cornerRadius(4.0, antialiased: true)
        .padding()
        
    }
}


struct List_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(user: User(id: 0, avatar: "https://reqres.in/img/faces/7-image.jpg", email: "test@test", first_name: "First Name", last_name: "Last Name"))
    }
}
