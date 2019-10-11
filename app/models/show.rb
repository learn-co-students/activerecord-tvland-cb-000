class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_to_return = []
    self.actors.all.each do |actor|
      actors_to_return << actor.full_name
    end
    actors_to_return
  end
end
