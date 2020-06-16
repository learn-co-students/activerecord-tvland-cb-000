class Show < ActiveRecord::Base
  attr_accessor :day, :season

  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(network)
    n = Network.create(network)
    n.shows << self
  end
end
