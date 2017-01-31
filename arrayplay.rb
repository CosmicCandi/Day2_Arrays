#!/usr/bin/env ruby

our_class = ["Ron", "David", "Nancy", "Kalea", "Laura", "Dave", "Demetra", "Phil",
"Ben", "Kendrick", "Michael", "Miguel"]

#Explorer Mode
#Find all students whose name is less than 5 characters
#Looking for Ron, Dave, Phil, and Ben to be printed
puts "These students have names with less than 5 characters:"
our_class.each do |student|
  if student.length < 5
    puts student
  end
end

#Turn a Sentence into an Array, select words that are 4 chars long
sentence = "Ruby is actually kind of fun once you get used to it."
sentence_array = sentence.split

#Debugging to see if above code split the sentence properly
#  puts sentence_array

puts "These words have a length less than 4:"
sentence_array.each do |smallwords|
  if smallwords.length < 4
        puts smallwords
  end
end

#Create an array of movies with budgets less than 100, another array of movies that
#starred Leonardo DiCaprio
movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

#Create an array for movies with a budget less than 100
puts "The following movies have a budget less than 100:"
budget100 = []
movies.each do |budget|
  if budget[:budget] < 100
    puts budget[:title]
    budget100 << budget[:title]
  end
end

puts "This is the Budget100 Array:\n #{budget100}"

#Create an array for movies starring Leonardo DiCaprio
puts "The following movies starred Leonardo DiCaprio: "
arrayDiLeo = []
movies.each do |leo|
  if leo[:stars].include? "Leonardo DiCaprio"
    puts leo[:title]
    arrayDiLeo << leo[:title]
  end
end

puts "This is the arrayDiLeo: \n #{arrayDiLeo}"

#Output all answers to the above into the Command Line
