class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(stuff)
      x = Network.create(stuff)
      self.network = x

    end
end
