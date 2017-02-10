require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows , through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    binding.pry
    characters.collect do |x|
      "${x.name} - ${x.show_name}"
    end
  end
end
