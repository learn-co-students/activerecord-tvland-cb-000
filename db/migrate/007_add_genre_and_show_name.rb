class AddGenreAndShowName < ActiveRecord::Migration
  def change
    add_column :shows , :genre , :string
    add_column :shows , :show_name , :string
  end
end
