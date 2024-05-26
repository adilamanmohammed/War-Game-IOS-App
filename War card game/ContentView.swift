//
//  ContentView.swift
//  War card game
//
//  Created by Adil Aman Mohammed on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard = "card7"
    @State var cpucard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            Spacer()
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                
                HStack(){
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                 
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                
                
                HStack(){
                    Spacer()
                    VStack(){
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack(){
                        Text("CPU")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                }.font(.subheadline)
                    .foregroundColor(Color.white)
                
                Spacer()
                
                
            }
            
            
            
        }
    }
    
    func deal()
    {
        // can also use Var to declare variables
        let   = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        
        //Randamize the player cards
        playercard = "card" + String(playerCardValue)
        //Randamize the cpu Cards
        cpucard = "card" + String(cpuCardValue)
        // Update the Score
        
        
        if playerCardValue > cpuCardValue {
            //Add 1 to player score
            playerScore += 1
        }
        else if playerCardValue < cpuCardValue {
            //Add 1 cpu score
            cpuScore += 1
        }
        else{
            //Tie
        }
    
        
        
        
        
        
        
        
    }
}

#Preview {
    ContentView()
}
