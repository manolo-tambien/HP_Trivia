//
//  ContentView.swift
//  HP Trivia
//
//  Created by Manolo on 10/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geo in
            ZStack{
                Image("hogwarts")
                    .resizable()
                    .frame(width: geo.size.width * 3, height: geo.size.height)
                    .padding(.top, 3)
                VStack{
                    VStack{
                        Image(systemName: "bolt.fill")
                            .font(.largeTitle)
                            .imageScale(.large)
                        
                        Text("HP")
                            .font(.custom(Constants.hpFont, size: 70))
                            .padding(.bottom, -50)
                        
                        Text("Trivia")
                            .font(.custom(Constants.hpFont, size: 60))
                    }
                    .padding(.top, 70)
                    
                    Spacer()
                    
                    VStack{
                        Text("Recent Scores")
                            .font(.title2)
                        
                        Text("23")
                        Text("11")
                        Text("18")
                    }
                    .font(.title3)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.7))
                    .cornerRadius(15)
                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        
                        Button{
                            // show instructions on screen
                        } label:{
                            Image(systemName:"info.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                        }
                        
                        Spacer()
                        
                        Button {
                            // Start new game
                        } label: {
                            Text("Play")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(.vertical, 7)
                                .padding(.horizontal, 50)
                                .background(.brown)
                                .cornerRadius(7)
                                .shadow(radius: 5)
                        }
                        
                        
                        Spacer()
                        
                        Button{
                            // show settings screen
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                        }
                        
                        Spacer()
                        
                    }.frame(width: geo.size.width)
                    
                    Spacer()
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
