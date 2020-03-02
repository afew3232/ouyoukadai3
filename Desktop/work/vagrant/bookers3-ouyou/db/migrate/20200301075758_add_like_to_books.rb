class AddLikeToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :like, :integer
  end
end
