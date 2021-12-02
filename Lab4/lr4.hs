-- Лабораторна робота №4: Типи і класи типів
-- Студента групи АнД-31
-- Пивовара Володимира
-- Варіант №9

-- Мета роботи: Набути досвiду визначення та використання функцiй вищого порядку

--	Завдання: Зберiгаються данi про публiкацiї, якi можуть бути книгою (ав-
-- тор/спiвавтори, назва, мiсто, видавництво, рiк), статтею (автор/спiвавтори, на-
-- зва статтi, назва журналу, рiк, номер журналу, сторiнки) або тезами доповiдi
-- (автор/спiвавтори, назва доповiдi, назва конференцiї, мiсто, рiк, сторiнки). Ви-
-- значне функцiї для: пошуку видавництв/журналів/конференцій


data Book = Book String String String String Int deriving (Eq, Show)
book_author (Book author _ _ _ _) = author
book_name (Book _ name _ _ _) = name
place_publish (Book _ _ place _ _) = place
publisher (Book _ _ _ publish _) = publish
year_publish (Book _ _ _ _ year) = year

books = [(Book "Joanne Rowling" "Harry Potter" "London" "Bloomsbury" 1997),
	(Book "Oskar Wilde" "The Picture of Dorian Gray" "London" "Lippincott's Monthly Magazine" 1890),
	(Book "Mikhail Bulgakov" "The Master and Margarita" "Paris" "YMCA Press" 1967),
	(Book "Daniel Defoe" "Robinson Crusoe" "UK" "William Taylor" 1719),
	(Book "Fyodor Dostoyevsky" "Crime and Punishment" "USSR" "The Russian Messenger" 1866)]



bookByPublisher publish (x : xs) =
	if publish == publisher x
		then book_name x
		else bookByPublisher publish xs

searchByPublisher publish = bookByPublisher publish books