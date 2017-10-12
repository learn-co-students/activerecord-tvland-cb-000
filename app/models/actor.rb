require 'pry'
class Actor < ActiveRecord::Base
  #Associate the Actor model with the Character and Show model.
  #An actor should have many characters and many shows through characters.
  has_many :characters
  has_many :shows, through: :characters

  # TODO create an instance method on actor called full_name to return first and
  #last name together
  def full_name
    self.first_name + " " + self.last_name
  end


  # TODO create a list_roles method
  # TODO: build a method on actor that will return an array of
  # strings in the form "#{character_name} - #{show_name}"
  def list_roles
    roles = []
    self.characters.each do |c|
      roles << c.name + " - " + c.show.name
    end

    roles
  end
end
