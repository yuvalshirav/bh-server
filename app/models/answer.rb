# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  body        :string           not null
#  position    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
# Indexes
#
#  index_answers_on_question_id               (question_id)
#  index_answers_on_question_id_and_position  (question_id,position) UNIQUE
#

class Answer < ActiveRecord::Base

  belongs_to :question
end
