# == Schema Information
#
# Table name: response_answers
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  response_id :integer
#  question_id :integer
#  answer_id   :integer
#
# Indexes
#
#  index_response_answers_on_answer_id    (answer_id)
#  index_resanponse_answers_on_question_id  (question_id)
#  index_response_answers_on_response_id  (response_id)
#

class ResponseAnswer < ActiveRecord::Base

  belongs_to :response
  belongs_to :question
  belongs_to :answer
end
