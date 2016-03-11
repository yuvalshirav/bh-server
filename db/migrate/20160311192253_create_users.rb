class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :gender, null: false
      t.timestamps null: false
    end
  end
end
