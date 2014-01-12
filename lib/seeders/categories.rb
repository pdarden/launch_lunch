module Seeders
  module Categories
    class << self
      def seed
        categories.each do |name|
          Category.find_or_create_by(name: name)
        end
      end

      def categories
        [
          "Meat Luvva",
          "Sea Creatures",
          "Shit Ton for CHEAP!",
          "No Animals Harmed?",
          "Snacks"
        ]
      end
    end
  end
end
