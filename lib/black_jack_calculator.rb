class BlackJackCalculator
  FACE_VALUES = %w(J Q K)
  ACE_VALUE = 'A'

  def initialize
    @cards = []
  end

  def score
    sum = 0
    @cards.each { |card| sum += card_score(card) }
    sum
  end

  def add_card(card)
    @cards << card
  end

  private

  def card_score(card)
    if FACE_VALUES.include?(card)
      10
    elsif card == ACE_VALUE
      11
    else
      card.to_i
    end
  end
end
