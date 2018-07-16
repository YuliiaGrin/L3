//
//  ViewController.swift
//  1
//
//  Created by MacBook on 11.07.2018.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("-----Первый блок задач-----")
        
        print("Задача 0")
        //Вывести на экран наибольшее из двух чисел
        let randomNumber1 = arc4random()%10000
        let randomNumber2 = arc4random()%10000
        if randomNumber1 > randomNumber2  {
            print("Первое рандомное число больше \(randomNumber1) > \(randomNumber2)")
        }
        else if randomNumber1 < randomNumber2 {
            print("Второе рандомное число больше \(randomNumber1) < \(randomNumber2)")
        }
        else {
            print("Рандомные числа равны \(randomNumber1) = \(randomNumber2)")
        }
        
        print("Задача 1")
        //Вывести на экран квадрат и куб числа
        let randomNumber = arc4random()%10
        let squareOfNumber = randomNumber * randomNumber
        let cubeOfNumber = squareOfNumber * randomNumber
        print("Квадрат числа \(randomNumber) равен \(squareOfNumber), а куб числа \(randomNumber) равен \(cubeOfNumber)")
        
        print("Задача 2")
        //Вывести на экран все числа до заданного и в обратном порядке до 0
        var startNumber = 0
        var number = arc4random()%20
        print("Числа от 0 до \(number)")
        print(startNumber)
        for _ in 0..<number {
            startNumber += 1
            print(startNumber)
        }
        print("Числа от \(number) до 0")
        print(number)
        for _ in 0..<number {
            number -= 1
            print(number)
        }
        
        print("Задача 3")
        //Подсчитать общее количество делителей числа и вывести их
        var deliteli = 0
        var sum = 0
        for i in 1..<randomNumber1 {
            if randomNumber1 % i == 0 {
                print(i)
                deliteli += 1
                sum += Int(i)
            }
        }
        print ("Количество делителей числа \(randomNumber1) равно \(deliteli)")
        
        print("Задача 4")
        //Проверить, является ли заданное число совершенным и найти их
        if sum == randomNumber1 {
            print ("Число \(randomNumber1) является совершенным")
        }
        else {
            print ("Число \(randomNumber1) не является совершенным")
        }
        
        print("-----Второй блок задач-----")
        
        print("Задача 1")
        //Остров Манхэттен
        var money = 24.00
        for _ in 1826..<2018 {
            money += money/100 * 6
        }
        print ("Состояние счета к 2018 году составило бы", money)
        
        print("Задача 2")
        //Студент 10 месяцев
        let stipend = 700.00
        var costsInMonth = 1000.00
        var totalCosts = 0.00
        for _ in 0..<10 {
            costsInMonth += costsInMonth/100 * 3
            totalCosts += costsInMonth
        }
        print ("Чтобы прожить студенту на одну стипендию весь учебный год (10 месяцев), нужно иметь накопления в размере", totalCosts - stipend*10)
        
        print("Задача 3")
        //Студент, сколько протянет
        let accumulation = 2400.00
        var month = 0
        costsInMonth = 1000.00
        totalCosts = 0.00
        while accumulation>totalCosts {
            costsInMonth += costsInMonth/100 * 3
            totalCosts += costsInMonth - stipend
            month += 1
        }
        print ("Студент, используя только накопления и стипендию, сможет прожить \(month) месяцев")
        
        print("Задача 4")
        //Перевернуть число
        let mainNumber: UInt32 = 1432
        number = mainNumber
        var n1 = number % 10
        number /= 10
        var n2 = number % 10
        number /= 10
        var n3: UInt32 = 0
        var n4: UInt32 = 0
        if number != 0 {
            n3 = number % 10
            number /= 10
            n4 = number % 10
            print("Число \(mainNumber) задом на перед", n1*1000+n2*100+n3*10+n4)
        }
        else {
            print("Число \(mainNumber) задом на перед", n1*10+n2)
        }
        
    }
    
}
