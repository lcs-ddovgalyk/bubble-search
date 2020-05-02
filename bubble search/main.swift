//
//  main.swift
//  bubble search
//
//  Created by Dovgalyk, Dima on 2020-05-02.
//  Copyright © 2020 Dovgalyk, Dima. All rights reserved.
//

import Foundation

//print("Hello, World!")
//create an empty array

var dataset: [Int] = []

for _ in 1...10 {
    dataset.append(Int.random(in: 1...100))
}
print("Original array \(dataset)")

//loop through an entire array
for i in 0..<dataset.count - 1 {
    //one pass through the array to float the highest number to the end

    for j in 0..<dataset.count - 1 {
        
        //compare the left value to the right value
        if dataset[j] > dataset [j+1] {
            //swap the values when left value is more than right value
            let temporaryValue = dataset[j]//set aside the left value

            dataset[j] = dataset[j+1] //replace left with right
            dataset[j+1] = temporaryValue //replace right with left
        }
       
    }
    print("Array after pass \(i) \(dataset)")

}
