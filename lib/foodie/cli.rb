require 'thor'
require 'foodie'
require 'foodie/generators/recipe'

module Foodie
  class CLI < Thor

    desc "portray ITEM", "portray a food delicious or gross"
    def portray(item)
      puts Foodie::Food.portray(item)
    end

    desc 'pluralize', 'pluralize an item'
    method_option :word, aliases: '-w', required: true
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end

    desc 'recipe', 'make a recipe'
    def recipe(group, name)
      Foodie::Generators::Recipe.start([group, name])
    end
  end
end
