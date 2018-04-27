class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def self.full_name
    self.full_name + self.last_name
  end
end
