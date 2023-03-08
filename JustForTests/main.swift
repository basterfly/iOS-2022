//
//  main.swift
//  JustForTests
//
//  Created by Yegor Kozlovskiy on 20.02.2022.
//

import Foundation


var array = [1, 3, 5, 7]
array[1] = 9
print(array)
print(array[1])

let arrayCount = array.count // кол-во элементов
print(arrayCount)
array.append(3) // добавляет значение как новый элемент в конец массива
array.insert(4, at: 2) // Добавлет новый элемент по указанному индексу
print(array)
array.remove(at: 1) // Удаление элемента по индексу
print(array)
array.removeAll() // Удаление элементов массива
print(array)

