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

FactoryGirl.define do
  factory :request do
    student
  end
end
