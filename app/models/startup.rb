class Startup
    
    attr_accessor :name, :domain
    attr_reader :founder
    ALL=[]

    def initialize(name, founder, domain) 
        @name = name
        @founder = founder
        @domain = domain
        ALL << self
    end

    def pivot(name, domain)
        self.name = name
        self.domain = domain
    end

    def self.all 
        ALL
    end

    def self.find_by_founder(founder_name)
        self.all.find do |startup|
            startup.founder == founder_name
        end
    end

    def self.domains
        self.all.map do |startup|
            startup.domain
        end
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds_startup
        FundingRound.all.select do |funding_round|
            funding_round.startup == self
        end
    end

    def num_funding_rounds_startup
        funding_rounds_startup.count
    end

    def total_funds
        total = 0
        funding_rounds_startup.each do |funding_round|
            total += funding_round.investment
        end
        total
    end

    def investors
        funding_rounds_startup.map do |funding_round|
            funding_round.venture_capitalist
        end
    end

    def big_investors
        investors.select do |investor|
            investor.total_worth >= 1_000_000_000
        end.uniq
    end

end
