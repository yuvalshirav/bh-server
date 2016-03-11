class CreateResponseAnswers < ActiveRecord::Migration
  def change
    create_table :response_answers do |t|

      t.timestamps null: false
    end
  end
end
