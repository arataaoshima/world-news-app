class AddNewColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :link, :text
    add_column :posts, :icon, :binary, limit: 5.megabyte
    add_column :posts, :icon_content_type, :string
  end
end
