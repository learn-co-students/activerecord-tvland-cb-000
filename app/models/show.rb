# class Show < ActiveRecord::Base
#   has_many :characters
#   has_many :actors, through: :characters
#   belongs_to :network
# end

class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  has_many :characters
  belongs_to :network
end
