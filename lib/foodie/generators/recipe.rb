require 'thor/group'
module Foodie::Generators
  class Recipe < Thor::Group
    include Thor::Actions
    argument :group, type: :string
    argument :name, type: :string

    def create_group
      empty_directory("tmp/#{group}")
    end

    def copy_recipe
      template("recipe.txt", "tmp/#{group}/#{name}.txt")
    end

    def self.source_root
      File.dirname(__FILE__) + "/recipe"
    end
  end
end
