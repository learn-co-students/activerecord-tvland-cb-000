class Character < ActiveRecord::Base
  # dont see whats wrong with this
  # attr_accessor :catchphrase

  belongs_to :actor
  belongs_to :show

  # binding.pry
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name:)
    # i have no idea

    # the show its associated with. UGH
    single = Show.create(name:  name)
    self.show = single


  end

end
