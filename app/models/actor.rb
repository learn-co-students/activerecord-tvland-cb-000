class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # def list_roles
  #   self.characters.all.collect do |c|
  #     "#{c.name} - #{self.shows[c.show_id].name}"
  #   end
  # end

  def list_roles
    self.shows.all.collect do |s|
      "#{self.characters.collect(&:name).first} - #{s.name}"
    end
  end

end
