class AddDescriptionoToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :decsription, :text
  end
end
