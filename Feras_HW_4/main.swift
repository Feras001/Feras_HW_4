//
//  main.swift
//  Feras_HW_4
//
//  Created by Feras Shaker on 02.08.2020.
//  Copyright © 2020 Feras Shaker. All rights reserved.
//

import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

enum EngineState {
    case on, off
}

enum WindowState {
    case open, close
}

enum TrunkState {
    case full, empty
}

enum DoorState {
    case open, close
}

enum Transmission {
    case manual, auto
}

enum Protection {
    case yes, no
}
enum State {
    case new, old
}
enum Wheelchair {
    case yes, no
}

class SportCar {
    var year: Int
    var wheels: Int
    var mileage: Double
    var engineState: EngineState
    var protection: Protection
    var state: State
    static var windowProduction = 0
    init(year: Int, wheels: Int, mileage: Double, engineState: EngineState, protection: Protection, state: State) {
            self.year = year
            self.wheels = wheels
            self.mileage = mileage
            self.engineState = engineState
            self.protection = protection
            self.state = state
        
        SportCar.windowProduction += 1
        }
   static func productionCarWindows(){
    print("Произведено \(self.windowProduction) окон")
  }
}

class Motobike {
    var year: Int
    var wheels: Int
    var mileage: Double
    var engineState: EngineState
    static var protectionProduction = 0
    var state: State
    init(year: Int, wheels: Int, mileage: Double, engineState: EngineState, protection: Protection, state: State) {
        self.year = year
        self.wheels = wheels
        self.mileage = mileage
        self.engineState = engineState
        self.state = state
        
        Motobike.protectionProduction += 1
    }
    static func productionBikeProtection(){
        print("Призведено \(self.protectionProduction) защиты")
    }
}
class Chopper: Motobike {
    var Wheelchair: Wheelchair
     init(year: Int, wheels: Int, mileage: Double, engineState: EngineState, protection: Protection, state: State, Wheelchair: Wheelchair) {
        self.Wheelchair = Wheelchair
        super.init(year: 2019, wheels: 2, mileage: 0, engineState: .off , protection: .no, state: .new)
    }
}

let mersedec = SportCar(year: 2019, wheels: 4, mileage: 10002, engineState: .off, protection: .no, state: .old)
let ducati = Motobike(year: 2020, wheels: 2, mileage: 0, engineState: .on, protection: .yes, state: .new)
let harley = Motobike(year: 2018, wheels: 2, mileage: 3600, engineState: .off, protection: .yes, state: .old)

print(SportCar.productionCarWindows)
SportCar.productionCarWindows()
print(Motobike.productionBikeProtection)
Motobike.productionBikeProtection()



