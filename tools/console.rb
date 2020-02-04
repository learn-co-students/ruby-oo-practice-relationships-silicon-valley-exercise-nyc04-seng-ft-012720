require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

abid = VentureCapitalist.new(10)
abid.name = "Abid"


firuz = VentureCapitalist.new(20)
firuz.name = "Firuz"


gurjot = VentureCapitalist.new(30000000000)
gurjot.name = "Gurjot"


flatiron = Startup.new("Avi", "flatiron dot website")
deli = Startup.new("Deli Guy", "deli dot org")
york = Startup.new("Marty Markowitz", "monochan")

flatiron.name = "Flatiron"
deli.name = "The Deli"
york.name = "Trains"

FundingRound.new(flatiron, abid, "type a", 1)
FundingRound.new(flatiron, abid, "type b", 2)
FundingRound.new(flatiron, firuz, "type c", 3)
FundingRound.new(deli, abid, "type d", 4)
FundingRound.new(deli, firuz, "type e", 5)
FundingRound.new(york, gurjot, "type f", 6)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line