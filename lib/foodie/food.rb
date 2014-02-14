require "active_support/inflector"
module Foodie
  class Food
    class << self
      def portray(food)
        if food.downcase == "milk"
          "delicious"
        else
          "gross"
        end
      end

      def pluralize(word)
        word.pluralize
      end
    end
  end
end
