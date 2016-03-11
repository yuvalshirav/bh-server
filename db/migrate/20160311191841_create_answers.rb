class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.integer :position, null: false
      t.timestamps null: false
    end
  end
end
