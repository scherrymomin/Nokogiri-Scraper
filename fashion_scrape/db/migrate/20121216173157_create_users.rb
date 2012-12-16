class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :size
      t.string :designer_list

      t.timestamps
    end
  end
end
