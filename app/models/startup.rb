class Startup
    attr_accessor :name, :domain
    attr_reader :founder
    @@all = []

    def initialize(founder, domain)
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder(foundername)
        self.all.find{|startup|startup.founder == foundername}
    end

    def self.domains
        self.all.map{|startup| startup.domain}
    end

    def sign_contract(cap, type, amount)
        if cap.total_worth >= amount
            FundingRound.new(self, cap, type, amount)
        else p "this dude broke"
        end
    end

    def funding_rounds
        FundingRound.all.select{|round| round.startup == self}
    end

    def num_funding_rounds
        self.funding_rounds.length
    end

    def total_funds
        self.funding_rounds.reduce(0.0){|sum, round| sum + round.investment}
    end

    def investors
        self.funding_rounds.map{|round| round.venture_capitalist}.uniq
    end
    
    def big_investors
        self.investors.select{|investor| investor.total_worth >= 1000000000}
    end

end
