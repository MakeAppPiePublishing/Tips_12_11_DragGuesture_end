//
//  ContentView.swift
//  SwipeGesture
//
//  Created by Steven Lipton on 9/29/20.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 12 (Q4 2020) video 11
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  Learn how to use draggingGestures
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

struct ContentView: View {
    @State var value:CGFloat = 0.0
    var body: some View {
        let drag = DragGesture()
            .onEnded{ (dragValue) in self.value = 0 }
            .onChanged{ (dragValue) in self.value = dragValue.translation.width}
        return VStack {
            Text("A Drag Gesture Demo")
            Text("My Value: \(value)")
                .font(.title)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .gesture(drag)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
