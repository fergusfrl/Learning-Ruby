#Monkeys And Coconuts
#Fergus Farrell - 23/06/2017

#'n' number of men have washed up on the shore of a deserted island.
#They gather all the coconuts on the island and stack them in the middle.
#The men do not trust each other so in the night, 1 by 1, each man:
#   - Splits the coconut pile into n equal piles, there is always 1 coconut left over (which he gives to the monkey)
#   - The man then hides 1 pile and puts remaining piles together to reform the large pile
#The next day, the pile divides perfectly between all men

#Question: What is the minimum number of coconuts the men could start with?

def check(n, men)
  if men == 0 && n%@men == 0
    return true
  end
  n = n - (n-1)/(@men * 1.0) - 1
  if n % 1 != 0
    return false
  end
  check(n, men-1)
end

def main(men)
  @men = men
  i = 0
  found = false
  while !found do
    found = check(i, men)
    i = i + 1
  end
  puts "Starting Coconuts: #{i-1}"
end

main(5)
