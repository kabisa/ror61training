class AddTitleToLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :links, :title, :string
  end
end
