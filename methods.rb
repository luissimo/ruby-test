
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

############################################################

# >> METHOD #2