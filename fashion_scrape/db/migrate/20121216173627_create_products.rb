class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :url
      t.string :designer
      t.string :retail_price
      t.string :discount_price
      t.string :title
      t.text :description
      t.string :sizes
      t.string :colors
      t.string :image

      t.timestamps
    end
  end
end
