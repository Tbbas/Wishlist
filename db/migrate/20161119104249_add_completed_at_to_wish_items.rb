class AddCompletedAtToWishItems < ActiveRecord::Migration[5.0]
  def change
    add_column :wish_items, :completed_at, :datetime
  end
end
