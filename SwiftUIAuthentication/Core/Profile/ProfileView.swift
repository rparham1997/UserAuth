//
//  ProfileView.swift
//  SwiftUIAuthentication
//
//  Created by Ramar Parham on 9/12/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(User.MOCK_USER.fullname)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
            
            Section("General") {
                HStack {
                    SettingsRowView(imageName: "gear",
                                    title: "Version",
                                    tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
            }
            
            Section("Account") {
                Button {
                    
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill",
                                    title: "Sign Out",
                                    tintColor: .red)
                }
                
                Button {
                    
                } label: {
                    SettingsRowView(imageName: "xmark.circle.fill",
                                    title: "Delete Account",
                                    tintColor: .red)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
