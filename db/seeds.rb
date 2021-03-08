######CATEGORIES
sports = Category.create(category: "sports")
music = Category.create(category: "music")
movies = Category.create(category: "movies")
geography = Category.create(category: "geography")
food = Category.create(category: "food")

######SPORTS QUESTIONS
Question.create(category: sports, the_question: "The Olympics are held every how many years?", point_value: 1, answer1: "1", answer2: "2", answer3: "4", answer4: "8", correct_answer: "4", hint: "Answer % 2 === 0")
Question.create(category: sports, the_question: "What do you call 3 consecutive strikes in bowling?", point_value: 6, answer1: "Rooster", answer2: "Homerun", answer3: "Turkey", answer4: "Dovetail", correct_answer: "Turkey", hint: "It flies, but not very far")
Question.create(category: sports, the_question: "What is the most watched sport in the USA?", point_value: 3, answer1: "Football", answer2: "Motor Sports", answer3: "Baseball", answer4: "Basketball", correct_answer: "Football", hint: "The name is controversial")
Question.create(category: sports, the_question: "How many dimples does an average golf ball have?", point_value: 10, answer1: "400", answer2: "336", answer3: "382", answer4: "333", correct_answer: "336", hint: "Answer % 2 === 0")

######MUSIC QUESTIONS
Question.create(category: music, the_question: "What singer has had a Billboard No. 1 hit in each of the last 3 decades?", point_value: 8, answer1: "Janet Jackson", answer2: "Mariah Carey", answer3: "Whitney Houston", answer4: "Britney Spears", correct_answer: "Mariah Carey", hint: "Oh baby baby we belong together")
Question.create(category: music, the_question: "Who was the first American Idol Winner?", point_value: 5, answer1: "Clay Aiken", answer2: "Ruben Studdard", answer3: "Kelly Clarkson", answer4: "Kris Allen", correct_answer: "Kelly Clarkson", hint: "This person now has their own TV show")
Question.create(category: music, the_question: "Eminem's 8 Mile Road is named after a road in which city?", point_value: 4, answer1: "New York City", answer2: "Detroit", answer3: "Chicago", answer4: "Los Angeles", correct_answer: "Detroit", hint: "Eminem didn't have a side in the eastcoast westcoast Hip Hop feuds.")
Question.create(category: music, the_question: "Jimi Hendrix only had one Top 40 hit. Which song was it?", point_value: 6, answer1: "Purple Haze", answer2: "Ezy Ryder", answer3: "Foxy Lady", answer4: "All Along the Watchtower", correct_answer: "All Along the Watchtower", hint: "This song is considered 'the ultimate cover song'")

######MOVIES QUESTIONS
Question.create(category: movies, the_question: "In The Matrix, what color pill does Neo take?", point_value: 3, answer1: "Red", answer2: "Green", answer3: "Blue", answer4: "Orange", correct_answer: "Red", hint: "Orange you glad you didn't pick this answer?")
Question.create(category: movies, the_question: "What's the name of the skyscraper in Die Hard?", point_value: 9, answer1: "The Empire State Building", answer2: "Nakatomi Plaza", answer3: "Taipei 101", answer4: "The Shard", hint: "It's not real")
Question.create(category: movies, the_question: "The head of what kind of animal is put in someone's bed in the infamous scene from The Godfather?", point_value: 5, answer1: "Tuna", answer2: "Chicken", answer3: "Crocodile", answer4: "Horse", correct_answer: "Horse", hint: "It's a land animal")
Question.create(category: movies, the_question: "In Risky Business what song did Tom Cruise famously lip-sync in his underwear?", point_value: 7, answer1: "Old Time Rock and Roll", answer2: "Don't Wanna Miss a Thing", answer3: "Yellow Submarine", answer4: "Smells Like Teen Spirit", correct_answer: "Old Time Rock and Roll", hint: "The song was released in the 70s")

######GEOGRAPHY QUESTIONS
Question.create(category: geography, the_question: "China has how many time zones?", answer1: "3", answer2: "6", answer3: "1", answer4: "4", point_value: 6, correct_answer: "1", hint: "Big country with not as many time zones as you'd think")
Question.create(category: geography, the_question: "How many deserts are there in Europe?", point_value: 4, answer1: "0", answer2: "7", answer3: "3", answer4: "11", correct_answer: "0", hint: "It's either more or fewer than you think")
Question.create(category: geography, the_question: "What is the smallest country in the world?", point_value: 3, answer1: "Luxembourg", answer2: "Monaco", answer3: "Vatican City", answer4: "Bermuda", correct_answer: "Vatican City", hint: "Its name is a misnomer")
Question.create(category: geography, the_question: "Where can you find the 'Spanish Steps'?", point_value: 7, answer1: "Rome", answer2: "Barcelona", answer3: "Paris", answer4: "Madrid", correct_answer: "Rome", hint: "The name is deceiving")

######FOOD QUESTIONS
Question.create(category: food, the_question: "Almonds are considered seeds or nuts?", point_value: 6, answer1:"True", answer2: "False", answer3: "Neither", answer4: "Fruits", correct_answer: "True", hint: "To be a fruit it must contain seeds")
Question.create(category: food, the_question: "What was the first food eaten in space?", point_value: 10, answer1: "Banana", answer2: "Applesauce", answer3: "Apple", answer4: "Chocolate chip cookie", correct_answer: "Applesauce", hint: "It was sweet, but not that sweet")
Question.create(category: food, the_question: "In what country did French Fries originate?", point_value: 7, answer1: "France", answer2: "The USA", answer3: "Argentina", answer4: "Belgium", correct_answer: "Belgium", hint: "The name may be a bit of a misnomer")
Question.create(category: food, the_question: "Many red candies get their color from carmine, which is obtained from: ", point_value: 8, answer1: "Boiled beetles", answer2: "Food coloring", answer3: "Red apple skins", answer4: "Chicken blood", correct_answer: "Boiled beetles", hint: "We are sorry for providing you with this information")
