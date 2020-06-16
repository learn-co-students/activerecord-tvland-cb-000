class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect do |c|
      show_name = Show.where("id = ?", c.show_id).first.name
      "#{c.name} - #{show_name}"
    end
  end
end
