class AddAssociations < ActiveRecord::Migration
  def change
    add_reference :answers, :question, foreign_key: true, index: true
    add_reference :responses, :user, foreign_key: true, index: true
    add_reference :response_answers, :response, foreign_key: true, index: true
    add_reference :response_answers, :question, foreign_key: true, index: true
    add_reference :response_answers, :answer, foreign_key: true, index: true

    add_index :questions, [:position], unique: true
    add_index :answers, [:question_id, :position], unique: true
    add_index :users, [:gender], unique: false
  end
end
