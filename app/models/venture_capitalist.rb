class VentureCapitalist
    attr_accessor :name, :total_worth
    @@all = []

    def initialize(total_worth)
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select{|cap| cap.total_worth >= 1000000000}
    end

    def offer_contract(startup, type, amount)
        if self.total_worth >= amount
            FundingRound.new(startup, self, type, amount)
        else p "this dude broke"
        end
    end

    def funding_rounds
        FundingRound.all.select{|round| round.venture_capitalist == self}
    end
    def portfolio
        self.funding_rounds.map{|round| round.startup}.uniq
    end

    def biggest_investment
        self.funding_rounds.max_by{|rounds|rounds.investment}
    end

    def invested(dom)
        self.funding_rounds.reduce(0.0){|sum, round| sum + round.investment}
    end

end
