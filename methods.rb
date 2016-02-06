
class 
end

# >> METHOD #1 << ALPHABETIZE ARRAYS A-Z | 1-2-3 || Z-A | 3-2-1
def alphabetize(array, rev=false)
  if rev == true
    array.sort!
    return array.reverse!

  else
    return array.sort!
  end

end

numbers = [1,8,9,12,6,4]
puts alphabetize(numbers, true)

## OUTPUT A-Z or 1-2-3
1
4
6
8
9
12

## if puts alphabetize(numbers, false)
## OUTPUT Z-A or 3-2-1
12
9
8
6
4
1

############################# END METHOD #1 - ALPHABETIZE ##########################################

!! # >> METHOD #2 Create, Read, Update, Delete (crudtable)


  movies =  {
      Batman:  9.8,
      Superman:  9.2,
      Iron_Man:  8.6,
      The_Grey:  4,
      The_Shawshank_Redemption:  10
  }

  puts "Do you want to add, delete, display or delete a movie?"
  puts "-- type 'add' to add"
  puts "-- type 'update' to update"
  puts "-- type 'display' to display"
  puts "-- type 'delete' to delete"

  choice = gets.chomp

  case choice
    when 'add'
      puts "What is the title of the movie that you want to add?"
      title = gets.chomp
      title = title.to_sym

      if movies[title.to_sym].nil?
        puts "What is the rating of this movie?"
        rating = gets.chomp
        rating = rating.to_i
        movies[title.to_sym] = rating.to_i
        puts "Movie was added succesfully. Title: #{title.to_sym}, rating      : #{rating}"

      else
        puts "That movie already exists!"
      end


    when 'update'
      puts "Enter the title of the movie that you want to update"
      title = gets.chomp

      if movies[title.to_sym].nil?
        puts "Unfortunately that movie is not on the list!"

      else
        puts "Put the new rating here [0 - 10]"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title.to_sym} has got a new rating of #{rating.to_i}"
      end

    when 'display'
      movies.each do |keys, values|
        puts "#{keys}: #{values}"
      end

    when 'delete'
      puts "Enter the title of movie that you want to delete"
      title = gets.chomp

      if movies[title.to_sym].nil?
        puts "That movie is not even on the list papi!"

      else
        movies.delete(title.to_sym)
        puts "The movie was deleted succesfully"
      end

    else
      puts "It looks like you didnt enter a correct "

  end


############################# END METHOD #2 - Create, Read, Update, Delete - CRUD ##########################################