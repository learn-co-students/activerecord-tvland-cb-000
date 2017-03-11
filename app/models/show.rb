class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(attributes)
    network = Network.new(attributes)
    self.network = network
  end
end