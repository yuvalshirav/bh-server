# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  body          :string           not null
#  question_type :integer          not null
#  position      :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_questions_on_position  (position) UNIQUE
#

class Question < ActiveRecord::Base

  has_many :answers
  has_many :response_answers

  enum question_type: {
    single: 0,
    multiple: 1
  }

  def as_json(options = {})
    super(options.merge(only: [:id, :body, :question_type, :position]))
  end

end
