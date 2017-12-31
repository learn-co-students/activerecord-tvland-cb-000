require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #binding.pry
    self.first_name + " " + self.last_name
  end

  def list_roles
    #binding.pry
    character = self.characters.collect {|c| c.name}
    show = self.shows.collect {|s| s.name}
    show_character = character + show
    show_character.join(" - ")
  end
end
