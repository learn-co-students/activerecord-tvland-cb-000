class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  # Character has a catchphrase
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
    #=> "#{urkel.name} always says: #{urkel.catchphrase}"
  end
end
