-- Лабораторна робота №2: Функції вищого порядку
-- Студента групи АнД-31
-- Пивовара Володимира
-- Варіант №9

-- Мета роботи: Набути досвiду визначення та використання функцiй вищого порядку


-- Завдання 1. Видалити кожен n-й елемент списку, напр. при n=2: "1234590" -> "1350"

delElem _ [] = []
delElem n xs = take (n-1) xs ++ delElem n (drop n xs)



-- Завдання 2. Знайти перше просте число в указаному дiапазонi

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
	  | otherwise = True

findPrime range =
	if length [i | i <- range, isPrime i] > 0 then head [i | i <- range, isPrime i]
	else 0