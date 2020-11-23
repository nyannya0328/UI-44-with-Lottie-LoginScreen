//
//  ContentView.swift
//  UI-44
//
//  Created by にゃんにゃん丸 on 2020/11/23.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        Splash()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Splash : View {
    @State var show = false
    
    @State var phno = ""
    var body: some View{
        
        VStack{
            
            ZStack{
                
                
                Color("bg")
                    .ignoresSafeArea()
                
                VStack{
                    
                    
                    Animation(show: $show)
                        .frame(height: UIScreen.main.bounds.height / 2)
                        .padding(.bottom,35)
                    
                    VStack{
                        
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 20, content: {
                                Text("Login")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                
                                
                                
                                Text("Enter your name")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                
                                
                            })
                            Spacer(minLength: 15)
                            
                            
                            
                        }
                        VStack{
                            
                            
                            HStack(spacing:15){
                                
                                Text("+1")
                                    .foregroundColor(.black)
                                    .fontWeight(.heavy)
                                
                                Rectangle()
                                    .fill(Color("bg"))
                                    .frame(width: 1, height: 18)
                                
                                TextField("Enter", text: $phno)
                                
                                
                                
                                
                                
                            }
                            
                            Divider()
                                .background(Color("bg"))
                            
                            
                        }
                        .padding(.vertical)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            
                            Text("Your name")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                                .frame(width: UIScreen.main.bounds.width - 60)
                                .background(Color("bg"))
                                .clipShape(Capsule())
                        })
                        HStack{
                            Rectangle()
                                .fill(Color.black.opacity(0.3))
                                .frame(height: 1)
                            
                            
                            Text("or")
                                .bold()
                                .background(Color.black.opacity(0.03))
                            
                            Rectangle()
                                .fill(Color.black.opacity(0.3))
                                .frame(height: 1)
                            
                            
                        }
                        .padding(.vertical)
                        
                        
                        
                        HStack(spacing:20){
                            Button(action:{}){
                                
                                HStack{
                                    
                                    Image("g")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 35, height: 35)
                                    
                                    Text("Google")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                    
                                }
                                .padding(.vertical,10)
                                .frame(width: (UIScreen.main.bounds.width - 80) / 2)
                                .background(Color.red)
                                .clipShape(Capsule())
                            }
                            
                            
                            Button(action:{}){
                                
                                HStack{
                                    
                                    Image("a")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 35, height: 35)
                                    
                                    Text("Amazon")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                    
                                    
                                }
                                .padding(.vertical,10)
                                .frame(width: (UIScreen.main.bounds.width - 80) / 2)
                                .background(Color.red)
                                .clipShape(Capsule())
                                
                                
                                
                            }
                        }
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    .padding()
                    
                    .background(Color.white)
                    .frame(width: (UIScreen.main.bounds.width) - 30)
                    .cornerRadius(10)
                    .frame(height: show ? nil : 0)
                    .opacity(show ? 1 : 0)
                    
                    
                    
                    
                }
                
                
            }
            
            
            
            
        }
        
        
        
        
    }
    
    
}


struct Animation : UIViewRepresentable {
    
    @Binding var show : Bool
    func makeUIView(context: Context) -> AnimationView {
        
        let view = AnimationView(name: "a1", bundle: Bundle.main)
        
        view.contentMode = .scaleAspectFit
        view.play { (status) in
            if status{
                
                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.8, blendDuration: 0.7)){
                    
                    
                    show.toggle()
                }
                
            }
        }
        
        return view
        
    }
    
    func updateUIView(_ uiView: AnimationView, context: Context) {
        
    }
}
