-- Лабораторна робота №5: Розробка прикладних програм мовою Haskell
-- Cтудента групи АнД-31
-- Пивовара Володимира
-- Варіант №9

-- Мета роботи: Ознайомитись з модульною органiзацiєю програм та засобами введення-виведення.
-- Набути досвiду компiляцiї Haskell-програм.


-- Програма з лабораторної роботи №3:
-- Видалити кожен n-й елемент списку, напр. при n=2: "1234590" -> "1350":

delElem _ [] = []
delElem n xs = take (n-1) xs ++ delElem n (drop n xs)



-- Варіант 1: Клавіатура --> Консоль

keyboardConsole = do
	putStrLn "Enter row and then number wich every element to delete"
	row <- getLine
	number <- getLine
	let n = read number :: Int
	let result = delElem n row
	print result


-- Варіант 2: Клавіатура --> Файл

keyboardFile = do
	putStrLn "Enter row and then number wich every element to delete"
	row <- getLine
	number <- getLine
	let n = read number :: Int
	let result = delElem n row
	writeFile "D:\\fp2021\\Lab5\\outputFromFile.txt" (show result)


-- Варіант 3: Файл --> Консоль

fileConsole = do
	row <- readFile "D:\\fp2021\\Lab5\\inputRow.txt"
	number <- readFile "D:\\fp2021\\Lab5\\inputNumber.txt"
	let n = read number :: Int
	let result = delElem n row
	print result


-- Варіант 4: Файл --> Файл

fileFile = do
	row <- readFile "D:\\fp2021\\Lab5\\inputRow.txt"
	number <- readFile "D:\\fp2021\\Lab5\\inputNumber.txt"
	let n = read number :: Int
	let result = delElem n row
	writeFile "D:\\fp2021\\Lab5\\outputFromFile.txt" (show result)