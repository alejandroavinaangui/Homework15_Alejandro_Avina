//
//  ContentView.swift
//  Homework15_Alejandro_Avina
//
//  Created by Alejandro Avina on 11/19/25.
//

import SwiftUI



struct SportsView: View{
    @State var sport = "runing"
    var body: some View{
        VStack{
            Text("Click to choose sport").contextMenu{
                
                Button(action:{
                    self.sport = "figure.disc.sports";
                }){
                   Text("Figure disc")

                }
                
                Button(action:{
                    self.sport = "figure.run";
                }){
                    Text("Running")
                }
               
            }
            .padding()
            Image(systemName:sport);
        }
    }
}

struct MusicView: View{
    @State var music = "mus"
    var body: some View{
        VStack{
            Text("Click to choose music").contextMenu{
                
                    Button(action:{
                        self.music = "music.note";
                    }){
                        Text("musical note")
                    }
                    
                    Button(action:{
                        self.music="music.microphone"
                    }){
                        Text("microphone")
                    }
                
              
               
            }
            .padding();
            Image(systemName:music)
        }
        .padding()
    }
}



struct ContentView: View {
    var body: some View {
        TabView{
            MusicView().tabItem{
                Image(systemName:"music.note");
                Text("Music View")}
                
            SportsView().tabItem{
                Image(systemName:"figure.disc.sports")
                Text("Sports View")
            }
                }
                
            }
        }
    


#Preview {
    ContentView()
}
