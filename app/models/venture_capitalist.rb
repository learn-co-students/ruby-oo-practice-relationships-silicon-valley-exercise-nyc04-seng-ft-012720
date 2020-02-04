class VentureCapitalist

    attr_accessor :total_worth
    attr_reader :name
    ALL= []

    def initialize(name, total_worth) 
        @name = name
        @total_worth = total_worth
        ALL << self
    end

    def self.all 
        ALL
    end

    def self.tres_commas_club
        self.all.select do |venture_capitalist|
            venture_capitalist.total_worth >= 1_000_000_000
        end
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select do |funding_round|
            funding_round.venture_capitalist == self
        end
    end

    def portfolio
        funding_rounds.map do |funding_round|
            funding_round.startup
        end.uniq
    end

    def biggest_investment
        funding_rounds.max_by do |funding_round|
            funding_round.investment
        end
    end

    def invested(domain)
        total_investments = 0
        FundingRound.all.select do |funding_round|
            if funding_round.startup.domain == domain
                total_investments += funding_round.investment
            end
        end
        total_investments
    end

end
