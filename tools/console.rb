require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chess = Startup.new("chess", "Tom", "url a")
checkers = Startup.new("checkers", "Mavi", "url b")
mancala = Startup.new("mancala", "Tom", "url c")
frogger = Startup.new("frogger", "Daryl", "url d")

joe = VentureCapitalist.new("Joe", 1_000_000_001)
gurjot = VentureCapitalist.new("Gurjot", 2_000_000)
abid = VentureCapitalist.new("Abid", 1_500_000_000)

# chess.sign_contract(abid, "pre-seed", 500_000)
# chess.sign_contract(joe, "pre-seed", 500_000)
# chess.sign_contract(gurjot, "pre-seed", 400_000)
# checkers.sign_contract(joe, "pre-seed", 200_000)
# chess.sign_contract(abid, "pre-seed", 600_000)
# mancala.sign_contract(joe, "pre-seed", 500_000)
# mancala.sign_contract(gurjot, "pre-seed", 300_000)
# frogger.sign_contract(joe, "pre-seed", 1_000_000)

joe.offer_contract(chess, "pre-seed", 5_000_000)
abid.offer_contract(chess, "pre-seed", 500_000_000)
abid.offer_contract(chess, "pre-seed", 50_000_000)
gurjot.offer_contract(chess, "pre-seed", 500_000)
joe.offer_contract(checkers, "pre-seed", 500_000)
abid.offer_contract(checkers, "pre-seed", 500_000)
gurjot.offer_contract(checkers, "pre-seed", 500_000)


pp abid.invested("url a")
