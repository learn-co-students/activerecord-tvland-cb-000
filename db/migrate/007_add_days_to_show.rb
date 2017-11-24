class AddDaysToShow < ActiveRecord::Migration
  def change
    add_column :shows, :day, :string
  end
end
