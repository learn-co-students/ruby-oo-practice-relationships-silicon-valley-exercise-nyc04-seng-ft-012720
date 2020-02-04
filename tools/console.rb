require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chess = Startup.new("chess", "Tom", "url a")
checkers = Startup.new("checkers", "Mavi", "url b")
mancala = Startup.new("mancala", "Tom", "url c")
frogger = Startup.new("frogger", "Daryl", "url d")

joe = VentureCapitalist.new("Joe", 1_000_000_001)
gurjot = VentureCapitalist.new("Gurjot", 2_000_000)
abid = VentureCapitalist.new("Abid", 1_500_000_000)

chess.sign_contract(joe, "pre-seed", 500_000)
chess.sign_contract(joe, "pre-seed", 400_000)
chess.sign_contract(gurjot, "pre-seed", 400_000)
checkers.sign_contract(joe, "pre-seed", 200_000)
chess.sign_contract(abid, "pre-seed", 600_000)
mancala.sign_contract(joe, "pre-seed", 500_000)
mancala.sign_contract(gurjot, "pre-seed", 300_000)
frogger.sign_contract(joe, "pre-seed", 1_000_000)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line