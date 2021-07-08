class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters 
  
  
  def full_name 
    return self.first_name + " " + self.last_name
  end 
  
  def list_roles
    roles = []
    show_names = []
    
    self.characters.each do |character|
      roles << character.name 
    end 
    
    self.shows.each do |show|
      show_names << show.name 
    end
    
    roles = roles.join()
    show_names = show_names.join()
    
    return roles + " - " + show_names
  
  end 

end