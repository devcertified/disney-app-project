//
//  ContentView.swift
//  disneyclone
//
//  Created by admin on 29/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 52, height: 52)
                            .clipShape(Circle())
                    }
                }.padding(.trailing)
                
                Image("disney")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 160, alignment: .center)
                
                HStack {
                    HStack {
                        Text("Everything")
                            .foregroundColor(.white)
                            .font(.system(size: 30, weight: .bold, design: .default))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "chevron.down")
                                .foregroundColor(.gray)
                                .font(.system(size: 16, weight: .bold))
                        }
                        
                        Spacer()
                        
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .font(.system(size: 18, weight: .bold, design: .default))
                                    .foregroundColor(.gray)
                                    .frame(width: 40, height: 40, alignment: .center)
                            }
                            .background(.secondary)
                            .clipShape(Circle())
                            
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "arrow.down")
                                    .font(.system(size: 18, weight: .bold, design: .default))
                                    .foregroundColor(.gray)
                                    .frame(width: 40, height: 40, alignment: .center)
                            }
                            .background(.secondary)
                            .clipShape(Circle())

                        }
                        

                    }
                }.padding(.horizontal)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        VStack(alignment: .leading) {
                            Text("Continue watching")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .semibold, design: .default))
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 12) {
                                    ForEach(0..<5) { i in
                                        Image("cover\(i)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 170)
                                            .cornerRadius(15)
                                    }
                                }
                            }
                        }.padding(.top)
                        
                        //Row 2
                        VStack(alignment: .leading) {
                            Text("You might like")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .semibold, design: .default))
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 12) {
                                    ForEach(0..<5) { i in
                                        Image("like\(i)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 170)
                                            .cornerRadius(15)
                                    }
                                }
                            }
                        }.padding(.top)
                        
                        //Row 3
                        VStack(alignment: .leading) {
                            Text("New releases")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .semibold, design: .default))
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 12) {
                                    ForEach(0..<5) { i in
                                        Image("new\(i)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 170)
                                            .cornerRadius(15)
                                    }
                                }
                            }
                        }.padding(.top)
                    }.padding(.leading)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
