class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name=self.first_name + " " + self.last_name
  end

  def list_roles
    roles = []
      for r in self.characters
        role = r.name + " - " + r.show.name
        roles.push(role)
      end
    roles
  end

end
