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
#Output all answers to the above into the Command Line
