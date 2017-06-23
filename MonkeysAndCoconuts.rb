#Monkeys And Coconuts
#Fergus Farrell - 23/06/2017

#'n' number of men have washed up on the shore of a deserted island.
#They gather all the coconuts on the island and stack them in the middle.
#The men do not trust each other so in the night, 1 by 1, each man:
#   Splits the coconut pile into n equal piles, there is always 1 coconut left over (which he gives to the monkey)
#   The man then hides 1 pile and puts remaining piles together to reform the large pile

#Question: What is the minimum number of coconuts the men could start with?

def main(men = 5)
  @men = men
  i = 0
  while true do
    if i >= 10
      break
    end
    splitPile(i)
    i = i+1
  end
end

def splitPile(n = 0)
  i = 0
  while i < @men
    n = n * 2 + 1
    i = i + 1
  end
  puts n
end

main
