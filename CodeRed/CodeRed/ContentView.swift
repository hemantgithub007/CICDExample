//
//  ContentView.swift
//  CodeRed
//
//  Created by 'MacBook' on 05/05/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    
    
    // Saperate String and Numbers
    func demo1()
    {
            let givenString : String = "hem3a6n9t"
            var collectString : String = ""
            var collectNumber : String = ""

            
            for (_, char) in givenString.enumerated()
            {
                if char.isNumber
                {
                    collectNumber.append(String(char))
                }
                else {
                    collectString.append(String(char))

                }
            }
            
            
            print(collectString)
            print(collectNumber)
    }

//-------------------------------------------------------------------------------------------------------
    
    // assending or decinding order
    func demo2() {
           
           var array : [Int] = [0,1,0,1,3,4,10,5,10,11,11,11]
           
           for i in 0..<array.count - 1 {
               for j in 0..<array.count - i - 1 {
                   
                   
                   if array[j+1] > array[j]
                   {
                       let temp = array[j]
                       array[j] = array[j+1]
                       array[j+1] = temp

                   }
                   
               }
           }
           
           
           print(array)
       }
    
    
    
//-------------------------------------------------------------------------------------------------------

    
    // two largest number
    func demo3() {
            let array : [Int] = [11,1,0,1,3,4,10,5,1,11,11,11]

            
            var fNum = Int.min
            var sNum = Int.min
            
            for i in 0..<array.count {
                
                if (array[i] > fNum) {
                    sNum = fNum
                    fNum = array[i]
                }
                else if(array[i] < fNum && array[i] > sNum) {
                    
                    sNum = array[i]
                    
                }
            }

            
            print(fNum)
            print(sNum)

        }
        
    
    
    // two Smalest Number
    
    func demo33() {
               let array : [Int] = [11,1,0,1,3,4,10,5,1,11,11,11]

               
               var fNum = array[0]
               var sNum = Int.max
               
               for i in 0..<array.count {
                   
                   if (array[i] < fNum) {
                       sNum = fNum
                       fNum = array[i]
                   }
                   else if(array[i] < fNum && array[i] != sNum) {
                       
                       sNum = array[i]
                       
                   }
               }

               
               print(fNum)
               print(sNum)

           }
           
    
//-------------------------------------------------------------------------------------------------------

    // Swaping
    func demo4() {
             var  a = 5, b = 7
//               
//              a = a + b
//              b = a - b
//              a = a - b
//             
        
        a = a ^ b
        b = a ^ b
        a = a ^ b
               print(a)
               print(b)
            }
            
    
    //-------------------------------------------------------------------------------------------------------

    
    
    // Remove Duplicates String
    
    func removeDuplicateWords() {
        var  myString : String = "I am from Delhi am City"
                    // substring array           // String Array
        let words = myString.split(separator: " ").map { String($0) }
        var seens : [String] = []
        print(words.customMirror.subjectType)
        
           for word in words {
               if !seens.contains(word){
                   seens.append(word)
               }
           }
        
        print("ghhhhhh \(seens)")
        
        let finalString = seens.joined(separator: " ")
        print("final String:  \(finalString)")

    }

            
    
    //-------------------------------------------------------------------------------------------------------
    

    var body: some View {
        VStack{
            Button(action: {
                self.demo4()
            }, label: {
                Text("Button")
            })
        }
    }

   
    
    
    
    
}


#Preview {
    ContentView()
}
