class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.integer :question_type, null: false
      t.integer :position, null: false
      t.timestamps null: false
    end
  end
end
