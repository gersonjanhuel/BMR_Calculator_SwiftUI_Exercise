//
//  CalorieView.swift
//  GTK HIG
//
//  Created by Dini on 11/03/25.
//

import SwiftUI

struct CalorieView: View {
    // Declare your variable here
    
    var body: some View {
        VStack (spacing: 16) {
            
            Text("Calorie Needs (kcal)")
                .font(.largeTitle)
                .foregroundStyle(Color("ShadedBlue"))
            
            // #1 Put variable here...change "0" with variable
            Text("0").font(.system(size: 64, weight: .bold))
                .foregroundStyle(Color("AppBlue"))
            
            
            VStack(alignment: .leading, spacing: 8) {
                // Gender Pick
                Label {
                    Text("Gender:")
                        .font(.title2)
                } icon: {
                    Image(systemName: "figure.stand.dress.line.vertical.figure")
                }
                
                // #2 Put variable here...change the .constant()
                Picker("Select Gender", selection: .constant("Male")) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                }
                .pickerStyle(.inline)
                
                
                // Weight
                Label {
                    Text("Weight (kg):")
                } icon: {
                    Image(systemName: "scalemass")
                }.font(.title2)
                
                // #3 Put variable here...change the .constant()
                TextField("Enter weight in kg", text: .constant("50.4"))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .font(.title2)
                
                
                // Height
                Label {
                    Text("Height (cm):")
                } icon: {
                    Image(systemName: "ruler")
                }
                .font(.title2)
                .padding(.top)
                
                // #4 Put variable here...change the .constant()
                TextField("Enter height in cm", text: .constant("170"))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.title2)
                
                
                // Age
                Label {
                    Text("Age")
                } icon: {
                    Image(systemName: "number.circle.fill")
                }
                .font(.title2)
                .padding(.top)
                
                // #5 Put variable here...change the .constant()
                TextField("Enter your age", text: .constant("25"))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.body)
                
                // Activity Level
                HStack{
                    Label {
                        Text("Activity Level")
                    } icon: {
                        Image(systemName: "figure.walk.circle.fill")
                    }
                    .font(.title2)
                    
                    Button {
                        // Pindah Halaman
                    } label: {
                        Image(systemName: "info.circle")
                    }
                }
                .padding(.top)
                
                // #6 Put variable here...change the .constant()
                Picker("Select Activity Level", selection: .constant("Sedentary")) {
                    Text("Sedentary").tag("Sedentary")
                    Text("Lightly Active").tag("Lightly Active")
                    Text("Moderately Active").tag("Moderately Active")
                    Text("Very Active").tag("Very Active")
                    Text("Super Active").tag("Super Active")
                }
                

                
            }
            .foregroundStyle(Color("ShadedBlue"))
            .padding(.horizontal, 24)
            .padding(.bottom, 50)
            
           
            // Calculate
            Button {
                
                // Put what to calculate
                 
            } label: {
                Text("Calculate")
                    .foregroundStyle(Color("AppWhite"))
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .background(Color("AppBlue"))

            }
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            
        }
        
    }
}


#Preview {
    CalorieView()
}
