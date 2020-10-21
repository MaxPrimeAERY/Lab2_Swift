//
//  main.swift
//  Lab2_Swift
//
//  Created by Admin on 05.10.2020.
//

import Foundation
import Cocoa

let myHello : String = "Hello, world";
var myArr = [Double]();

print(myHello);

print("My array size =  \(myArr.count)");

if (myArr.count == 0){
    myArr.append(5.5)
    print("My array =  \(myArr)");
}

for item in myArr{
    print("My item =  \(item)");
}

//saveTest();
matrixPrint();

func saveTest(){
    let str = "Super long string here"
    let filename = getDocumentsDirectory().appendingPathComponent("output.txt")

    do {
        try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
    } catch {
        // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
    }
}

func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    print("My path  1 =  \(paths[0])")
    return paths[0]
}

func matrixPrint(){
    let points: [[Int]] = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]

    for i in 0..<points.count{
        var line = ""
        for j in 0..<points[i].count{
            line += String(points[i][j])
            line += " "
        }
        print(line)
    }

}


