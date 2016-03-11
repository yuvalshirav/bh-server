# == Schema Information
#
# Table name: responses
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_responses_on_user_id  (user_id)
#

class Response < ActiveRecord::Base

  belongs_to :user
  has_many :response_answers
  accepts_nested_attributes_for :response_answers
end
