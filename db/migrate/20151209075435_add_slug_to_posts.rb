class AddSlugToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :slug, :String
    add_index :posts, :slug, unique: true
  end
end
