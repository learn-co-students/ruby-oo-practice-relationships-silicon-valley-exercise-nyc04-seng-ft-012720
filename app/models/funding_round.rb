class FundingRound

    attr_reader :startup, :venture_capitalist, :type, :investment
    ALL = []

    def initialize(startup, venture_capitalist, type, investment) 
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment
        ALL << self
    end
    
    def self.all 
        ALL
    end

end
