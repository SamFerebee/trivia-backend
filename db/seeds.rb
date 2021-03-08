sam = User.create(username: "sam")
sports = Category.create(category: "sports")
Question.create(category: sports, point_value: 5, answer1: "one", answer2: "two", answer3: "three", answer4: "four", hint: "hint here", correct_answer: "one")
the_game = Game.create(user: sam, category: sports, score: 0, user_difficulty: 0)