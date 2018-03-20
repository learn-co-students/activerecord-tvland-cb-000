# prolly way to make the migrate file from filename right?
class AddShitToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end
end
