class Character < ActiveRecord::Base
  belongs_to :actor, class_name: 'Actor', foreign_key: 'actor_id'
  belongs_to :show
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
