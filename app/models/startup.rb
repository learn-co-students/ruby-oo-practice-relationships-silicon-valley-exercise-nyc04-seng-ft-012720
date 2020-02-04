class Startup

    attr_reader :founder
    attr_accessor :name, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(name, domain)
        self.name = name
        self.domain = domain
    end

    def self.find_by_founder(founder_str)
        self.all.find {|startup| startup.founder == founder_str}
    end

    def self.domains
        self.all.map {|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|fr| fr.startup == self}
    end

    def num_funding_rounds
        funding_rounds.count
    end

    def total_funds
        funding_rounds.reduce(0) {|sum, fr| sum + fr.investment}
    end

    def investors
        funding_rounds.map {|fr| fr.venture_capitalist}.uniq
    end

    def big_investors
        investors.select {|vc| VentureCapitalist.tres_commas_club.any? {|v| v == vc }}
    end
end
