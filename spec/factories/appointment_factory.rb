# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  expert_id  :string(255)
#  student_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :appointment do
    expert
    student
  end
end
