class AddGenreAndDataToShows < ActiveRecord::Migration
  def change
    change_table :shows do |t|
      t.integer :genre
      t.string :season
      t.string :day
    end
  end
end
