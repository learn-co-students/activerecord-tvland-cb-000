class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_network (network)
    n = Network.create(network)
    n.shows << self.show
    self
  end

  def build_show (show)
    s = Show.create(show)
    s.characters << self
    self
  end

end
