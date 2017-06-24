#Monkeys And Coconuts
#Fergus Farrell - 23/06/2017

#'n' number of men have washed up on the shore of a deserted island.
#They gather all the coconuts on the island and stack them in the middle.
#The men do not trust each other so in the night, 1 by 1, each man:
#   - Splits the coconut pile into n equal piles, there is always 1 coconut left over (which he gives to the monkey)
#   - The man then hides 1 pile and puts remaining piles together to reform the large pile
#The next day, the pile divides perfectly between all men

#Link to problem: https://www.youtube.com/watch?v=U9qU20VmvaU

#Question: What is the minimum number of coconuts n men could start with?

def splitPile(n, men)
  if men == 0 && n % @men == 0 && n > 0
    return true
  end
  n = n - (n-1)/(@men * 1.0) - 1
  if n % 1 != 0
    return false
  end
  splitPile(n, men-1)
end

def main(men)
  if men <= 0
    puts "Starting number of men must be more than 0"
    return
  end
  if men == 1
    puts "Starting Coconuts for 1 man: 2"
    return
  end
  @men = men
  i = 2
  found = false
  while !found do
    found = splitPile(i, men)
    i = i + 1
  end
  puts "Starting Coconuts for #{@men} men: #{i-1}"
end

main(5) #Main variable is number of men
