class AddLikesCounterToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :likes_count, :integer
  end
end
