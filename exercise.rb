require 'pry'
def select_cards(possible_cards, hand)

  while hand.length < 3
    possible_cards.each do |current_card|
      # binding.pry
      # if answer.downcase == 'y'
      #   hand << current_card
      #   if hand.length == 3
      #     puts
      #     puts "You have selected #{hand.length} cards, you cannot select any more"
      #     puts
      #     return hand
      #   end
      # end
        print "Do you want to pick up #{current_card}?"
        answer = gets.chomp
        if answer.downcase == 'y'
          hand << current_card
            if hand.length == 3
              puts
              puts "You have selected #{hand.length} cards, you cannot select any more"
              puts
              return hand
            end
        end
      end

  end

  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']
new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
