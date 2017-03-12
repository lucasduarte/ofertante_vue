class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :description
      t.string :url, null: false
      t.string :image
      t.string :comment
      t.integer :status, default: 0
      t.decimal :price, range: 8, precision: 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
