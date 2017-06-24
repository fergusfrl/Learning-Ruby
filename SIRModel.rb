#Susceptible, Infected, Recovered Model
#Fergus Farrell - 24/06/2017

#Models the spread of a disease through a population.
#Individuals can be S - succepable, I - infected or R - recovered
#Input: SizeOfPopulation, InitialNoInfected, S->I rate, I->R rate, S->R rate
#Input Example: 10000, 10, 0.01, 0.01, 0.015
#Output: Number of generations until total population is Recovered and number of individuals left

def diseaseSpread(pop, s, i, r, sIRate, sRRate, iRRate)
  gen = 0
  while s > 0 && i > 0 do
    i = i + s*sIRate
    r = r + (i*iRRate) + (s*sRRate)
    s = pop - i - r
    puts gen
    puts "S: #{s}, I: #{i}, R: #{r}"
    gen = gen+1
  end
end

pop = 10
i = 1
s = pop-i
r = 0
sIRate = 0.1
sRRate = 0.1
iRRate = 0.01
diseaseSpread(pop, s, i, r, sIRate, sRRate, iRRate)

