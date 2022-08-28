class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters


    def characters
        self.characters
    end

    def shows
        self.shows
    end

    def full_name
        first = self.first_name
        last = self.last_name
        full_name = first + " " + last
    end

    def list_roles
        all_characters = self.characters
        all_characters.map do |char|
            "#{char.name} - #{char.show.name}"
        end
    end

end