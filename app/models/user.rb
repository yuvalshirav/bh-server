# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  gender     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_gender  (gender)
#

class User < ActiveRecord::Base

  enum gender: {
    male: 0,
    female: 1
  }

end
