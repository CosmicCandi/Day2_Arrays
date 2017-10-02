#!/usr/bin/env ruby

our_class = ["Rob", "David", "Nancy", "Kalea", "Laura", "Dave", "Demetra", "Phil",
"Ben", "Kendrick", "Michael", "Miguel"]

### Explorer Mode ###
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

#Add an empty Line
puts "\n"

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

#Add an empty Line
puts "\n"

#Create an array for movies with a budget less than 100
puts "The following movies have a budget less than 100:"
budget100 = []
movies.each do |budget|
  if budget[:budget] < 100
    puts budget[:title]
    budget100 << budget[:title]
  end
end

#Add an empty Line
puts "\n"

puts "This is the Budget100 Array:\n #{budget100}"

#Add an empty Line
puts "\n"

#Create an array for movies starring Leonardo DiCaprio
puts "The following movies starred Leonardo DiCaprio: "
arrayDiLeo = []
movies.each do |leo|
  if leo[:stars].include? "Leonardo DiCaprio"
    puts leo[:title]
    arrayDiLeo << leo[:title]
  end
end

#Add an empty Line
puts "\n"

puts "This is the arrayDiLeo: \n #{arrayDiLeo}"
#Output all answers to the above into the Command Line

## Adventure Mode ##
#Create a method that will always return words in a string that contain 4 letters
def four_words(text)
  sentence = "Ruby is actually kind of fun once you get used to it."
  sentence_array = sentence.split
  sentence_array.each do |smallwords|
    if smallwords.length == 4
      puts smallwords
    end
  end
end

#Add an empty Line
puts "\n"

puts "Prepare for output from the four_words method!"
four_words(sentence)

#Make a method that will return the words in a string that are x characters Looking
def how_many_words(text, num)
  sentence = "Ruby is actually kind of fun once you get used to it."
  sentence_array = sentence.split
  sentence_array.each do |xwords|
    if xwords.length == num
      puts xwords
      #puts "We're sorry, none of the words matched your requested length."
    end
  end
end

#Add an empty Line
puts "\n"

puts "Prepare for output from the how_many_words method!"
how_many_words(sentence, 3)

#Add an empty Line
puts "\n"

#Get the total budget of all of our movies
puts "Now we'll get the budget total for all of the movies..."
budget_total = 0
movies.each do |moviebudget|
   budget_total += moviebudget[:budget]
 end

puts "The total budget of all movies is: #{budget_total}! Wow!"

#Add an empty Line
puts "\n"

### Epic Mode ENGAGE! ###
#RE: Movies Array, produce an array grouped by each star
star_array = []
movies.each do |star|
  star_array << star[:stars]
  star_array.flatten!(1)
  star_array.uniq!
end

puts "This is the contents of the star_array: #{star_array}"

#Add an empty Line
puts "\n"

#Calculate the average of movie budgets
average = 0
averagecounter = movies.count
movies.each do |avgtotal|
  #Used for Average Division
  average += avgtotal[:budget]
  #Puts Debugging to see the values held by average
  #puts "average is at: #{average} \n"
end

averagetotal = average / averagecounter
puts "The total average budget calculation is: #{average} divided by #{averagecounter}
= $#{averagetotal}"

#Add an empty Line
puts "\n"

#Calculate the median budget
mediantotal = 0
movies.each do |budgetmedian|
median = []
median << budgetmedian[:budget]
#Unable to get Sort working.  Ending for the night
puts median.sort!
end
