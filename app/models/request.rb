# == Schema Information
#
# Table name: requests
#
#  id          :integer          not null, primary key
#  student_id  :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Request < ActiveRecord::Base

  belongs_to :student
  has_and_belongs_to_many :experts

end
