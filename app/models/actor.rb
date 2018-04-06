class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    holder = []
    self.characters.find_each {|char| holder.push("#{char.name} - #{char.show.name}")}
    holder
  end
end
